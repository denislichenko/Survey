using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey
{
    public partial class CreateNewAdminForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie login = Request.Cookies["login"];
            HttpCookie key = Request.Cookies["key"];

            // Проверяем наличие куки
            if (login != null)
            {
                AdminContext context = new AdminContext();
                var admins = context.Admins;

                // Перебираем значения в таблице и сравниваем с введенными данными
                foreach (Admin admin in admins)
                {
                    if (login.Value == admin.Login && key.Value == MD5.CreateMD5(admin.Password + "l0l_ah@h@a"))
                    {
                        // Если уровень администратора - 2 и больше, то пускаем его на страницу
                        if (admin.Level > 1)
                            return;
                    }
                }
            }

            // Редиректим на форму админ-панели, если что-то не совпало 
            Response.Redirect("AdminPanel.aspx");
        }

        protected void createAdminButton_Click(object sender, EventArgs e)
        {
            try
            {
                AdminContext context = new AdminContext();
                Admin admin = new Admin()
                {
                    Login = tbLogin.Text,
                    Password = tbPassword.Text,
                    Pin = tbPIN.Text,
                    Level = Convert.ToInt32(tbLevel.Text)
                };

                // Добавляем в таблицу строку со значениями полей, которые мы присвоили выше и сохраняем изменения
                context.Admins.Add(admin);
                context.SaveChanges();

                // Если все прошло успешно - выводим сообщение
                errorLabel.Text = "Во время добавления нового администратора ошибок не возникло!";
                errorLabel.Visible = true;
            }
            catch (Exception ex)
            {
                errorLabel.Text = "Message: " + ex.Message 
                                + "\nSource: " + ex.Source;
                errorLabel.ForeColor = System.Drawing.Color.Red;
                errorLabel.Visible = true;
            }
        }
    }
}