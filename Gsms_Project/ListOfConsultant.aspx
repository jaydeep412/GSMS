 <%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="ListOfConsultant.aspx.cs" Inherits="Gsms_Project.ListOfConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="maindiv">

    <asp:SqlDataSource ID="consultantsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>" SelectCommand="SELECT [name], [experience], [email], [username] FROM [Consultant]"></asp:SqlDataSource>
    <asp:GridView ID="consultantGrid" runat="server"
         CssClass="=table"   OnRowDataBound="GridViewConsultantInfo_RowDataBound"
        AutoGenerateColumns="False" DataSourceID="consultantsDataSource" DataKeyNames="username">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
        </Columns>
    </asp:GridView>


        </div>

</asp:Content>
