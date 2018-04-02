using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text != null)
            {
                AdminContext db = new AdminContext();
                var admins = db.Admins;

                foreach(Admin adm in admins)
                {
                    if(TextBox1.Text == adm.Login && TextBox2.Text == adm.Password && TextBox3.Text == adm.Pin)
                    {
                        Response.Write("Done!");
                    }
                }
            }

        }
    }
}