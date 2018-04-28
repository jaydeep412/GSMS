<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Gsms_Project.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblFeedback" runat="server" Text="Feedback : "></asp:Label>

    <asp:TextBox ID="txtFeedback" runat="server"></asp:TextBox>

    <br />

    <asp:Button ID="btnFeedback" runat="server" Text="Submit Feedback" OnClick="btnFeedback_Click" />

</asp:Content>
