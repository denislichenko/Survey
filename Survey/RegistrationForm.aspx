<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Survey.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<!-- <link rel="stylesheet" href="~/css/style.css" /> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>

<title></title>
</head>
<body>
    <ol class="breadcrumb">
      <li><a href="#">Админ-панель </a></li>
      <li class="active"> / Регистрация</li>
    </ol>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Фамилия</td>
                    <td>
                        <asp:TextBox ID="tbLastName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Имя и Отчество</td>
                    <td>
                        <asp:TextBox ID="tbFirstName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Название конкурсной работы</td>
                    <td>
                        <asp:TextBox ID="tbNameCompetition" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Номинация конкурсной работы</td>
                    <td>
                        <asp:DropDownList ID="WorkNomination" runat="server" Width="200px">
                            <asp:ListItem>Учебный проект</asp:ListItem>
                            <asp:ListItem>Воспитательный проект</asp:ListItem>
                            <asp:ListItem>Поза школьный проект</asp:ListItem>
                            <asp:ListItem>Online образовательный ресурс</asp:ListItem>
                            <asp:ListItem>Учебно-методическое</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Дисциплина</td>
                    <td>
                        <asp:TextBox ID="tbDiscipline" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Была ли апробирована Ваша анкета (Да, Нет)?</td>
                    <td>
                        <asp:TextBox ID="tbTested" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Если да, то на каком уровне?</td>
                    <td>
                        <asp:TextBox ID="tbTestLVL" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Полное название организации в которой Вы работаете</td>
                    <td>
                        <asp:TextBox ID="tbCompany" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ваша должность</td>
                    <td>
                        <asp:TextBox ID="tbPosition" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Город, населенный пункт</td>
                    <td>
                        <asp:TextBox ID="tbCity" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Область</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbRegion" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Мобильный телефон</td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Электронная почта</td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Как Вы о нас узнали</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Сайт МОН</asp:ListItem>
                            <asp:ListItem>Сайт Microsoft Ukraine</asp:ListItem>
                            <asp:ListItem>Сайт сети &quot;имя&quot;</asp:ListItem>
                            <asp:ListItem>Еще вариант</asp:ListItem>
                            <asp:ListItem>Еще вариант</asp:ListItem>
                            <asp:ListItem>Еще вариант</asp:ListItem>
                            <asp:ListItem>Еще вариант</asp:ListItem>
                        </asp:RadioButtonList>
                        Свой вариант:&nbsp;
                        <asp:TextBox ID="tbOption" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Я даю согласие на обработку моих личных данных и соглашаюсь с" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">политикой конфиденциальности</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" Text="Отправить" />
    </form>
</body>
</html>
