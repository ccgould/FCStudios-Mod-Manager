using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Modding_Helper.Core;
internal class ObservableObject : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;

    protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(sender:this, new PropertyChangedEventArgs(propertyName));
    }
}
