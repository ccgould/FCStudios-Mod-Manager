using Modding_Helper.Core;
using System.Collections.ObjectModel;
using System.Drawing;

namespace Modding_Helper.Models;

internal class Mod : ObservableObject
{
    public string Name { get; set; }
    public string Position { get; set; }

   public ObservableCollection<ModDirectory> FilesDirectories { get; set; } = new ObservableCollection<ModDirectory>();
}
