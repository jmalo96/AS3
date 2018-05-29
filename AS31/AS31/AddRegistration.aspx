<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRegistration.aspx.cs" Inherits="AS31.AddRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 188px;
    }
        .auto-style3 {
            width: 188px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Customer:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCustName" runat="server" DataSourceID="sqlCustomer" DataTextField="Name" DataValueField="Name" Height="16px" Width="260px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Product:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProdName" runat="server" DataSourceID="sqlProducts" DataTextField="Name" DataValueField="Name" Height="16px" Width="260px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Reg Date:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtBoxDate" runat="server" Height="16px" Width="180px">MM/DD/YYYY</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="Register Product" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="sqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlReg" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT * FROM [Registrations]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID,ProductCode" DataSourceID="sqlReg">
                        <Columns>
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
                            <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" SortExpression="RegistrationDate" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
