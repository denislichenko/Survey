﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void Page_Unload(object sender, EventArgs e) { }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    if (CheckBox1.Checked)
                    {
                        UserContext db = new UserContext();

                        User user = new User()
                        {
                            FirstName = tbFirstName.Text,
                            LastName = tbLastName.Text,
                            NameCompetition = tbNameCompetition.Text,
                            WorkNominationText = WorkNomination.SelectedItem.Text,
                            WorkNominationValue = WorkNomination.SelectedItem.Value,
                            Discipline = tbDiscipline.Text,
                            Tested = tbTested.Text,
                            testedLVL = tbTestLVL.Text,
                            CompanyName = tbCompany.Text,
                            Position = tbPosition.Text,
                            City = tbCity.Text,
                            Region = tbRegion.Text,
                            Phone = tbPhone.Text,
                            Email = tbEmail.Text,
                            Statistic = RadioButtonList1.SelectedItem.Text
                        };

                        db.Users.Add(user);
                        db.SaveChanges();

                        StatusLabel.Text = "Заявка успешно отправлена!";
                    }
                    else
                    {
                        StatusLabel.Text = "Вы не дали согласие на обработку Ваших данных!";
                        StatusLabel.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = ex.Message;
                    StatusLabel.ForeColor = System.Drawing.Color.Red;
                }

                StatusLabel.Visible = true;
            }
        }
    }
}