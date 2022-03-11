﻿using LeasingCarsWPF.Commands;
using LeasingCarsWPF.Models;
using LeasingCarsWPF.Services;
using System.Windows.Input;

namespace LeasingCarsWPF.ViewModels
{
    public class LoginVM : BaseVM
    {
        private string _username;
        private string _password;

        public LoginVM(NavigationService<Employee> adminNavigationService,
            NavigationService<Employee> mechaNavigationService,
            NavigationService<Employee> hrNavigationService)
        {
            _username = string.Empty;
            _password = string.Empty;

            AdminLoginCommand = new LoginCommand<Employee>(this, adminNavigationService);
            MechaLoginCommand = new LoginCommand<Employee>(this, mechaNavigationService);
            HrLoginCommand = new LoginCommand<Employee>(this, hrNavigationService);
        }

        public LoginVM()
        {
            _username = string.Empty;
            _password= string.Empty;
        }

        public string Username
        {
            get => _username;
            set => _username = value;
        }

        public string Password
        {
            get => _password;
            set => _password = value;
        }

        public DataTypes.Position AdminPosition => DataTypes.Position.ADMIN;
        public DataTypes.Position HrPosition => DataTypes.Position.HR;
        public DataTypes.Position MechaPosition => DataTypes.Position.MECHA;

        public ICommand AdminLoginCommand { get; }

        public ICommand MechaLoginCommand { get; }

        public ICommand HrLoginCommand { get; }
    }
}