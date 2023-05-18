using Modding_Helper.Core;
using Modding_Helper.Interface;
using Modding_Helper.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Security.Principal;

namespace Modding_Helper.Services;
internal class ModManagerService : ObservableObject
{
    private ObservableCollection<Mod> mods = new ObservableCollection<Mod>();
    public ObservableCollection<Mod> Mods
    {
        get => mods;
        set
        {
            mods = value;
            OnPropertyChanged();
        }
    }

    public ModManagerService()
    {
        GetMods();
    }

    private void GetMods()
    {
        var rootPath = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Subnautica\\BepInEx\\plugins\\";
        string[] dirs = GetDirectories(rootPath, "FCS_*");

        foreach (string dir in dirs)
        {
            var directoryInfo = new DirectoryInfo(dir);
            var mod = new Mod();
            mod.Name = directoryInfo.Name;
            mod.Position = directoryInfo.FullName;
            GetDirectoryData(mod,dir);
            mod.ModSettings = ReadModSettings(mod);
            Mods.Add(mod);
        }
    }

    private void GetDirectoryData(Mod mod, string dir)
    {
        var directories = GetDirectories(dir);

        foreach (var d in directories)
        {

            var directory = new ModDirectory();
            var directoryInfo = new DirectoryInfo(d);
            
            directory.Path = directoryInfo.FullName;
            directory.Name = directoryInfo.Name;
            directory.Files = GetFiles(directoryInfo.FullName);
            mod.FilesDirectories.Add(directory);

            if(directoryInfo.GetDirectories().Any())
            {
                GetDirectoryData(mod, d);
            }
        }

    }

    private string[] GetDirectories(string path,string searchPattern = "")
    {
        string[] dirs = Directory.GetDirectories(path, searchPattern, SearchOption.TopDirectoryOnly);
        return dirs;
    }

    private string[] GetFiles(string dir)
    {
        DirectoryInfo di = new DirectoryInfo(dir);
        return di.GetFiles().Select(f => f.FullName).ToArray();
    }

    private Dictionary<string, FCSModItemSettings> ReadModSettings(Mod dir)
    {
        string path = string.Empty;
        foreach (var item in dir.FilesDirectories)
        {
            foreach (var files in item.Files)
            {
                if(files.Contains("ModSettings"))
                {
                    path = files;
                    break;
                }
            }
        }
        //var path = dir.FilesDirectories.FirstOrDefault(x => x.Files.Contains("ModSettings"));

        if (string.IsNullOrEmpty(path)) return null;

        var data = File.ReadAllText(path);

        if (data is null) return null;

        return JsonConvert.DeserializeObject<Dictionary<string,FCSModItemSettings>>(data);
        
    }
}
