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

            AdminContext context = new AdminContext();
            var admins = context.Admins;

            foreach(Admin admin in admins)
            {
                if(login.Value == admin.Login && key.Value == MD5.CreateMD5(admin.Password + "l0l_ah@h@a"))
                {
                    if (admin.Level > 1)
                        return;
                }
            }

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

                context.Admins.Add(admin);
                context.SaveChanges();

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