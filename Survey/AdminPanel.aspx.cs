using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie login = Request.Cookies["login"];
            HttpCookie key = Request.Cookies["key"];

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
    }
}