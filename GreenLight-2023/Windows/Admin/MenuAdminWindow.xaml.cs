using GreenLight_2023.WindowUserControl;
using System;
using System.Windows;
using System.Windows.Input;

namespace GreenLight_2023.Windows
{
    /// <summary>
    /// Логика взаимодействия для MenuAdminWindow.xaml
    /// </summary>
    public partial class MenuAdminWindow : Window
    {
        public MenuAdminWindow()
        {
            InitializeComponent();
        }

        private void icon_Exit3_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Environment.Exit(0);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new UCWindowInfoVrachi();

        }
    }
}
