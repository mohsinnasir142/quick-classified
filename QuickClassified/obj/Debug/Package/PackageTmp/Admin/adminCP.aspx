<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminCP.aspx.cs" Inherits="QuickClassified.Admin.adminCP" %>
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
    <p>
        this is so called control pannel...............</p>
         <asp:Label ID="CommentDateLabel" runat="server" Text='<%# Eval("userID") %>' />
</asp:Content>
