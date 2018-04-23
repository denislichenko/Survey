<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Survey.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link href="/Content/admPanel.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 30px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 158px;
        }
        .auto-style4 {
            height: 26px;
            width: 158px;
        }
    </style>
</head>
<body>
    <div class="header-menu">
        <ul>
            <li><a href="RegistrationForm.aspx">Назад</a></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div class="col-lg-10 offset-1">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Логин:</td>
                    <td>
                        <asp:TextBox ID="tbLogin" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Пароль:</td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">ПИН-код</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbPIN" runat="server" MaxLength="4" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="Авторизоваться" Width="205px" />
                    &nbsp;<asp:Label ID="errorLabel" runat="server" ForeColor="Red" Text="Error" Visible="false" EnableViewState="false"></asp:Label> </td>
                </tr>
            </table>

        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
