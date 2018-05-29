<%@ Page Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="ProductMaintenance.aspx.cs" Inherits="AS31.ProductMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Product maintenance</h1>
    <br />
    <asp:Button ID="btnAdd" runat="server" CausesValidation="False" OnClick="btnAdd_Click" Text="Add new product" Width="129px" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductCode" DataSourceID="sqlProducts" ValidateRequestMode="Enabled">
        <Columns>
            <asp:CommandField SelectText="Add" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
        </Columns>
            <%--<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />--%>
            </asp:GridView>
    <asp:SqlDataSource ID="sqlProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] ORDER BY [ProductCode]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" ValidateRequestMode="Enabled">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
