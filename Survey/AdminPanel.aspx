<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Survey.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link href="/css/admPanel.css" rel="stylesheet" />
</head>
<body>
    <div class="header-menu">
        <ul>
            <li><a href="RegistrationForm.aspx">Форма регистрации</a></li>
            <li><a href="CreateNewAdmin">Создать нового администратора</a></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div class="col-lg-10 offset-1" aria-checked="false">
            <div class="alert alert-primary" role="alert">
                <h6>Зарегистрированные пользователи:</h6>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" AutoGenerateEditButton="True" BorderColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" SortExpression="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="Имя" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Фамилия" SortExpression="LastName" />
                    <asp:BoundField DataField="NameCompetition" HeaderText="К. Работа" SortExpression="NameCompetition" />
                    <asp:BoundField DataField="WorkNominationText" HeaderText="Номинация" SortExpression="WorkNominationText" />
                    <asp:BoundField DataField="Discipline" HeaderText="Дисциплина" SortExpression="Discipline" />
                    <asp:BoundField DataField="Tested" HeaderText="Проверено" SortExpression="Tested" />
                    <asp:BoundField DataField="testedLVL" HeaderText="Уровень" SortExpression="testedLVL" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Компания" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Position" HeaderText="Должность" SortExpression="Position" />
                    <asp:BoundField DataField="City" HeaderText="Город" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Штат" SortExpression="Region" />
                    <asp:BoundField DataField="Phone" HeaderText="Телефон" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Statistic" HeaderText="Узнал" SortExpression="Statistic" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [NameCompetition], [WorkNominationText], [WorkNominationValue], [Discipline], [Tested], [testedLVL], [CompanyName], [Position], [City], [Region], [Phone], [Email], [Statistic]) VALUES (@FirstName, @LastName, @NameCompetition, @WorkNominationText, @WorkNominationValue, @Discipline, @Tested, @testedLVL, @CompanyName, @Position, @City, @Region, @Phone, @Email, @Statistic)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [NameCompetition] = @NameCompetition, [WorkNominationText] = @WorkNominationText, [WorkNominationValue] = @WorkNominationValue, [Discipline] = @Discipline, [Tested] = @Tested, [testedLVL] = @testedLVL, [CompanyName] = @CompanyName, [Position] = @Position, [City] = @City, [Region] = @Region, [Phone] = @Phone, [Email] = @Email, [Statistic] = @Statistic WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="NameCompetition" Type="String" />
                    <asp:Parameter Name="WorkNominationText" Type="String" />
                    <asp:Parameter Name="WorkNominationValue" Type="String" />
                    <asp:Parameter Name="Discipline" Type="String" />
                    <asp:Parameter Name="Tested" Type="String" />
                    <asp:Parameter Name="testedLVL" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Statistic" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="NameCompetition" Type="String" />
                    <asp:Parameter Name="WorkNominationText" Type="String" />
                    <asp:Parameter Name="WorkNominationValue" Type="String" />
                    <asp:Parameter Name="Discipline" Type="String" />
                    <asp:Parameter Name="Tested" Type="String" />
                    <asp:Parameter Name="testedLVL" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Statistic" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
             <br />
            <div class="alert alert-danger" role="alert">
                <h6>DANGER ZONE</h6>
            </div>
            <div class="danger-zone">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2"><p>Удаление из базы данных | ID:</p></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="206px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Text="DELETE" Width="211px" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
