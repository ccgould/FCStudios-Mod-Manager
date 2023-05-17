using System;
using System.Windows.Input;

namespace Modding_Helper.Core;
internal class RelayCommand : ICommand
{
    private readonly Predicate<object> _canExecute;
    private readonly Action<object> _execute;

    public event EventHandler? CanExecuteChanged
    {
        add => CommandManager.RequerySuggested += value;
        remove => CommandManager.RequerySuggested -= value;
    }

    public RelayCommand(Action<object> execute)
    {
        _canExecute = null;
        _execute = execute;
    }

    public RelayCommand(Action<object> execute, Predicate<object> canExecute)
    {
        _canExecute = canExecute;
        _execute = execute;
    }

    public bool CanExecute(object? parameter)
    {
        return _canExecute(parameter);
    }

    public void Execute(object? parameter)
    {
        _execute(parameter);
    }
}
