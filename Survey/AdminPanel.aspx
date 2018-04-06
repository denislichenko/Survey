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
        <div class="container">
            <div class="alert alert-primary" role="alert">
                <h6>Зарегистрированные пользователи:</h6>
            </div>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Font-Names="Arial" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="NameCompetition" HeaderText="NameCompetition" SortExpression="NameCompetition" />
                    <asp:BoundField DataField="WorkNominationText" HeaderText="WorkNominationText" SortExpression="WorkNominationText" />
                    <asp:BoundField DataField="WorkNominationValue" HeaderText="WorkNominationValue" SortExpression="WorkNominationValue" />
                    <asp:BoundField DataField="Discipline" HeaderText="Discipline" SortExpression="Discipline" />
                    <asp:BoundField DataField="Tested" HeaderText="Tested" SortExpression="Tested" />
                    <asp:BoundField DataField="testedLVL" HeaderText="testedLVL" SortExpression="testedLVL" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Statistic" HeaderText="Statistic" SortExpression="Statistic" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
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
        </div> <br />
        <div class="alert alert-danger container" role="alert">
          <h5>DANGER ZONE</h5>
        </div>
        <div class="danger-zone container">
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
    </form>
</body>
</html>
