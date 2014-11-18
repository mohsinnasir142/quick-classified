<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listsajid.aspx.cs" Inherits="QuickClassified.listsajid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="3">
    <Fields>
    <asp:NumericPagerField />
    
    </Fields>
    </asp:DataPager>
    <asp:ListView ID="ListView1" runat="server" 
        onitemcommand="ListView1_ItemCommand" >
    <LayoutTemplate>
    <asp:PlaceHolder ID="itemPlaceHolder" runat="server">
    
    <div runat="server"></div>

    </asp:PlaceHolder>
    
    </LayoutTemplate>
    <ItemTemplate>

    <div style="background-color:#4b6c9e;height:90px;width:550px;left:200px;">
        <div style="float:left;background-color:White;height:70px;width:50px;margin-top:5px;margin-left:5px;left:100px;">             <asp:Label ID="Label5" runat="server" 
                Text='<%# Eval("temp_id") %>' /> </div>
        <div style="background-color:White;height:20px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;">
            <asp:LinkButton ID="LinkButton1" CommandName="show_details" CommandArgument='<%#Eval("temp_id") %>' Text='<%# Eval("temp_title") %>' runat="server">LinkButton</asp:LinkButton>
        
        <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("temp_title") %>' />--%></div>
        <div style="background-color:White;height:45px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"><asp:Label ID="Label3" runat="server" 
                Text='<%# Eval("temp_category") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:-20px;left:100px;" >            <asp:Label ID="Label6" runat="server" 
                Text='<%# Eval("temp_datetime") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label2" runat="server" 
                Text='<%# Eval("temp_city") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("temp_price") %>' /></div>
</div>

    </ItemTemplate>
    </asp:ListView>

</div>

</asp:Content>

