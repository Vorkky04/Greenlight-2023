using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GreenLight_2023.WindowUserControl
{
    /// <summary>
    /// Логика взаимодействия для UCWindowInfoVrachi.xaml
    /// </summary>
    public partial class UCWindowInfoVrachi : UserControl
    {
        private NpgsqlConnection Connection { get; set; }

        private BindingList<Records> RecordsBindingList { get; set; }


        private void Open(string connectionString)
        {
            Connection = new NpgsqlConnection(connectionString);
            Connection.Open();
        }
        private class Records
        {
            public Records(string Nomer, string FirstName, string MiddleName, string LastName, string Login, string Password)
            {
                _Nomer = Nomer;
                _FirstName = FirstName;
                _MiddleName = MiddleName;
                _LastName = LastName;
                _Login = Login;
                _Password = Password;
            }
            public string _Nomer { get; set; }
            public string _FirstName { get; set; }
            public string _MiddleName { get; set; }
            public string _LastName { get; set; }
            public string _Login { get; set; }
            public string _Password { get; set; }

        }
        private void LoadRecords()
        {
            RecordsBindingList.Clear();

            string query = "SELECT Номер_Сотрудника,Имя,Фамилия,Отчество,Логин,Пароль FROM Персонал";

            NpgsqlCommand nCommand = new NpgsqlCommand(query, Connection);

            NpgsqlDataReader reader = nCommand.ExecuteReader();

            while (reader.Read())
            {
                RecordsBindingList.Add(new Records(
                    reader["Номер_Сотрудника"].ToString(),
                    reader["Имя"].ToString(),
                    reader["Фамилия"].ToString(),
                    reader["Отчество"].ToString(),
                    reader["Логин"].ToString(),
                    reader["Пароль"].ToString()

                    ));
            }

            reader.Close();
        }

        public UCWindowInfoVrachi()
        {
            InitializeComponent();

            RecordsBindingList = new BindingList<Records>();
            Grid.ItemsSource = RecordsBindingList;

            Open($"Server=localhost;User Id=postgres;Password=228;Port=5432;Database=GreenLight_db;");

            LoadRecords();
        }

        private void icon_Exit_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Environment.Exit(0);
        }

        private void border_Add_MouseDown(object sender, MouseButtonEventArgs e)
        {
            string query = $"Insert into ";

            NpgsqlCommand nCommand = new NpgsqlCommand(query, Connection);
            nCommand.ExecuteNonQuery();


            LoadRecords();
        }
    }
}
