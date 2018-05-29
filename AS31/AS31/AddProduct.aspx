<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="AS31.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblProductCode" runat="server" Text="Product code:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtBxPC" runat="server" CausesValidation="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegExVldPC" runat="server" ControlToValidate="txtBxPC" Display="Dynamic" ErrorMessage="Product code must be at most 10 characters long and contain no symbols!" ValidationExpression="^[A-z0-9][^=&amp;_+}{)(&lt;&gt;|!@#$%&amp;*;:'&quot;,./?~-]{0,10}$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqVldPC" runat="server" ControlToValidate="txtBxPC" Display="Dynamic" ErrorMessage="Required feild!" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CstmVldPC" runat="server" ControlToValidate="txtBxPC" Display="Dynamic" ErrorMessage="Product code already exists, you can not have prodcuts with identical product codes!"></asp:CustomValidator>
        <br />
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtBxName" runat="server" CausesValidation="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegExVldName" runat="server" ControlToValidate="txtBxName" Display="Dynamic" ErrorMessage="Product code must be at most 50 characters long!" ValidationExpression="^(.{1,50})$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqVldPCName" runat="server" ControlToValidate="txtBxName" Display="Dynamic" ErrorMessage="Required feild!" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblVersion" runat="server" Text="Version:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtBxVersion" runat="server" CausesValidation="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegExVldVersion" runat="server" ControlToValidate="txtBxVersion" Display="Dynamic" ErrorMessage="Product versions can only have 18 numbers and 1 decimal place!" ValidationExpression="^\d{1,18}(\.\d)?$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqVldPCVersion" runat="server" ControlToValidate="txtBxVersion" Display="Dynamic" ErrorMessage="Required feild!" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblReleaseDate" runat="server" Text="Release date:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtBxDate" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button5_Click" Text="Submit" />
        <br />
        <asp:CustomValidator ID="CstmVldGE" runat="server" Display="Dynamic" ErrorMessage="An unknown error occured!"></asp:CustomValidator>
        <br />
        <asp:Button ID="btnReturn" runat="server" CausesValidation="False" OnClick="Button4_Click" Text="Return to Products" Width="125px" />
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
    <div>
    
    </div>
    </form>
</body>
</html>
