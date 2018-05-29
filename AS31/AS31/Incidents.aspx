<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Incidents.aspx.cs" Inherits="AS31.Incidents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 225px;
    }
        .auto-style3 {
            width: 225px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dropSearch" runat="server" DataSourceID="sqlCustomer" DataTextField="Name" DataValueField="Name">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Customer" />
                    <asp:Button ID="btnRe" runat="server" OnClick="btnRe_Click" Text="Add Incident" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Customer ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxID" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxAddress" runat="server" ReadOnly="True" Width="213px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="City, State, Zip:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxCity" runat="server" ReadOnly="True" Width="211px"></asp:TextBox>
                    <asp:TextBox ID="txtBoxState" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="txtBoxZip" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Phone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoxPhone" runat="server" ReadOnly="True" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtBoxEmail" runat="server" ReadOnly="True" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="sqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="Incidents">
                        <Columns>
                            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                            <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                            <asp:BoundField DataField="DateClosed" HeaderText="DateClosed" SortExpression="DateClosed" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
