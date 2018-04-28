<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="HomePageAdmin.aspx.cs" Inherits="Gsms_Project.HomePageAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="maindiv">
       <h1 >Gym Services and Monitoring System</h1>
        <br />


        <img src="Images/User.png" alt="userphoto" id="bmiImage"  height="332px" width="500px" class="img-fluid"/>
        <br />
        <asp:Button ID="userBtn" runat="server" Text="Users" OnClick="userBtn_Click" CssClass="btn-primary"/>
	 <br />


         <img src="Images/manage.png" alt="managephoto" id="manageConsultant"  height="332px" width="500px" class="img-fluid"/>
        <br />
        <asp:Button ID="mngBtn" runat="server" Text="Manage Consultant" OnClick="mngBtn_Click" CssClass="btn-primary"   />


         <br />
         <img src="Images/message.png" alt="messagephoto" id="messageImage" height="332px" width="500px" class="img-fluid" />
        <br />
        <asp:Button ID="msgBtn" runat="server" Text="Message" CssClass="btn-primary" OnClick="msgBtn_Click" />

        
         <br />
         <br />
         <br />

         <asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click"  CssClass="btn-dark"/>


        </div>
</asp:Content>
