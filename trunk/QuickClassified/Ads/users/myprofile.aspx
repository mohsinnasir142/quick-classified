<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="QuickClassified.Ads.users.myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
     
<div class="profile" align="center">
<asp:Label ID="welcome" runat="server" ForeColor="#0172BB"></asp:Label><br /><br />
    <asp:Label ID="address_lb" runat="server" ForeColor="#0172BB" ></asp:Label><br />
    <asp:Label ID="city_country_lb" runat="server" ForeColor="#0172BB" ></asp:Label><br />
    <asp:Label ID="mobile_no" runat="server"  ForeColor="#0172BB" ></asp:Label>
    

   
    <br /> 
    <br />
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/EditUpdate.png" onclick="ImageButton1_Click" />
</div>
  <h1><asp:Label ID="message_lb" runat="server"></asp:Label></h1>
    <h1><asp:Label ID="exception_lb" runat="server"></asp:Label></h1>
</asp:Content>
