<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register1.aspx.cs" Inherits="QuickClassified.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 206px;
        }
        .textEntry
        {}
        .style11
        {
            width: 258px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div  class="centrediv" >
        <br/>
        <br/>
        
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
            OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
        
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
            
                <ContentTemplate>
                
                    <h2>
                        Create a New Account
                    </h2>
                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Account Information</legend>





                            
   <!---------CUSTOM INFORMATION IN TABLE----------START-->


   <table class="style11">
        
        <tr>
            <td class="style4">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                    ControlToValidate="UserName" CssClass="failureNotification" 
                    ErrorMessage="User Name is required." ToolTip="User Name is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                    ControlToValidate="Email" CssClass="failureNotification" 
                    ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style4">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                    ControlToValidate="Password" CssClass="failureNotification" 
                    ErrorMessage="Password is required." ToolTip="Password is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style4">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                    CssClass="failureNotification" Display="Dynamic" 
                    ErrorMessage="The Password and Confirmation Password must match." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                    ControlToValidate="ConfirmPassword" CssClass="failureNotification" 
                    Display="Dynamic" ErrorMessage="Confirm Password is required." 
                    ToolTip="Confirm Password is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>

    </table>




                        </fieldset>
                      
                    </div>
                    
                </ContentTemplate>
                
            
            </asp:CreateUserWizardStep>
            
            

            <asp:WizardStep runat="server" StepType="Step" Title="personal info">

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
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry"></asp:TextBox>
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
            
            

<asp:CompleteWizardStep  runat="server">


</asp:CompleteWizardStep>
            
        </WizardSteps>
    </asp:CreateUserWizard>
    </div>
    
</asp:Content>
