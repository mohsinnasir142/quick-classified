<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QuickClassified.Account.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

      <style type="text/css">
         
         input[type=text]
        {
        	border:1px solid #aaa;
        }
        
        input[type=text]:focus
        {
        	border:2px solid orange;
        }

        input[type=password]
        {
        	border:1px solid #aaa;
        }
         input[type=password]:focus
        {
        	border:2px solid orange;
        }
          .textEntry
          {}
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register</h2>
    <p>
     signup instructin should go here...........
        
        
    </p>
    
<asp:CreateUserWizard ID="NewUserWizard" runat="server" 
        ContinueDestinationPageUrl="~/" 
        oncreateduser="NewUserWizard_CreatedUser" 
        onactivestepchanged="NewUserWizard_ActiveStepChanged">
        <WizardSteps>


            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                                    <table>
                        <tr>
                            <td align="center" colspan="2">
                                Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired1" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="NewUserWizard">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="NewUserWizard"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            



            <asp:WizardStep ID="UserSettings" runat="server" StepType="Step" Title="Your Settings">

<!-----------------------------------------------------------------------------------------------------------------------START
                <p>
                    <b>Home Town:</b><br />
                    <asp:TextBox ID="HomeTown" runat="server"></asp:TextBox>
                </p>
                <p>
                    <b>Homepage URL:</b><br/>
                    <asp:TextBox ID="HomepageUrl" Columns="40" runat="server"></asp:TextBox>
                </p>
                <p>
                    <b>Signature:</b><br />
                    <asp:TextBox ID="Signature" TextMode="MultiLine" Width="95%" Rows="5" runat="server"></asp:TextBox>
                </p>

                ----------------------------------------------------------------------------------------END HERE------>

                <table>
                

<tr>
            <td class="style4"><asp:Label ID="FirstNameLabel" runat="server" 
                    AssociatedControlID="FirstName" Width="109px">First Name:</asp:Label>
                </td>
            <td>
            <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry"></asp:TextBox>
                </td>
            <td>
            
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" 
                 CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required." 
                 ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>

                </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName">Last Name:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" 
                    ControlToValidate="LastName" CssClass="failureNotification" 
                    ErrorMessage="Last Name is required." ToolTip="Last Name is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="CountryLabel" runat="server" AssociatedControlID="Country">Country:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Country" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="CountryRequired" runat="server" 
                    ControlToValidate="Country" CssClass="failureNotification" 
                    ErrorMessage="Country Name is required." ToolTip="Country Name is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City">City:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="City" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="CityRequired" runat="server" 
                    ControlToValidate="City" CssClass="failureNotification" 
                    ErrorMessage="City Name is required." ToolTip="City Name is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile">Mobile:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="MobileRequired" runat="server" 
                    ControlToValidate="Mobile" CssClass="failureNotification" 
                    ErrorMessage="Mobile number is required." ToolTip="Mobile number is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address">Address:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry" 
                    TextMode="MultiLine" Height="48px" Width="147px" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Address" CssClass="failureNotification" 
                    ErrorMessage="Address is required." ToolTip="Address is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>


                
                
                </table>
                
            </asp:WizardStep>
           





            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">
                                SUCCESS !!</td>
                        </tr>
                        <tr>
                            <td style="border:1px; border-bottom-color:Green;">
                                Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" Text="Continue" ValidationGroup="NewUserWizard" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>


    
</asp:Content>
