<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="ManageConsultant.aspx.cs" Inherits="Gsms_Project.ManageConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="maindiv">

    <asp:SqlDataSource ID="consultantsDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>" 
        SelectCommand="SELECT [username], [name], [email] FROM [Consultant]" DeleteCommand="DELETE FROM [Consultant] WHERE [username] = @username" InsertCommand="INSERT INTO [Consultant] ([username], [name], [email]) VALUES (@username, @name, @email)" UpdateCommand="UPDATE [Consultant] SET [name] = @name, [email] = @email WHERE [username] = @username">
        <DeleteParameters>
            <asp:Parameter Name="username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="consultantGrid" runat="server" AutoGenerateColumns="False" AllowPaging="True"
          CssClass="table" OnRowDataBound="GridViewConsultantInfo_RowDataBound"
        DataSourceID="consultantsDataSource" DataKeyNames="username">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
    </asp:GridView>
        <asp:Button ID="btnAdd" runat="server" Text="Add a consultant" OnClick="btnAdd_Click" CssClass="btn-primary" />
        <br />
        <br />
        <asp:Button ID="btnHome" runat="server" Text="Home Page" CssClass="btn-success" OnClick="btnHome_Click" />

        </div>

</asp:Content>
