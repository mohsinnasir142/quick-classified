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
          
#feedback-page{
	text-align:center;
}

.form-main{
	width:100%;
	float:left;
	padding-top:0px;
}

.form-div {
	background-color:rgba(72,72,72,0.4);
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
  margin-top:30px;
	margin-left: -260px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}

.feedback-input {
	color:#3c3c3c;
	font-family: Helvetica, Arial, sans-serif;
  font-weight:500;
	font-size: 18px;
	border-radius: 0;
	line-height: 22px;
	background-color: #fbfbfb;
	padding: 13px 13px 13px 54px;
	margin-bottom: 10px;
	width:100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  border: 3px solid rgba(0,0,0,0);
}

.feedback-input:focus{
	background: #fff;
	box-shadow: 0;
	border: 3px solid #3498db;
	color: #3498db;
	outline: none;
  padding: 13px 13px 13px 54px;
}

.focused{
	color:#30aed6;
	border:#30aed6 solid 3px;
}

/* Icons ---------------------------------- */
.userName{
	background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

.userName:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
	background-size: 30px 30px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

.emailfield{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

.emailfield:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

.passwordField{
	background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}
.passwordField:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}
.questionfield:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

.questionfield{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}
.answerfield:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

.answerfield{
	background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

textarea {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}

input:hover, textarea:hover,
input:focus, textarea:focus {
	background-color:white;
}

@media only screen and (max-width: 580px) {
	.form-div{
		left: 3%;
		margin-right: 3%;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
}

          #MainContent_NewUserWizard_StepNavigationTemplateContainerID_StepNextButton {
                 height: 35px;
                width: 110px;
                margin-top: 480px;
                margin-left: 375%;
                cursor: pointer;
                background-color: #3498db;
          }
          #MainContent_NewUserWizard___CustomNav0_StepNextButtonButton {
                height: 35px;
                width: 110px;
                margin-top: 480px;
                margin-left: 375%;
                cursor: pointer;
                background-color: #3498db;
          }
          #MainContent_NewUserWizard_CompleteStepContainer_ContinueButton {
               height: 35px;
                width: 110px;
                cursor: pointer;
                background-color: #3498db;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register</h2>
  
    
<asp:CreateUserWizard ID="NewUserWizard" runat="server" 
        ContinueDestinationPageUrl="~/" 
        oncreateduser="NewUserWizard_CreatedUser" 
        onactivestepchanged="NewUserWizard_ActiveStepChanged">
        <WizardSteps>

            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <div class="form-main">
                     <div class="form-div">
  <table>
      <tr >
          <td colspan="2">
               <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="NewUserWizard">User Name is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input userName" placeholder="Username" id="UserName"></asp:TextBox>
          </td>

      </tr>
      <tr>
          <td>
              <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="NewUserWizard">Password is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" TextMode="Password" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input passwordField" placeholder="Password" id="Password"></asp:TextBox>
               

          </td>
          <td>
              <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="NewUserWizard">Confirm Password is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" TextMode="Password" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input passwordField" placeholder="Confirm password" id="ConfirmPassword"></asp:TextBox>
              
          </td>

      </tr>
      <tr>
      <td colspan="2">
            <asp:RequiredFieldValidator ID="EmailRequired1" runat="server"  ForeColor="red"
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="NewUserWizard">Email is required</asp:RequiredFieldValidator>        
          <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input emailfield" placeholder="Email" id="Email"></asp:TextBox>
              
      </td>
          </tr>
      <tr>
          <td>
              <asp:RequiredFieldValidator ID="QuestionRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="NewUserWizard">Security question is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input questionfield" placeholder="Security Question" id="Question"></asp:TextBox>
              

          </td>
          <td>
              <asp:RequiredFieldValidator ID="AnswerRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="NewUserWizard">Security Answer is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input answerfield" placeholder="Security Answer" id="Answer"></asp:TextBox>
                
          </td>

      </tr>

       <tr style="color:red;">
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="NewUserWizard"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="color:red;">
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>


  </table>
                  

  
  </div>
    </div>

                   
             
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
                <div class="form-main">
                    <div class="form-div">
                <table>
      <tr >
          <td >
               <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="FirstName" ErrorMessage="FirstName is required." 
                                    ToolTip="FirstName is required." ValidationGroup="RegisterUserValidationGroup">FirstName is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input userName" placeholder="First Name" id="FirstName"></asp:TextBox>
          </td>

           <td>
               <asp:RequiredFieldValidator ID="LastNameRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="LastName" ErrorMessage="LastName is required." 
                                    ToolTip="FirstName is required." ValidationGroup="RegisterUserValidationGroup">LastName is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input userName" placeholder="Last Name" id="LastName"></asp:TextBox>
          </td>

      </tr>
      <tr>
          <td>
              <asp:RequiredFieldValidator ID="CountryRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="Country" ErrorMessage="Country Name is required." 
                                    ToolTip="Country Name is required." ValidationGroup="RegisterUserValidationGroup">Country Name is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input passwordField" placeholder="Country" id="Country"></asp:TextBox>
               

          </td>
          <td>
              <asp:RequiredFieldValidator ID="CityRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="City" 
                                    ErrorMessage="City Name is required." 
                                    ToolTip="City Name is required." ValidationGroup="RegisterUserValidationGroup">City Name is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input passwordField" placeholder="City" id="City"></asp:TextBox>
              
          </td>

      </tr>
      <tr>
      <td colspan="2">
            <asp:RequiredFieldValidator ID="MobileRequired" runat="server"  ForeColor="red"
                                    ControlToValidate="Mobile" ErrorMessage="Mobile # is required." 
                                    ToolTip="Mobile is required." ValidationGroup="RegisterUserValidationGroup">Mobile# is required</asp:RequiredFieldValidator>        
          <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input emailfield" placeholder="Mobile #" id="Mobile"></asp:TextBox>
              
      </td>
          </tr>
      <tr>
          <td colspan="2">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="red"
                                    ControlToValidate="Address" ErrorMessage="Address is required." 
                                    ToolTip="Address is required." ValidationGroup="RegisterUserValidationGroup">Address is required</asp:RequiredFieldValidator>
              <asp:TextBox  runat="server" CssClass="validate[required,custom[onlyLetter],length[0,100]] feedback-input questionfield" placeholder="Address" id="Address"></asp:TextBox>
              

          </td>

      </tr>

  </table>
</div>
</div>                
               
            </asp:WizardStep>
           





            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                       
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
