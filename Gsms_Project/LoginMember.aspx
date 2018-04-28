<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="LoginMember.aspx.cs" Inherits="Gsms_Project.LoginMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

    USERNAME:
    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="222px"></asp:TextBox>
    <br /> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                             ControlToValidate="TextBox1" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
    <br />
    PASSWORD: <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="222px" TextMode="Password"></asp:TextBox>
    <br />
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                             ControlToValidate="TextBox2" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btn-primary" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" CausesValidation="false" CssClass="btn-success" />
    <br/>
    <br/>
    <asp:Button ID="Button3" runat="server" Text="Forget password" CausesValidation="false" />
    </asp:Content>