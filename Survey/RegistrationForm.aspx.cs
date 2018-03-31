using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/* TODO:
 * ДОПИЛИТЬ ЛОГИКУ И ПЕРЕПИСАТЬ НА ENTITY FRAMEWORK, 
 * ЛЕНИВАЯ ЖОПА! */

namespace Survey
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (connection.State != System.Data.ConnectionState.Closed)
                connection.Close();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Users(" +
                    "FirstName, LastName, NameCompetition, WorkNominationText, WorkNominationValue," +
                    "Discipline, Tested, testedLVL, CompanyName, Position, City, Region, Phone, Email, Statistic)" +
                    "VALUES(@FirstName, @LastName, @NameCompetition, @WorkNominationText, @WorkNominationValue," +
                    "@Discipline, @Tested, @testedLVL, @CompanyName, @Position, @City, @Region, @Phone, @Email, @Statistic)",
                    connection);

                if (CheckBox1.Checked)
                {
                    cmd.Parameters.AddWithValue("FirstName", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("LastName", tbLastName.Text);
                    cmd.Parameters.AddWithValue("NameCompetition", tbNameCompetition.Text);
                    cmd.Parameters.AddWithValue("WorkNominationText", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("WorkNominationValue", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Discipline", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Tested", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("testedLVL", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("CompanyName", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Position", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("City", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Region", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Phone", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Email", tbFirstName.Text);
                    cmd.Parameters.AddWithValue("Statistic", tbFirstName.Text);

                    cmd.ExecuteNonQuery();
                }
            }
            catch { } // Добавить вывод информации о ошибке
        }
    }
}