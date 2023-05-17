using Modding_Helper.Core;
using Modding_Helper.Services;

namespace Modding_Helper.ViewModels;
internal class HomeViewModel : ViewModel
{
	private INavigationService _navigationService;

	public INavigationService NavigationService
    {
        get => _navigationService;
        set
        {
            _navigationService = value;
            OnPropertyChanged();
        }
    }

    public RelayCommand NavigateToSettingsCommand { get; set; }

    public HomeViewModel(INavigationService navigationService)
    {
        NavigationService = navigationService;
        NavigateToSettingsCommand = new RelayCommand(o => { NavigationService.NavigateTo<SettingsViewModel>(); }, o => true);
    }
}
