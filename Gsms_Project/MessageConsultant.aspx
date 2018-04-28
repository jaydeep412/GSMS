<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="MessageConsultant.aspx.cs" Inherits="Gsms_Project.MessageConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
        .container{
            background-color:ActiveBorder;
            border:thick solid #808080;
            padding: 20px;
            margin: 20px;
        }
        </style>
   
       <div class="container">
       <input type="text" id="message"/>
       <input type="button" id="sendmessage" value="Send"/>
       <input type="hidden" id="displayname"/>
       <ul id="discussion" ></ul>
        </div>
       <script src="Scripts/jquery-3.0.0.min.js"></script>
       <script src="Scripts/jquery.signalR-2.2.3.min.js"></script>
       <script src="/signalr/hubs"></script>
       <script type="text/javascript">
           $(function () {
               var chat = $.connection.chatHub;
               chat.client.broadcastMessage = function (name, message) {
                   var encodedName = $('<div />').text(name).html();
                   var encodedMsg = $('<div />').text(message).html();

                   $('#discussion').append('<li><strong>' + encodedName +
                       '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
               };

               $('#displayname').val(prompt('Enter your name:', ''));
               $('#message').focus();

               $.connection.hub.start().done(function () {
                   $('#sendmessage').click(function () {
                       chat.server.send($('#displayname').val(), $('#message').val());
                       $('#message').val('').focus();
                   });
               });
           });
       </script>
</asp:Content>
