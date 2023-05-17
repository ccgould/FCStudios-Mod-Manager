using Modding_Helper.Core;
using Modding_Helper.Services;

namespace Modding_Helper.ViewModels;
internal class SettingsViewModel  : ViewModel
{
	private INavigationService _navigationService;

	public INavigationService NavigationService
	{
		get { return _navigationService; }
		set { _navigationService = value; }
	}

    public RelayCommand NavigateToHomeCommand { get; set; }

    public SettingsViewModel(INavigationService navigationService)
    {
        NavigationService = navigationService;
		NavigateToHomeCommand = new RelayCommand(o => { NavigationService.NavigateTo<HomeViewModel>(); }, o => true);
    }
}
