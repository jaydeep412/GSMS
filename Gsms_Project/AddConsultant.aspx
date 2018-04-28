<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="AddConsultant.aspx.cs" Inherits="Gsms_Project.AddConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>" SelectCommand="SELECT [username], [name], [experience], [email], [address], [dateofbirth], [contact] FROM [Consultant] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:QueryStringParameter Name="username" QueryStringField="name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" SortExpression="dateofbirth" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnAdd" runat="server" Text="Add as a Consultant" OnClick="btnAdd_Click" />


</asp:Content>
