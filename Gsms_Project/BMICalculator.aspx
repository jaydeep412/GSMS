<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="BMICalculator.aspx.cs" Inherits="Gsms_Project.BMICalculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="maindiv">
     
    <asp:RadioButton ID="RadioButtonMetric" runat="server" GroupName="unit"
         
        OnCheckedChanged="Bmi_SelectedIndexChanged" AutoPostBack="true" Checked="true" />Metric<br />
    <asp:RadioButton ID="RadioButtonImperial" runat="server" GroupName="unit" OnCheckedChanged="Bmi_SelectedIndexChanged" AutoPostBack="true" />Imperial<br />
    <br />
                  <asp:label ID="lblHeight" Text="Height:" runat="server" />
                     <asp:TextBox ID="txtHeightOne" runat="server" />
                 <asp:Label ID="lblHeightUnitOne" runat="server" Text=""></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorHeightOne" ControlToValidate="txtHeightOne"
        runat="server"  ForeColor="Red"
        ErrorMessage="Enter Height"></asp:RequiredFieldValidator>
    <br/>
    
    <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtHeightTwo" runat="server" style="margin-left: 21px" />
   
                     <asp:Label ID="lblHeightUnitTwo" runat="server" Text=""></asp:Label>
       &nbsp;&nbsp;
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorHeightTwo" ControlToValidate="txtHeightTwo"
        runat="server"  ForeColor="Red"
        ErrorMessage="Enter Height"></asp:RequiredFieldValidator>
    <br />
    <br />
                  <asp:Label ID="lblWeight" Text="Weight:" runat="server" />
                     <asp:TextBox ID="txtWeight" runat="server" />
                      <asp:Label ID="lblWeightUnit" runat="server" Text=""></asp:Label>
      &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorWeight" ControlToValidate="txtWeight"
        runat="server"  ForeColor="Red"
        ErrorMessage="Enter Weight"></asp:RequiredFieldValidator> 
    
    <br />
                <br />
                     <asp:Button ID="btnCalculate" Text="Calculate" CausesValidation="true" runat="server" OnClick="btnCalculate_Click" CssClass="btn-primary" />
                    &nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnClear" runat="server" CausesValidation="false" Text="Clear" OnClick="btnClear_Click" CssClass="btn-secondary"/> 
                   
    
    <br /><br />
                  <asp:Label ID="lblResultOne" Text="Results:" runat="server" />
                   <asp:Label ID="lblResultTwo" runat="server" Text=""></asp:Label>
    <br />
    <br/>
    <br/>
                         <asp:Button ID="btnHome" CausesValidation="false" Text="Home" runat="server" CssClass="btn-success" OnClick="btnHome_Click" />


    </div>

</asp:Content>

