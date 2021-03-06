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
    public partial class AdminLogin : System.Web.UI.Page
    {
        string clientIp = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            clientIp = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ??
                   Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Если хотя-бы одно поле не заполнено - выводим сообщение о ошибке
            if (tbLogin.Text != null && tbPassword.Text != null && tbPIN.Text != null)
            {
                AdminContext db = new AdminContext();
                var admins = db.Admins;

                foreach (Admin adm in admins)
                {
                    // Проверяем правильность введенных данных
                    if (tbLogin.Text == adm.Login && tbPassword.Text == adm.Password && tbPIN.Text == adm.Pin)
                    {
                        HttpCookie login = new HttpCookie("login", tbLogin.Text);
                        HttpCookie key = new HttpCookie("key", MD5.CreateMD5(tbPassword.Text + "l0l_ah@h@a"));

                        // Срок службы куки файла - 1 час
                        login.Expires.AddHours(1);
                        key.Expires.AddHours(1);

                        // Создаем куки файл на стороне клиента
                        Response.Cookies.Add(login);
                        Response.Cookies.Add(key);

                        // В случае успешной авторизации редиректим пользователя на админ-панель
                        Response.Redirect("AdminPanel.aspx");
                    }
                    else
                    {
                        errorLabel.Visible = true;
                    }
                }
            }
        }
    }
}