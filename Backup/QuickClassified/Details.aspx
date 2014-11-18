<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="QuickClassified.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server">
    <LayoutTemplate>
    <div runat="server">
    <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
    </div>
    </LayoutTemplate> 
   <ItemTemplate>
   <div>
  <b> <label style="color:#0172BB;font-size:20px;"><%#Eval("title") %></label></b>
   <br />
   <label style="font-size:16px;" ><%#Eval("city") %></label>,<label style="font-size:16px;" ><%#Eval("datetime")%></label>,
   <div style="background-color:#F3F0E7 ;width:400px;height:400px; float:left;"  >
   <img src="<%#Eval("image") %>" alt="image not found" style="margin-left:5px; margin-top:5px;" width="390px" height="390px" />
   
   </div>
   <div style="background-color:#F3F0E7;width:140px;height:400px; float:left;margin-left:10px; "  >
   <img src="images/user.png" alt="no image found" style="margin-top:10px; margin-left:10px;" />
   <label><%#Eval("firstname") %>&nbsp <%#Eval("lastname") %></label>
   <br />
     <img src="images/Call.png" alt="no image found" style="margin-top:10px; margin-left:10px;" />
   <label><%#Eval("mobile") %></label>
   <br /> 
   <br />
    
   <label>views:</label>   <b><label  style="margin-left:10px;" ><%#Eval("views") %></label></b>
   <br /><br />
   <label>price:</label>   <b><label  style="margin-left:10px;" ><%#Eval("price") %> Rs</label></b>
    <br /><br />
   <label>Ad id:</label>   <b><label  style="margin-left:10px;" ><%#Eval("id") %> </label></b>
   </div>
 
   </div>
 
 <div style="width:550px;height:200px; margin-top:410px;" >
 <b><label style="font-size:24px;color:#0172BB;">Description</label></b><br />
   <label style="font-size:16px;" > <%#Eval("content") %></label>
   
   
  <br />
   <br />
   <br />
   
 
 </div>  
 
   </ItemTemplate>
    </asp:ListView>

</asp:Content>
