using FontAwesome.Sharp;
using Modding_Helper.Core;
using Modding_Helper.Models;
using Modding_Helper.Repositories;
using Modding_Helper.Services;
using System;
using System.Threading;
using System.Windows;

namespace Modding_Helper.ViewModels;

internal class MainViewModel : ViewModel
{
    private INavigationService _navigationService;
    private UserAccountModel _currentUserAccount;
    private IUserRepository _userRepository;
    private string _caption;
    private IconChar _icon;
    public INavigationService NavigationService
    {
        get => _navigationService;
        set
        {
            _navigationService = value;
            OnPropertyChanged();
        }
    }

    public RelayCommand NavigateToHomeCommand { get; set; }
    public RelayCommand NavigateToSettingsCommand { get; set; }
    public RelayCommand NavigateToModsCommand { get; set; }
    public UserAccountModel CurrentUserAccount
    {
        get => _currentUserAccount;
        set
        {
            _currentUserAccount = value;
            OnPropertyChanged();
        }
    }

    public string Caption
    {
        get { return _caption; }
        set
        {
            _caption = value;
            OnPropertyChanged();
        }
    }
    public IconChar Icon
    {
        get { return _icon; }
        set
        {
            _icon = value;
            OnPropertyChanged();
        }
    }

    public MainViewModel(INavigationService navigationService)
    {
        _userRepository = new UserRepository();
        CurrentUserAccount = new UserAccountModel();
        LoadCurrentUserData();
        NavigationService = navigationService;
        NavigateToHomeCommand = new RelayCommand(NavigateToHome, o => true);
        NavigateToSettingsCommand = new RelayCommand(NavigateToSettings, o => true);
        NavigateToModsCommand = new RelayCommand(NavigateToMods, o => true);

        //Default View
        NavigateToHome(null);
    }

    private void NavigateToMods(object obj)
    {
        NavigationService.NavigateTo<ModsViewModel>();
        Caption = "Mods";
        Icon = IconChar.Gamepad;
    }

    private void NavigateToSettings(object obj)
    {
        NavigationService.NavigateTo<SettingsViewModel>();
        Caption = "Settings";
        Icon = IconChar.Toolbox;
    }

    private void NavigateToHome(object obj)
    {
        NavigationService.NavigateTo<HomeViewModel>();
        Caption = "DashBoard";
        Icon = IconChar.Home;
    }

    private void LoadCurrentUserData()
    {
        if (Thread.CurrentPrincipal?.Identity is null) return;
        var user = _userRepository.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
        if (user is not null)
        {
            CurrentUserAccount.Username = user.Username;
            CurrentUserAccount.DisplayName = $"{user.Name} {user.LastName}";
            CurrentUserAccount.ProfilePicture = null;
        }
        else
        {
            CurrentUserAccount.DisplayName = "Invalid user, not logged in";
            //Hide child views
        }
    }
}
