<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="MemberOfConsultant.aspx.cs" Inherits="Gsms_Project.MemberOfConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>" 
        SelectCommand="SELECT [name], [dateofbirth], [address], [email], [bmi] FROM [Member] WHERE ([consultant] = @consultant)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="consultant" SessionField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" SortExpression="dateofbirth" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="bmi" HeaderText="bmi" SortExpression="bmi" />
        </Columns>
    </asp:GridView>

</asp:Content>
