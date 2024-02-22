using PassengerTransportationProject.Classes;
using PassengerTransportationProject.Entities;
using PassengerTransportationProject.Model;
using System;
using System.Collections.Generic;
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
using GemBox.Email;

namespace PassengerTransportationProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для InputEmail.xaml
    /// </summary>
    public partial class InputEmail : Page
    {
        Model.Task task;
        public string erroeSet;
        public string errorMassage;
        public InputEmail(string ErroeSet,string ErrorMassage)
        {
            InitializeComponent();
            erroeSet = ErroeSet;
            errorMassage = ErrorMassage;
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

        private void InputButton_Click(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.NewEmaol = InputType.Text;
            task = new Model.Task();
            if (Properties.Settings.Default.NewEmaol != "")
            {
                ComponentInfo.SetLicense("FREE-LIMITED-KEY");
                string Subject = "";
                string Body = "";
                string Date = "";
                string Priority = "";
                string s1 = Properties.Settings.Default.NewEmaol;
                try
                {
                    List<GemBox.Email.MailAddress> adress = new List<GemBox.Email.MailAddress>()
                {
                    new GemBox.Email.MailAddress($"{s1}")
                };
                    IList<MailAddressValidationResult> results = MailAddressValidator.Validate(adress);
                    string s2;
                    if (results[0].Status == MailAddressValidationStatus.Ok)
                    {
                        s2 = s1;
                    }
                    else
                    {
                        s2 = "";
                    }
                    string m1 = "timlidovich@mail.ru";
                    string m2 = "valor.padshiy@mail.ru";
                    string m2SubPassword = "haa3di42j3HXyw0PnGMg";
                    System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
                    SmtpClient mySmtpClient = new SmtpClient("smtp.mail.ru");
                    mySmtpClient.Port = 587;
                    mySmtpClient.UseDefaultCredentials = true;
                    mySmtpClient.EnableSsl = true;
                    System.Net.NetworkCredential basicAuthenticationInfo = new
                    System.Net.NetworkCredential(m2, m2SubPassword);
                    mySmtpClient.Credentials = basicAuthenticationInfo;

                    string Numbers = "1234567890";
                    string CodeTask = "";
                    Random random = new Random();
                    for (int i = 0; i <= 5; i++)
                    {
                        CodeTask += Numbers[random.Next(0, Numbers.Length)];
                    }

                    System.Net.Mail.MailAddress from = new System.Net.Mail.MailAddress(m2);
                    System.Net.Mail.MailAddress to;
                    to = new System.Net.Mail.MailAddress(m1);
                    System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage(from, to);
                    mailMessage.IsBodyHtml = true;
                    mailMessage.Body = $@"<br>
                <br>Здравствуйте {s2}, у меня возникла критическая ошибка в приложении и я хотел бы получить ответ с решением этой проблемы!
                <br>
                <br><b>Текст ошибки:</b> {erroeSet} 
                <br><b>Подробное описание:</b> {errorMassage}
                <br><b>Системные характеристики:</b>
                <br>Объём ОЗУ: {GetHardwareInfo("Win32_PhysicalMemory", "Capacity").First()}
                <br>Процессор: {GetHardwareInfo("Win32_Processor", "Name").First()}
                <br>Производитель процессора: {GetHardwareInfo("Win32_Processor", "Manufacturer").First()}
                <br>Видеокарта: {GetHardwareInfo("Win32_VideoController", "Name").First()}
                <br>Драйвер видеокарты: {GetHardwareInfo("Win32_VideoController", "DriverVersion").First()}
                <br>Диск: {GetHardwareInfo("Win32_DiskDrive", "Caption").First()}
                <br>Объём диска(в байтах) {GetHardwareInfo("Win32_DiskDrive", "Size").First()}";

                    System.Net.Mail.MailAddress replyTo = new System.Net.Mail.MailAddress(m2);
                    mailMessage.ReplyToList.Add(replyTo);
                    mailMessage.Subject = "Отчёт об ошибке №" + CodeTask;
                    mailMessage.Priority = MailPriority.High;
                    mailMessage.SubjectEncoding = Encoding.GetEncoding(1251);
                    mailMessage.BodyEncoding = Encoding.UTF8;
                    mySmtpClient.Send(mailMessage);

                    Subject = mailMessage.Subject;
                    Body = mailMessage.Body.Replace("<br>", "").Replace("<b>", "").Replace("</b>", "");
                    Date = mailMessage.Headers["Date"];


                    string[] randomPriority = new string[3];
                    randomPriority[0] = "Низкий";
                    randomPriority[1] = "Средний";
                    randomPriority[2] = "Высокий";

                    Random r = new Random();
                    Priority = randomPriority[r.Next(0, randomPriority.Length - 1)];

                    task.Subject = Subject;
                    task.Priority = Priority;
                    task.Text = Body;
                    task.Status = "Активная";
                    task.DateTask = Convert.ToDateTime(Date);
                    DB.entities.Task.Add(task);
                    DB.entities.SaveChanges();

                    MessageBox.Show("Сообщение об ошибке было отправлено в службу поддержки, ожидайте ответа.", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
                    if (MessageBox.Show("Вы можете поискать решение своей ошибки на нашем сайте. Посмотреть решения?", "", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        System.Diagnostics.Process.Start("http://127.0.0.1:5500/pages/usererrors.html");
                    }
                }
                catch
                {
                    MessageBox.Show("Почта введена не верно или не существует");
                }
               
            }
            NavigationService.GoBack();
        }
    }
}
