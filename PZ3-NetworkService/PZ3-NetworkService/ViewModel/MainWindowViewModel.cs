using PZ3_NetworkService.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace PZ3_NetworkService.ViewModel
{
    public class MainWindowViewModel : BindableBase
    {
        BindableBase currentViewModel;  
        public BindableBase CurrentViewModel    //trenutni view na glavnom prozoru
        {
            get
            {
                return currentViewModel;
            }
            set
            {
                SetProperty(ref currentViewModel, value);
            }
        }   
        //objekti viewmodela
        NetworkViewModel nvm = new NetworkViewModel();
        NetworkDataViewModel ndvm = new NetworkDataViewModel();
        DataChartViewModel dcvm = new DataChartViewModel();
        public MyICommand<String> NavCommand { get; private set; }

        public MainWindowViewModel()
        {
            CurrentViewModel = ndvm;
            NavCommand = new MyICommand<string>(OnNav);
        }

        private void OnNav(string destination)
        {
            switch (destination)
            {
                case "networkview":
                    CurrentViewModel = nvm;
                    break;
                case "networkdata":
                    CurrentViewModel = ndvm;
                    break;
                case "datachart":
                    CurrentViewModel = dcvm;
                    break;
            }
        }

    }  
}  
