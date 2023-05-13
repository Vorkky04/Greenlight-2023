using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GreenLight_2023.Windows
{
    /// <summary>
    /// Логика взаимодействия для RegisterUserWindow.xaml
    /// </summary>
    public partial class RegisterUserWindow : Window
    {
        public RegisterUserWindow()
        {
            InitializeComponent();
        }

        private void icon_Exit2_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Environment.Exit(0);
        }
    }
}
