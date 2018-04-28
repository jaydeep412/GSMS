<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Gsms_Project.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Are you a ?"></asp:Label>

    <br />
    <asp:DropDownList ID="userDropDownList" runat="server" OnSelectedIndexChanged="userDropDownList_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Consultant</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    <br />

   
</asp:Content>
