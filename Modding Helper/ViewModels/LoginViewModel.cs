
using Modding_Helper.Core;
using Modding_Helper.Models;
using Modding_Helper.Repositories;
using System;
using System.Net;
using System.Security;
using System.Security.Principal;
using System.Threading;
using System.Windows.Input;

namespace Modding_Helper.ViewModels;

internal class LoginViewModel : ViewModel
{
    //Fields
    private string _username;
    private SecureString _password;
    private string _errorMessage;
    private bool _isViewVisible = true;

    private IUserRepository _userRepository;

    //Properties
    public string Username 
    {
        get => _username;
        set
        {
            _username = value;
            OnPropertyChanged();
        }
    }
    public SecureString Password 
    { 
        get => _password; 
        set
        {
            _password = value;
            OnPropertyChanged();
        } 
    }
    public string ErrorMessage
    {
        get => _errorMessage;
        set
        {
            _errorMessage = value;
            OnPropertyChanged();
        }
    }
    public bool IsViewVisible 
    { 
        get => _isViewVisible; 
        set 
        {
            _isViewVisible = value;
            OnPropertyChanged();
        } 
    }

    // -> Commands
    public ICommand LoginCommand { get; }
    public ICommand RecoverPasswordCommand { get; }
    public ICommand ShowPasswordCommand { get; }
    public ICommand RemeberPasswordCommand { get; }

    //Constructor
    public LoginViewModel()
    {
        _userRepository = new UserRepository();
        LoginCommand = new RelayCommand(ExecuteLoginCommand,CanExecuteLoginCommand);
        RecoverPasswordCommand = new RelayCommand(p=>ExecuteRecoverPassCommand("",""));
    }
       
    private bool CanExecuteLoginCommand(object obj)
    {
        bool validData;

        if (string.IsNullOrEmpty(Username) || Username.Length < 3 || Password  == null || Password.Length < 3) 
        {
            validData = false;
        }
        else
        {
            validData=true;
        }

        return validData;
    }

    private void ExecuteLoginCommand(object obj)
    {
        var isValidUser = _userRepository.Authenticator(new NetworkCredential(Username, Password));
        if(isValidUser)
        {
            Thread.CurrentPrincipal = new GenericPrincipal(
                new GenericIdentity(Username), null);
            IsViewVisible = false;
        }
        else
        {
            ErrorMessage = "* Invalid username or password";
        }
    }

    private void ExecuteRecoverPassCommand(string username, string email)
    {
        throw new NotImplementedException();
    }
}
