<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="ListOfUsers.aspx.cs" Inherits="Gsms_Project.ListOfUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>" SelectCommand="SELECT * FROM [UserApp]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"
         CssClass="table"
        AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" SortExpression="dateofbirth" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        </Columns>
    </asp:GridView>
    


</asp:Content>
