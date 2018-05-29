<%@ Page Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AS31.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
        <div>
            <h1>List of Current Customers</h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="sqlCustomers">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (@Name, @Address, @City, @State, @ZipCode, @Phone, @Email)" SelectCommand="SELECT * FROM [Customers] ORDER BY [CustomerID]" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [Phone] = @Phone, [Email] = @Email WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    <div>
    
    </div>
</body>
</html>
</asp:Content>