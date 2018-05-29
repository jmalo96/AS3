<%@ Page Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="TechnicianMaintenance.aspx.cs" Inherits="AS31.TechnicianMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    
        <h1>Technician Maintenance</h1>

        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TechID" DataSourceID="TechSupport">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="TechID" HeaderText="TechID" InsertVisible="False" ReadOnly="True" SortExpression="TechID" />
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field cannot be empty."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be a valid name." ValidationExpression="[\p{L} ]+$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email required."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Must be valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone required."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number must be valid 10-digit US number." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="TechSupport" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @TechID" InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" SelectCommand="SELECT [TechID], [Name], [Email], [Phone] FROM [Technicians]" UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [TechID] = @TechID">
                <DeleteParameters>
                    <asp:Parameter Name="TechID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="TechID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    
    </div>
</asp:Content>