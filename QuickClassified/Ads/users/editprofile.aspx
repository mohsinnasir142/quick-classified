<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="QuickClassified.Ads.users.editprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <link href="~/Styles/accordin-css/dcaccordion.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../Styles/slider/imageScroller.css"/>
<link rel="stylesheet" type="text/css" href="../../Styles/news/NewsJq.css"/>
<link rel="stylesheet" type="text/css" href="../../Styles/slider/fullImages.css"/>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.cookie.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.hoverIntent.minified.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.dcjqaccordion.2.7.min.js"></script>
<script type='text/javascript' src="../../Scripts/newsScripts/fullimagz.js"></script>
<script type='text/javascript' src="../../Scripts/newsScripts/newsScript.js"></script>
     
    <style type="text/css">
        .style27
        {
            width: 100%;
        }
        .style29
        {
            width: 179px;
            height: 45px;
        }
        .style30
        {
            height: 45px;
            border-color:#0172BB;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="edit">
<div class="editinfo" align="center">
    <table class="style27" >
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_fname_lb" runat="server" Text="Firstname" ForeColor="white"></asp:Label></strong></td>
            <td class="style30">
                &nbsp;<asp:TextBox ID="first_name_tb" runat="server" Width="187px" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_lname_lb" runat="server" Text="Lastname" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="style30">
                <asp:TextBox ID="last_name_tb" runat="server" Width="187px" BorderColor="Black"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_address" runat="server" Text="Address" ForeColor="White"></asp:Label></strong></td>
            <td class="style30">
                <asp:TextBox ID="address_tb" runat="server" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_city" runat="server" Text="City" ForeColor="White"></asp:Label></strong></td>
            <td class="style30">
                <asp:TextBox ID="city_tb" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_country" runat="server" Text="Area" ForeColor="White"></asp:Label></strong></td>
            <td class="style30">
                <asp:TextBox ID="country_tb" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;<strong><asp:Label ID="edit_mobile" runat="server" Text="Mobile" ForeColor="White"></asp:Label></strong></td>
            <td class="style30">
                <asp:TextBox ID="mobile_tb" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
    </table><br />&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
        ImageUrl="~/images/buttonUpdate.png" onclick="ImageButton1_Click" 
        Width="74px" />
    <br />
    <br />
    <h1><asp:Label ID="message_lb" runat="server"></asp:Label></h1>
    <h1><asp:Label ID="exception_lb" runat="server"></asp:Label></h1>
    <h1><asp:Label ID="update_lb" runat="server"></asp:Label></h1>
    </div>



    </div>
</asp:Content>
