using Microsoft.Extensions.DependencyInjection;
using Modding_Helper.Core;
using Modding_Helper.Services;
using Modding_Helper.ViewModels;
using Modding_Helper.Views;
using System;
using System.Windows;

namespace Modding_Helper;
/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    private readonly ServiceProvider _serviceProvider;

    public App()
    {
        IServiceCollection services = new ServiceCollection();

        services.AddSingleton<LoginView>(provider => new LoginView
        {
            DataContext = provider.GetRequiredService<LoginViewModel>()
        });

        services.AddSingleton<MainWindow>(provider => new MainWindow
        {
            DataContext = provider.GetRequiredService<MainViewModel>()
        });

        services.AddSingleton<ModsViewModel>();
        services.AddSingleton<LoginViewModel>();
        services.AddSingleton<MainViewModel>();
        services.AddSingleton<SettingsViewModel>();
        services.AddSingleton<HomeViewModel>();
        services.AddSingleton<Func<Type, ViewModel>>(serviceProvider => viewModelType => (ViewModel)serviceProvider.GetRequiredService(viewModelType));
        services.AddSingleton<INavigationService, NavigationService>();
        _serviceProvider = services.BuildServiceProvider();
    }

    protected override void OnStartup(StartupEventArgs e)
    {
        var loginView = _serviceProvider.GetService<LoginView>();
        loginView.Show();
        loginView.IsVisibleChanged += (s, ex) =>
        {
            if(loginView.IsVisible == false && loginView.IsLoaded)
            {
                var mainView = _serviceProvider.GetService<MainWindow>();
                mainView.Show();
                loginView.Close();
            }
        };

        base.OnStartup(e);
    }
}
