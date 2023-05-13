using GreenLight_2023.Windows.MedRab;
using GreenLight_2023.Windows.Pacient;
using Npgsql;
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
    /// Логика взаимодействия для SignInAndUpWindow.xaml
    /// </summary>
    public partial class SignInAndUpWindow : Window
    {
        public SignInAndUpWindow()
        {
            InitializeComponent();
        }
        private NpgsqlConnection Connection { get; set; }

        private void icon_Exit_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Environment.Exit(0);
        }

        private void border_SignIn_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (textbox_Login.Text == "" && textbox_Password.Password.ToString() == "")
            {
                MessageBox.Show("Пустое поле", "Диалоговое окно");
            }
            else
            {
                Connection = new NpgsqlConnection("Server=localhost;User Id=postgres;Password=228;Port=5432;Database=GreenLight_db;");
                Connection.Open();
                string query = $"select Номер_Сотрудника from Персонал where Пароль = '{textbox_Password.Password.ToString()}' and Логин = '{textbox_Login.Text}'";
                NpgsqlCommand nCommand = new NpgsqlCommand(query, Connection);

                object Result = nCommand.ExecuteScalar();

                if (Result != null)
                {
                    MenuMedRabWindow menuMedRabWindow = new MenuMedRabWindow();
                    menuMedRabWindow.Show();
                    Close();
                }
                else
                {
                    query = $"select Номер_Пациента from Пациент where Пароль = '{textbox_Password.Password.ToString()}' and Логин = '{textbox_Login.Text}'";
                    nCommand = new NpgsqlCommand(query, Connection);

                    Result = nCommand.ExecuteScalar();
                    if (Result != null)
                    {
                        MenuPacientWindow menuPacientWindow = new MenuPacientWindow();
                        menuPacientWindow.Show();
                        Close();
                    }
                    else if (textbox_Login.Text == "666" && textbox_Password.Password == "666")
                    {
                        MenuAdminWindow menuAdminWindow = new MenuAdminWindow();
                        menuAdminWindow.Show();
                        Close();
                    }
                    else
                    {
                        MessageBox.Show("Неправильный логин или пароль", "Диалоговое окно");
                    }
                }
            }
        }

            private void label_ShowRegister_MouseDown(object sender, MouseButtonEventArgs e)
            {
                RegisterUserWindow registerUserWindow = new RegisterUserWindow();
                registerUserWindow.Show();
                Close();
            }
        }
    }
