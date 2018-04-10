using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Z.EntityFramework.Plus;

namespace Survey
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Получаем куки
            HttpCookie login = Request.Cookies["login"];
            HttpCookie key = Request.Cookies["key"];

            // Проверка на наличие куки-файла
            if (login != null)
            {
                AdminContext db = new AdminContext();
                var admins = db.Admins;

                foreach (Admin adm in admins)
                {
                    if (login.Value == adm.Login && key.Value == MD5.CreateMD5(adm.Password + "l0l_ah@h@a"))
                    {
                        return;
                    }
                }
            }
            // Если данные не совпали - редиректим на страницу логина
            Response.Redirect("AdminLogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int deleteInt = Convert.ToInt32(TextBox1.Text); // ID, который нужно будет удалить
                UserContext context = new UserContext();

                // EF Plus
                context.Users.Where(u => u.Id == deleteInt).Delete(); 
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}