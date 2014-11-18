<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myads.aspx.cs" Inherits="QuickClassified.Ads.users.myads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style31
        {
            color: #336699;
            
        }
        .style32
        {
            font-size: large;
        }
    </style>
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

 <span class="style32">
 
    <strong>
 
 <asp:LoginName ID="adLoginName" runat="server" CssClass="style31" />
    </strong>
    <span class="style31"><strong>'s Profile</strong></span></span>
    
<div class="myinfodiv" >

    
<div class="photo">


<img src="../../images/murtajiz.jpg" alt="" height="135px" width="128px"/>
    </div>

    <div class="name" >
    <h1 class="adsh1">Welcome, <asp:Label ID="welcome_lb" runat="server" ></asp:Label></h1>
    
    </div>
    
        <div class="cell">
           <h1 class="adsh1"> Cell : <asp:Label ID="mobile_lb" runat="server" ></asp:Label></h1>
    </div>

            <div class="address">
            <h1 class="adsh1">
         Address:   <asp:Label ID="address_lb" runat="server" ></asp:Label>
            </h1>
    </div>

    <div class="email">
    <h1 class="adsh1">
    Email :<asp:Label ID="email_lb" runat="server" ></asp:Label>
    </h1>
    </div>



    </div>

     <h1><asp:Label ID="message_lb" runat="server"></asp:Label></h1>
    <h1><asp:Label ID="exception_lb" runat="server"></asp:Label></h1>
<div class="clear" >
   
    <br />
    <br />
    <asp:GridView ID="myads_gv" runat="server" CellPadding="10"  ForeColor="#333333" 
        GridLines="None" 
        Width="541px">
        
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
   
    <br />
    </div>
     <h1><asp:Label ID="adexception" runat="server"></asp:Label></h1>
     <h1><asp:Label ID="admessage" runat="server"></asp:Label></h1>
</asp:Content>
