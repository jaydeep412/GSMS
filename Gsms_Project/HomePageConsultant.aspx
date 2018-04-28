<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="HomePageConsultant.aspx.cs" Inherits="Gsms_Project.HomePageConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="maindiv">
       <h1  >Gym Services and Monitoring System</h1>
        <br />


        <img src="Images/members.png" alt="memberphoto" id="memberImage"  height="332px" width="500px" class="img-fluid"/>
        <br />
        <asp:Button ID="memberBtn" runat="server" Text="Members" OnClick="memberBtn_Click" CssClass="btn-primary" />
	 <br />


        <%-- <img src="Images/consultant.png" alt="consultantsphoto" id="consultantImage" />
        <br />
        <asp:Button ID="conltBtn" runat="server" Text="Consultants" Width="345px" style="margin-left: 83px"  />--%>


         <br />
         <img src="Images/message.png" alt="messagephoto" id="messageImage" height="332px" width="500px" class="img-fluid" />
        <br />
        <asp:Button ID="msgBtn" runat="server" Text="Message" CssClass="btn-primary" OnClick="msgBtn_Click" />

         <br />
         <br />
         <br />

         <asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" CssClass="btn-dark" />

        </div>
</asp:Content>
