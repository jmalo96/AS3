<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="AS31.AddIncident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 246px;
        }
        .auto-style4 {
            height: 23px;
            width: 246px;
        }
        .auto-style2 {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCustID" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID">
                    </asp:DropDownList>
                    <asp:Button ID="btnCustID" runat="server" OnClick="btnCustID_Click" Text="Get Customer" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxName" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Date Opened:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Product:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProduct" runat="server" DataSourceID="sqlProduct" DataTextField="Name" DataValueField="Name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Title:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxTitle" runat="server" Width="344px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxDesc" runat="server" Height="123px" TextMode="MultiLine" Width="343px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                    <asp:SqlDataSource ID="sqlProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [Name], [ProductCode] FROM [Products]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customers]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
