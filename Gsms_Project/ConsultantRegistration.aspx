<%@ Page Title="" Language="C#" MasterPageFile="~/Gsms.Master" AutoEventWireup="true" CodeBehind="ConsultantRegistration.aspx.cs" Inherits="Gsms_Project.ConsultantRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="maindiv" class="container">  
            <table class="table">  
                <tr>  
                    <td>Name :</td>  
                    <td>  
                        <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>  
                   <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" 
                             ControlToValidate="txtName" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>  

                 <tr>  
                    <td>Username :</td>  
                    <td>  
                        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>  
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" 
                             ControlToValidate="txtUserName" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>  

                <tr>  
                    <td>Password:</td>  
                     <td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>  
             <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                             ControlToValidate="txtPassword" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                     <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
                              ValidationExpression="(?=.{8,})[a-zA-Z]+[^a-zA-Z]+|[^a-zA-Z]+[a-zA-Z]+"
                              ControlToValidate="txtPassword" ForeColor="red"
                             ErrorMessage="Password must be 8 characters and have both letter and number"></asp:RegularExpressionValidator>

                         
                     </td>
                </tr>  
                <tr>  
                    <td>Confirm Password:</td>  
                    <td>
                        
                        <asp:TextBox ID="txtConfirmPsd" runat="server" TextMode="Password"></asp:TextBox>  
                   <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
                             ControlToValidate="txtConfirmPsd" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" ForeColor="Red"
                             ControlToCompare="txtPassword" ControlToValidate="txtConfirmPsd"
                            runat="server" ErrorMessage="Passowrd does not match"></asp:CompareValidator>
                        
                    </td>  
                </tr>  
                 <tr>  
                    <td>Date of Birth:</td>  
                    
                     <td>  
                         <asp:TextBox ID="txtBirth" runat="server"  ></asp:TextBox> 
                       <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidatorDate"  ControlToValidate="txtBirth"
                             ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$"
                             runat="server"  ForeColor="Red"
                             ErrorMessage="Date format in DD/MM/YYYY"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" 
                             ControlToValidate="txtBirth" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Date of Birth"></asp:RequiredFieldValidator>
                       


                    </td>  
                </tr>

                <tr>  
                    <td>Address:</td>  
                    <td>  
                         <asp:TextBox ID="txtAddress" runat="server" ></asp:TextBox> 
                            <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" 
                             ControlToValidate="txtAddress" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                       
                    </td>  
                </tr>  
                 
                <tr>  
                    <td>Email:</td>  
                    <td>  
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  
                            <br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail"  ControlToValidate="txtEmail"
                             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                             runat="server"  ForeColor="Red"
                             ErrorMessage="Email format abc@xyz.pq"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                             ControlToValidate="txtEmail" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                       
                    </td>  
                </tr>  

                  <tr>  
                     <td>Experience:</td>  
                    <td>  
                        <asp:TextBox ID="txtExp" runat="server"></asp:TextBox>  
                       <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorExp" 
                             ControlToValidate="txtExp" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Experience"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  

                 <tr>  
                     <td>Contact:</td>  
                    <td>  
                        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>  
                       <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                             ControlToValidate="txtContact" ForeColor="Red"
                            runat="server" ErrorMessage="Enter Contact"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  



                <tr>  
                    <td>  
                        <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" CssClass="btn-primary" />  
                    </td>
                    <td>
                        <asp:Button ID="Clear" CausesValidation="false" runat="server" Text="Clear" CssClass="btn-secondary" OnClick="Clear_Click"  />

                    </td>

                </tr> 
                
              

            </table>  
        </div>  


</asp:Content>
