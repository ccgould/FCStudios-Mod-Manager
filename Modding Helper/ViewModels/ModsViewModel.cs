using Modding_Helper.Core;
using Modding_Helper.Services;

namespace Modding_Helper.ViewModels;

internal class ModsViewModel : ViewModel
{
    private ModManagerService modManagerService;

    public ModManagerService ModManagerService
    {
        get => modManagerService; 
        set
        {
            modManagerService = value;
            OnPropertyChanged();
        }
    }

    public ModsViewModel(ModManagerService service)
    {
        ModManagerService = service;
        //var converter = new BrushConverter();
        //Mods.Add(new Mod { Number = "1", Character = "J", Name = "John Doe", Position = "Coach", Email = "john.doe@gmail.com", Phone = "415-954-1475" });
        //Mods.Add(new Mod { Number = "2", Character = "R", Name = "Reza Alavi", Position = "Administrator", Email = "reza110@hotmail.com", Phone = "254-451-7893" });
        //Mods.Add(new Mod { Number = "3", Character = "D", Name = "Dennis Castillo", Position = "Coach", Email = "deny.cast@gmail.com", Phone = "125-520-0141" });
        //Mods.Add(new Mod { Number = "4", Character = "G", Name = "Gabriel Cox", Position = "Coach", Email = "coxcox@gmail.com", Phone = "808-635-1221" });
        //Mods.Add(new Mod { Number = "5", Character = "L", Name = "Lena Jones", Position = "Manager", Email = "lena.offi@hotmail.com", Phone = "320-658-9174" });
        //Mods.Add(new Mod { Number = "6", Character = "B", Name = "Benjamin Caliword", Position = "Administrator", Email = "beni12@hotmail.com", Phone = "114-203-6258" });
        //Mods.Add(new Mod { Number = "7", Character = "S", Name = "Sophia Muris", Position = "Coach", Email = "sophi.muri@gmail.com", Phone = "852-233-6854" });
        //Mods.Add(new Mod { Number = "8", Character = "A", Name = "Ali Pormand", Position = "Manager", Email = "alipor@yahoo.com", Phone = "968-378-4849" });
        //Mods.Add(new Mod { Number = "9", Character = "F", Name = "Frank Underwood", Position = "Manager", Email = "frank@yahoo.com", Phone = "301-584-6966" });
        //Mods.Add(new Mod { Number = "10", Character = "S", Name = "Saeed Dasman", Position = "Coach", Email = "saeed.dasi@hotmail.com", Phone = "817-320-5052" });
    }
}
