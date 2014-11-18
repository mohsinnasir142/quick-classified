<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminCP.aspx.cs" Inherits="QuickClassified.Admin.adminCP" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <link href="~/Styles/accordin-css/dcaccordion.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../Styles/slider/imageScroller.css"/>
<link rel="stylesheet" type="text/css" href="../../Styles/news/NewsJq.css"/>
<link rel="stylesheet" type="text/css" href="../../Styles/slider/fullImages.css"/>
<script type="text/javascript" src="../Scripts/jquery-1.4.1.min.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.cookie.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.hoverIntent.minified.js"></script>
<script type='text/javascript' src="../../Scripts/accordin-js/jquery.dcjqaccordion.2.7.min.js"></script>
<script type='text/javascript' src="../../Scripts/newsScripts/fullimagz.js"></script>
<script type='text/javascript' src="../../Scripts/newsScripts/newsScript.js"></script>
 <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>

     <asp:UpdatePanel ID="mainup" runat="server">
     <ContentTemplate>
 <asp:ImageButton ID="userimgbtn" runat="server" ImageUrl="~/images/admin_images/Account.png"
 style="border-radius:20px;margin-left:10px;" BackColor="LightGray" BorderStyle="Inset" 
             Width="110px" Height="110px" onclick="userimgbtn_Click" />
 
<asp:ImageButton ID="editfileimgbtn" runat="server" ImageUrl="~/images/admin_images/file-edit-icon.png"
 style="border-radius:20px;margin-left:10px;" BackColor="LightGray" BorderStyle="Inset" 
         Width="110px" Height="110px" />

<asp:ImageButton ID="reportimgbtn" runat="server" ImageUrl="~/images/admin_images/Reportt.png"
 style="border-radius:20px; margin-left:10px;" BackColor="LightGray" BorderStyle="Inset" 
         Width="110px" Height="110px" />

<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/admin_images/Database Add.png"
 style="border-radius:20px;margin-left:10px;" BackColor="LightGray" BorderStyle="Outset" 
         Width="110px" Height="110px" />
         <br /><br />


     <asp:UpdatePanel ID="userup" Visible="false" runat="server">
     <ContentTemplate>
     
    <%-- <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/admin_images/profile.png"
 style="border-radius:20px;margin-left:10px;" BackColor="LightGray" BorderStyle="Outset" 
         Width="110px" Height="110px" />
     
       --%>
         <%--<asp:GridView ID="GridVieew1" runat="server" AllowPaging="True" 
             AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             DataSourceID="usernamedatasource" ForeColor="#333333" GridLines="None" 
             Width="396px" onselectedindexchanged="GridView1_SelectedIndexChanged">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField ApplyFormatInEditMode="True" DataField="UserName" 
                     HeaderText="User Name" SortExpression="UserName">
                 <ControlStyle BackColor="#0066FF" BorderColor="Black" BorderWidth="1px" />
                 <ItemStyle BackColor="#66FFCC" />
                 </asp:BoundField>
                 <asp:BoundField DataField="UserId" HeaderText="User Id" 
                     SortExpression="UserId" />
                     
                 <asp:ImageField HeaderImageUrl="~/ImageStorage/2faf29f5-3769-4089-8517-66d40ce0f3a2m3.png" 
                     HeaderText="ssss">
                 </asp:ImageField>
        <asp:CheckBoxField  />
                 <asp:HyperLinkField Text="kkk" />
             </Columns>
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
         <asp:SqlDataSource ID="usernamedatasource" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT [UserName], [UserId] FROM [vw_aspnet_Users]">
         </asp:SqlDataSource>
--%>
        
      
        <asp:ListView ID="Listmohsiin" runat="server" onitemcommand="ListView1_ItemCommand" >
        <LayoutTemplate>
        <asp:PlaceHolder ID="itemPlaceHolder" runat="server">
        <div id="Div1" runat="server"></div>
        </asp:PlaceHolder>
    
        </LayoutTemplate>
    
       <ItemTemplate>
       <br />
       
       
       <table>
       <tr style="border:5px; ">
       <td style="width:150px;"><h2><b><asp:LinkButton ID="LinkButton1"  Font-Overline="false" CommandName="show_details" CommandArgument='<%#Eval("userid") %>' Text='<%# Eval("username") %>' runat="server">LinkButton</asp:LinkButton></b></h2></td>
       <td style="width:75px;"><asp:ImageButton ID="deletebtn" runat="server" ToolTip="delet the user" CommandName="delete" Width="50px" Height="50px" ImageUrl="~/images/admin_images/delete.ico" CommandArgument='<%#Eval("userid") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="profilebtn" runat="server" ToolTip="show the profile" CommandName="profile" Width="50px" Height="50px" ImageUrl="~/images/admin_images/profile1.png" CommandArgument='<%#Eval("userid") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="rolebtn" runat="server" ToolTip="Assign the role" CommandName="role" Width="50px" Height="50px" ImageUrl="~/images/admin_images/roles.png" CommandArgument='<%#Eval("userid") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="adsbtn" runat="server" ToolTip="show the ads of this user"  CommandName="ads" Width="50px" Height="50px" ImageUrl="~/images/admin_images/ads.png" CommandArgument='<%#Eval("userid") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="logindetailbtn" runat="server" ToolTip="check the login details" CommandName="logindetail" Width="50px" Height="50px" ImageUrl="~/images/admin_images/logindetail.png" CommandArgument='<%#Eval("userid") %>' /></td>
       </tr>
       
       </table>
       </ItemTemplate>
       
       </asp:ListView>
     <br />
       <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listmohsiin" PageSize="5" onprerender="DataPager1_PreRender">
       <Fields>
       <asp:NumericPagerField ButtonType="Image"  NumericButtonCssClass="pagination"  />
       </Fields>
       </asp:DataPager>
       

       <asp:UpdatePanel runat="server" ID="profileup" Visible="false"><ContentTemplate>
       <asp:ListView ID="profilelistview" runat="server"  >
        <LayoutTemplate>
        <asp:PlaceHolder ID="itemPlaceHolder" runat="server">
        <div id="Div1" runat="server"></div>
        </asp:PlaceHolder>
    
        </LayoutTemplate>
    
       <ItemTemplate>
 <div style="width:520px;height:125px;background-color:#D2D2D2;border-radius:20px;padding-top:20px; padding-left:10px;">
<table>
<tr style=" width:500px; border:10px; " >
<td style=" width:125px; height:30px;color:#2872BB"> <label >First Name</label></td>
<td style=" width:125px;height:30px;color:Black"><b><%#Eval("firstname") %></b></td>
<td style=" width:125px;height:30px;color:#2872BB"> <label >Last Name</label></td>
<td style=" width:125px;height:30px;color:Black"><b><%#Eval("lastname") %></b></td>
</tr>

<tr style=" width:500px; border:10px;" >
<td style="color:#2872BB; width:125px; height:30px;"> <label >Address</label></td>
<td style="color:Black; width:125px;height:30px;"><b><%#Eval("address") %></b></td>
<td style="color:#2872BB; width:125px;height:30px;"> <label >City</label></td>
<td style="color:Black; width:125px;height:30px;"><b><%#Eval("city") %></b></td>
</tr>

<tr style=" width:500px; border:10px;" >
<td style="color:#2872BB; width:125px; height:30px;"> <label >Country</label></td>
<td style="color:Black; width:125px;height:30px;"><b><%#Eval("country") %></b></td>
<td style="color:#2872BB; width:125px;height:30px;"> <label >Mobile</label></td>
<td style="color:Black; width:125px;height:30px;"><b><%#Eval("mobile") %></b></td>

</tr>





</table>
 
 
 </div>
       </ItemTemplate>
       
       </asp:ListView>
 
 
 
 </ContentTemplate></asp:UpdatePanel>
 
 <asp:UpdatePanel ID="assignroleup" runat="server" Visible="false"><ContentTemplate>
 <div style="margin-left:100px;  width:320px;height:150px;background-color:#D2D2D2;border-radius:20px;">
 <div style=" width:320px;height:30px;background-color:#2872BB;border-radius:20px;">
 <b style="margin-left:115px; margin-top:10px; color:White;">Select The Role</b>
 </div>
 <br />
     <asp:RadioButtonList  ID="assignrolerb" runat="server"  CssClass="assignrolecss" >
                            <asp:ListItem  Text="Administrator" Value="admin"></asp:ListItem>
                            <asp:ListItem Text="Feature" Value="feature"></asp:ListItem>
                            
     </asp:RadioButtonList>
     <br />
     <asp:ImageButton ID="ImageButton2" runat="server" CssClass="assignrolebtncss" onclick="Button1_Click" Width="30px" Height="30px" ImageUrl="~/images/admin_images/tick.ico" />
 
 
 </div>
 
 
 </ContentTemplate></asp:UpdatePanel>
<%--
      <asp:UpdatePanel ID="adsup" Visible="false" runat="server"><ContentTemplate>
<div style="margin-left:10px;  width:500px;height:450px;background-color:#D2D2D2;border-radius:20px;">
            <asp:ListView ID="adslistview" runat="server" OnItemCommand="ad_ItemCommand"   >
        <LayoutTemplate>
        <asp:PlaceHolder ID="itemplaceholder" runat="server">
        <div id="Div12" runat="server"></div>
        </asp:PlaceHolder>
    
        </LayoutTemplate>
    
       <ItemTemplate>
     <table>
       <tr style="border:5px; ">
       <td style="width:150px;"><h2><b><asp:LinkButton ID="adtitilelb"  Font-Overline="false" CommandName="adscommand" CommandArgument='<%#Eval("title") %>' Text='<%# Eval("title") %>' runat="server">LinkButton</asp:LinkButton></b></h2></td>
       <td style="width:75px;"><asp:ImageButton ID="deleteadbtn" runat="server" ToolTip="delet this ad" CommandName="deletead" Width="50px" Height="50px" ImageUrl="~/images/admin_images/close.ico" CommandArgument='<%#Eval("title") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="editadbtn" runat="server" ToolTip="edit this ad" CommandName="editad" Width="50px" Height="50px" ImageUrl="~/images/admin_images/edit.ico" CommandArgument='<%#Eval("title") %>' /></td>
       <td style="width:75px;"><asp:ImageButton ID="viewadbtn" runat="server" ToolTip="view this ad" CommandName="viewad" Width="50px" Height="50px" ImageUrl="~/images/admin_images/view.png" CommandArgument='<%#Eval("title") %>' /></td>
       </tr>
       
       </table>
        <table>
       <tr style="border:5px; margin-left:30px; ">
       <td style="width:150px;padding-left:30px; "><h2><b><asp:LinkButton ID="adtitilelb"  Font-Overline="false"  CommandName="adscommandtitle" Text='<%#Eval("title") %>'  runat="server">'<%#Eval("title") %>' </asp:LinkButton></b></h2></td>
       <td style="width:95px;"><asp:ImageButton ID="deleteadbtn" runat="server" ToolTip="delet this ad"  Width="50px" CommandName="adscommanddelete" Height="50px" ImageUrl="~/images/admin_images/close.ico"  /></td>
       <td style="width:95px;"><asp:ImageButton ID="editadbtn" runat="server" ToolTip="edit this ad"  Width="50px" CommandName="adscommandedit" Height="50px" ImageUrl="~/images/admin_images/edit.ico"  /></td>
       <td style="width:95px;"><asp:ImageButton ID="viewadbtn" runat="server" ToolTip="view this ad"  Width="80px" CommandName="adscommandview" Height="50px" ImageUrl="~/images/admin_images/show.png" /></td>
       </tr>
       
       </table>
</ItemTemplate>
       
       </asp:ListView>
          <asp:DataPager ID="adsdatapager" runat="server" PagedControlID="adslistview" PageSize="5" onprerender="adlistview_PreRender">
       <Fields>
       <asp:NumericPagerField ButtonType="Image"  NumericButtonCssClass="pagination"  />
       </Fields>
       </asp:DataPager>
    

    </div>

       </ContentTemplate></asp:UpdatePanel>
     --%>








 </ContentTemplate>
     </asp:UpdatePanel>
 
 </ContentTemplate></asp:UpdatePanel>
 </div>   
</asp:Content>
