<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="ChangeDetails.aspx.cs" Inherits="Gsms_Project.ChangeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:GsmsConnectionString %>"
        SelectCommand="SELECT * FROM [Member] WHERE ([username] = @username)" DeleteCommand="DELETE FROM [Member] WHERE [username] = @username" InsertCommand="INSERT INTO [Member] ([name], [username], [password], [dateofbirth], [address], [email], [bmi], [consultant], [Card], [Feedback]) VALUES (@name, @username, @password, @dateofbirth, @address, @email, @bmi, @consultant, @Card, @Feedback)" UpdateCommand="UPDATE [Member] SET [name] = @name, [password] = @password, [dateofbirth] = @dateofbirth, [address] = @address, [email] = @email, [bmi] = @bmi, [consultant] = @consultant, [Card] = @Card, [Feedback] = @Feedback WHERE [username] = @username">
        <DeleteParameters>
            <asp:Parameter Name="username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dateofbirth" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="bmi" Type="Double" />
            <asp:Parameter Name="consultant" Type="String" />
            <asp:Parameter Name="Card" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="bmi" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="dateofbirth" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="bmi" Type="Double" />
            <asp:Parameter Name="consultant" Type="String" />
            <asp:Parameter Name="Card" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        <asp:GridView ID="GridView1" runat="server"
              AutoGenerateEditButton="True"
            AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" SortExpression="dateofbirth" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="bmi" HeaderText="bmi" SortExpression="bmi" />
                <asp:BoundField DataField="consultant" HeaderText="consultant" SortExpression="consultant" />
                <asp:BoundField DataField="Card" HeaderText="Card" SortExpression="Card" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
            </Columns>
        </asp:GridView>
    </p>
    

</asp:Content>
