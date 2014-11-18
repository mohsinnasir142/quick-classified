<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="QuickClassified.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>     
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
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
        <div style="float:left;background-color:White;height:70px;width:50px;margin-top:5px;margin-left:5px;left:100px;">             <asp:Label ID="Label5" runat="server" 
                Text='<%# Eval("autos_auto_parts_image") %>' /> </div>
        <div style="background-color:White;height:20px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"><asp:Label ID="Label1" runat="server" 
                Text='<%# Eval("autos_auto_parts_title") %>' /></div>
        <div style="background-color:White;height:45px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"><asp:Label ID="Label3" runat="server" 
                Text='<%# Eval("autos_auto_parts_content") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:-20px;left:100px;" >            <asp:Label ID="Label6" runat="server" 
                Text='<%# Eval("autos_auto_parts_datetime") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label2" runat="server" 
                Text='<%# Eval("autos_auto_parts_city") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("autos_auto_parts_price") %>' /></div>
</div><br />
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">autos_auto_parts_title:
            <asp:TextBox ID="autos_auto_parts_titleTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_title") %>' />
            <br />
            autos_auto_parts_city:
            <asp:TextBox ID="autos_auto_parts_cityTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_city") %>' />
            <br />
            autos_auto_parts_content:
            <asp:TextBox ID="autos_auto_parts_contentTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_content") %>' />
            <br />
            autos_auto_parts_price:
            <asp:TextBox ID="autos_auto_parts_priceTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_price") %>' />
            <br />
            autos_auto_parts_image:
            <asp:TextBox ID="autos_auto_parts_imageTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_image") %>' />
            <br />
            autos_auto_parts_datetime:
            <asp:TextBox ID="autos_auto_parts_datetimeTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_datetime") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">autos_auto_parts_title:
            <asp:TextBox ID="autos_auto_parts_titleTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_title") %>' />
            <br />autos_auto_parts_city:
            <asp:TextBox ID="autos_auto_parts_cityTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_city") %>' />
            <br />autos_auto_parts_content:
            <asp:TextBox ID="autos_auto_parts_contentTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_content") %>' />
            <br />autos_auto_parts_price:
            <asp:TextBox ID="autos_auto_parts_priceTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_price") %>' />
            <br />autos_auto_parts_image:
            <asp:TextBox ID="autos_auto_parts_imageTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_image") %>' />
            <br />autos_auto_parts_datetime:
            <asp:TextBox ID="autos_auto_parts_datetimeTextBox" runat="server" 
                Text='<%# Bind("autos_auto_parts_datetime") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
        <div style="background-color:#4b6c9e;height:90px;width:550px;left:200px;">
        <div style="float:left;background-color:White;height:70px;width:50px;margin-top:5px;margin-left:5px;left:100px;">             <asp:Label ID="Label5" runat="server" 
                Text='<%# Eval("autos_auto_parts_image") %>' /> </div>
        <div style="background-color:White;height:20px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"><asp:Label ID="Label1" runat="server" 
                Text='<%# Eval("autos_auto_parts_title") %>' /></div>
        <div style="background-color:White;height:45px;width:350px;float:left;margin-left:5px;margin-top:5px;left:100px;"><asp:Label ID="Label3" runat="server" 
                Text='<%# Eval("autos_auto_parts_content") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:-20px;left:100px;" >            <asp:Label ID="Label6" runat="server" 
                Text='<%# Eval("autos_auto_parts_datetime") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label2" runat="server" 
                Text='<%# Eval("autos_auto_parts_city") %>' /></div>
        <div  style="background-color:White;height:20px;width:130px;float:right;margin-right:5px;margin-top:5px;left:100px;" ><asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("autos_auto_parts_price") %>' /></div>
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
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
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
        SelectCommand="SELECT [autos_auto_parts_title], [autos_auto_parts_city], [autos_auto_parts_content], [autos_auto_parts_price], [autos_auto_parts_image], [autos_auto_parts_datetime] FROM [ad_autos_auto_parts]">
    </asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    <br />
    </div>
</asp:Content>
