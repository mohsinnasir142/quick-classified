<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listviewconditional.aspx.cs" Inherits="QuickClassified.listviewconditional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
  <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
      <%--      <span style="background-color:Blue;">autos_auto_parts_title:
            <asp:Label ID="autos_auto_parts_titleLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_title") %>' /> &nbsp;&nbsp;autos_auto_parts_city:
            <asp:Label ID="autos_auto_parts_cityLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_city") %>' />
           
            
            <br />
            autos_auto_parts_content:
            <asp:Label ID="autos_auto_parts_contentLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_content") %>' />
            &nbsp;&nbsp;
            autos_auto_parts_price:
            <asp:Label ID="autos_auto_parts_priceLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_price") %>' />
            <br />
            autos_auto_parts_image:
            <asp:Label ID="autos_auto_parts_imageLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_image") %>' />
            &nbsp;&nbsp;
            autos_auto_parts_datetime:
            <asp:Label ID="autos_auto_parts_datetimeLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_datetime") %>' />
            <br />
<br /></span>--%>
  <div style="background-color:#4b6c9e;height:90px;width:550px;left:200px;">
        <div style="float:left;background-color:White;height:70px;width:50px;margin-top:5px;margin-left:5px;left:100px;"></div>
        <div style="background-color:White;height:20px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"></div>
        <div style="background-color:White;height:45px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:-20px;left:100px;" ></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ></div>
</div><br />
        </AlternatingItemTemplate>
        <ItemTemplate>
      <div style="background-color:#4b6c9e;height:90px;width:550px;left:200px;">
        <div style="float:left;background-color:White;height:70px;width:50px;margin-top:5px;margin-left:5px;left:100px;"> </div>
        <div style="background-color:White;height:20px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"></div>
        <div style="background-color:White;height:45px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:-20px;left:100px;" ></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ></div>
</div><br />
<%--
            <span style="">autos_auto_parts_title:
            <asp:Label ID="autos_auto_parts_titleLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_title") %>' />
             &nbsp;&nbsp;
            autos_auto_parts_city:
            <asp:Label ID="autos_auto_parts_cityLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_city") %>' />
            <br />
            autos_auto_parts_content:
            <asp:Label ID="autos_auto_parts_contentLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_content") %>' />
             &nbsp;&nbsp;
            autos_auto_parts_price:
            <asp:Label ID="autos_auto_parts_priceLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_price") %>' />
            <br />
            autos_auto_parts_image:
            <asp:Label ID="autos_auto_parts_imageLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_image") %>' />
           &nbsp;&nbsp;
            autos_auto_parts_datetime:
            <asp:Label ID="autos_auto_parts_datetimeLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_datetime") %>' />
            <br />
<br /></span>
--%>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <%--<div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>--%>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">autos_auto_parts_title:
            <asp:Label ID="autos_auto_parts_titleLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_title") %>' />
            <br />
            autos_auto_parts_city:
            <asp:Label ID="autos_auto_parts_cityLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_city") %>' />
            <br />
            autos_auto_parts_content:
            <asp:Label ID="autos_auto_parts_contentLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_content") %>' />
            <br />
            autos_auto_parts_price:
            <asp:Label ID="autos_auto_parts_priceLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_price") %>' />
            <br />
            autos_auto_parts_image:
            <asp:Label ID="autos_auto_parts_imageLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_image") %>' />
            <br />
            autos_auto_parts_datetime:
            <asp:Label ID="autos_auto_parts_datetimeLabel" runat="server" 
                Text='<%# Eval("autos_auto_parts_datetime") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="select temp_title ,temp_id ,temp_city ,temp_price ,temp_datetime ,temp_category  from  temp  "></asp:SqlDataSource>
</div>
</asp:Content>
