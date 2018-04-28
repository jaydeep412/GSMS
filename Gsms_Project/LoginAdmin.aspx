<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Gsms_Project.LoginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     USERNAME:
    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="222px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                             ControlToValidate="TextBox1" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
    <br />
    PASSWORD: <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="222px"  TextMode="Password" ></asp:TextBox>
    <br />
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                             ControlToValidate="TextBox2" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>

    <br />
    <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btn-primary" />
        


    
</asp:Content>
