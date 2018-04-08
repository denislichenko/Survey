<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewAdminForm.aspx.cs" Inherits="Survey.CreateNewAdminForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<link href="/css/admPanel.css" rel="stylesheet" />
    <title></title>

    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</head>
<body>
    <div class="header-menu">
        <ul>
            <li><a href="AdminPanel.aspx">Назад</a></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <table class="w-100">
                <tr>
                    <td>Login</td>
                    <td>
                        <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">PIN</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tbPIN" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Level</td>
                    <td>
                        <asp:TextBox ID="tbLevel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="createAdminButton" runat="server" Text="Create New Admin" OnClick="createAdminButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="errorLabel" runat="server" Text="" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
