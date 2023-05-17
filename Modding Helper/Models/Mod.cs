using Modding_Helper.Core;
using System.Drawing;

namespace Modding_Helper.Models;

internal class Mod : ObservableObject
{
    public string Character { get; set; }
    public Brush BgColor { get; set; }
    public string Number { get; set; }
    public string Name { get; set; }
    public string Position { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
}
