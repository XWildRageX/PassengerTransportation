using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Management;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using PassengerTransportationProject.Classes;
using PassengerTransportationProject.Entities;
using PassengerTransportationProject.Model;
using PassengerTransportationProject.Pages;

namespace PassengerTransportationProject
{
    public partial class MainWindow : Window
    {
        
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string Login = Properties.Settings.Default.LoginUser;
            string Password = Properties.Settings.Default.PasswordUser;
            Passenger PassengerAuthtorization = DB.entities.Passenger.FirstOrDefault(c => c.Login == Login && c.Password == Password);
            if (PassengerAuthtorization != null)
            {
                 CurrentPassenger.passenger = PassengerAuthtorization;
                 Grid.Background = Brushes.White;
                 GridBar.Visibility = Visibility.Visible;
                 MainFrame.Navigate(new RoutesPage());
            }
            else
            {
                Grid.Background = Brushes.WhiteSmoke;
                GridBar.Visibility = Visibility.Hidden;
                MainFrame.Navigate(new AuthtorizationPage());
            }
        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.LoginUser = "";
            Properties.Settings.Default.PasswordUser = "";
            Properties.Settings.Default.Save();
            CurrentPassenger.passenger = null;
            DB.entities.SaveChanges();
            Grid.Background = Brushes.WhiteSmoke;
            GridBar.Visibility= Visibility.Hidden;
            MainFrame.Navigate(new AuthtorizationPage());
        }

        private void MyTicketsButton_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MainFrame.Navigate(new MyTicketsPage());
        }

        private void MainPageButton_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new RoutesPage());
        }

        private void CollapseButton_Click(object sender, RoutedEventArgs e)
        {
            MainWin.WindowState = WindowState.Minimized;
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void AuthtorizationButton_PreviewMouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            ContextMenuUser.Visibility = Visibility.Visible;
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void MyProfileButton_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MainFrame.Navigate(new MyProfilePage(CurrentPassenger.passenger));
        }
        static List<string> GetHardwareInfo(string WIN32_Class, string ClassItemField)
        {
            List<string> result = new List<string>();
            ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM " + WIN32_Class);
            switch (ClassItemField)
            {
                case "Capacity":
                    int Capacity = 0;
                    foreach (ManagementObject m in searcher.Get()) Capacity += Convert.ToInt32(Math.Round(Convert.ToDouble(m[ClassItemField]) / 1024 / 1024));
                    result.Add(Capacity.ToString() + " Мб");
                    break;
                default:
                    foreach (ManagementObject obj in searcher.Get()) result.Add(obj[ClassItemField].ToString().Trim());
                    break;
            }
            return result;
        }

        private void ErrorButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Directory.Delete("123");
            }
            catch (Exception err)
            {
                
                string ErroeSet = err.ToString();
                string ErrorMassage = err.Message;
                var result = MessageBox.Show("Возникла критическая ошибка. Отправить отчёт об ошибке на почту разработчика ?", "Критическая ошибка", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                { MainFrame.Navigate(new InputEmail(ErroeSet, ErrorMassage)); }
            }
            
        }
    }
}
