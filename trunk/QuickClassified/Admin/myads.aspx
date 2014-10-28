<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myads.aspx.cs" Inherits="QuickClassified.Admin.myads" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <title>My Ads</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen" href="../Styles/css-table.css" />
<script type="text/javascript" src="../Scripts/tablejs/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../Scripts/tablejs/style-table.js"></script>
    <style type="text/css">
        .style1
        {
            width: 280px;
        }
        .style2
        {
            width: 50px;
        }
        .style3
        {
            width: 175px;
        }
        .style4
        {
            width: 70px;
        }
    </style>
</head>

<body>
<div style="width:100%; height:auto">
    <form id="form1" runat="server">
    
    
    <!--start header-->
    
    <div class="header" >
  <%--  <img src="../images/newheader.jpg" width="1024px" />--%>
    </div>
    <!--end header-->



<div style="min-height:500px; background-color:White;">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <asp:UpdatePanel ID="adsup"  runat="server"><ContentTemplate>
   
  <table id="Table1" summary="Travel times to work by main mode (Autumn 2006) - Source: London Travel Report 2007 http://www.tfl.gov.uk/assets/downloads/corporate/London-Travel-Report-2007-final.pdf">
    
    <thead>    
    	
        <tr>
            <th scope="col" class="style3">Title</th>
            <th scope="col" class="style2">Price</th>
            <th scope="col" class="style2">City</th>
            <th scope="col" class="style2">Location</th>
            <th scope="col" class="style2">Time</th>
            <th scope="col" class="style2">views</th>
            <th scope="col" class="style2">Category</th>
        </tr>        
    </thead>
    
   </table>
    
            <asp:ListView ID="adslistview" runat="server" OnItemCommand="ad_ItemCommand"   >
        <LayoutTemplate>
        <asp:PlaceHolder ID="itemplaceholder" runat="server">
        <div id="Div12" runat="server"></div>
        </asp:PlaceHolder>
    
        </LayoutTemplate>
    
       <ItemTemplate>

        <table id="travel">
   
    
    
    	<tr>
    		<th scope="row" class="style1"><b><asp:LinkButton ID="adtitilelb"  Font-Overline="false" CommandName="adscommand" Text='<%# Eval("title") %>' runat="server"></asp:LinkButton></b></th>
            <td class="style4"><asp:LinkButton ID="adpricelb"  Font-Overline="false" CommandName="adspricecommand"  Text='<%# Eval("price") %>' runat="server"></asp:LinkButton></td>
             <td class="style4"><asp:LinkButton ID="LinkButton1"  Font-Overline="false" CommandName="adslocationcommand"  Text='<%# Eval("city") %>' runat="server"></asp:LinkButton></td>
            <td class="style4"><asp:LinkButton ID="LinkButton2"  Font-Overline="false" CommandName="adslocationcommand"  Text='<%# Eval("location") %>' runat="server"></asp:LinkButton></td>
            <td class="style4"><asp:LinkButton ID="LinkButton3"  Font-Overline="false" CommandName="adsdatetimecommand"  Text='<%# Eval("datetime") %>' runat="server"></asp:LinkButton></td>
            <td class="style4"><asp:LinkButton ID="LinkButton5"  Font-Overline="false" CommandName="adsviewscommand" Text='<%# Eval("views") %>' runat="server"></asp:LinkButton></td>
            <td class="style4"><asp:LinkButton ID="LinkButton6"  Font-Overline="false" CommandName="adstablecommand"  Text='<%# Eval("tablename") %>' runat="server"></asp:LinkButton></td>
        </tr>
        
    

</table>

    
       
      <%--  <table>
       <tr style="border:5px; margin-left:30px; ">
       <td style="width:150px;padding-left:30px; "><h2><b><asp:LinkButton ID="adtitilelb"  Font-Overline="false"  CommandName="adscommandtitle" Text='<%#Eval("title") %>'  runat="server">'<%#Eval("title") %>'</asp:LinkButton></b></h2></td>
       <td style="width:95px;"><asp:ImageButton ID="deleteadbtn" runat="server" ToolTip="delet this ad"  Width="50px" CommandName="adscommanddelete" Height="50px" ImageUrl="~/images/admin_images/close.ico"  /></td>
       <td style="width:95px;"><asp:ImageButton ID="editadbtn" runat="server" ToolTip="edit this ad"  Width="50px" CommandName="adscommandedit" Height="50px" ImageUrl="~/images/admin_images/edit.ico"  /></td>
       <td style="width:95px;"><asp:ImageButton ID="viewadbtn" runat="server" ToolTip="view this ad"  Width="80px" CommandName="adscommandview" Height="50px" ImageUrl="~/images/admin_images/show.png" /></td>
       </tr>
       
       </table>--%>
</ItemTemplate>
       
       </asp:ListView>
          <asp:DataPager ID="adsdatapager" runat="server" PagedControlID="adslistview" PageSize="10" onprerender="adlistview_PreRender">
       <Fields>
       <asp:NumericPagerField ButtonType="Image"  NumericButtonCssClass="pagination"  />
       </Fields>
       </asp:DataPager>
    

    

       </ContentTemplate></asp:UpdatePanel>
     






</div>






    <!--start footer-->
    <div class="footer">
    <%--<img src="../images/footer.jpg" style="width: 1024px" />--%>
    </div>
    <!--end footer-->









    </form>
    </div>
</body>
</html>
