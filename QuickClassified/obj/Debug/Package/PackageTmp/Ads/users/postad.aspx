<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="postad.aspx.cs" Inherits="QuickClassified.Ads.postad" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

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
     <!--  for validation of textbox-->
      <script type="text/javascript" src="../../Scripts/textfieldvalidation/jquery-1.6.min.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="../../Scripts/textfieldvalidation/jquery.validationEngine-es.js" type="text/javascript" charset="utf-8">
        </script>
        <script type="text/javascript" src="../../Scripts/textfieldvalidation/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
        </script>

         <script type="text/javascript">
            jQuery(document).ready(function(){
                // binds form submission and fields to the validation engine
                jQuery("#formID").validationEngine();
            });

</script>
        <!-- end here -->







     <script type="text/javascript">

         var maxWidth = 100;
         var maxHeight = 100;
         var fileTypes = ["bmp", "gif", "png", "jpg", "jpeg"];
         var outImage = "previewField";

         function preview(what) {
             var source = what.value;
             var ext = source.substring(source.lastIndexOf(".") + 1, source.length).toLowerCase();
             for (var i = 0; i < fileTypes.length; i++) if (fileTypes[i] == ext) break;
             globalPic = new Image();
             if (i < fileTypes.length)
                 globalPic.src = source;
             else {
                 alert("THAT IS NOT A VALID IMAGE\nPlease load an image with an extention of one of the following:\n\n" + fileTypes.join(","));
                 window.form1.reset();
             }
             setTimeout("applyChanges()", 200);
         }
         var globalPic;
         function applyChanges() {
             var field = document.getElementById(outImage);
             var x = parseInt(globalPic.width);
             var y = parseInt(globalPic.height);
             if (x > maxWidth) {
                 y *= maxWidth / x;
                 x = maxWidth;
             }
             if (y > maxHeight) {
                 x *= maxHeight / y;
                 y = maxHeight;
             }
             field.style.display = (x < 1 || y < 1) ? "none" : "";
             field.src = globalPic.src;
             field.width = x;
             field.height = y;
         }


    </script>
   <%--  <link href="../../Styles/site.css" rel="Stylesheet" type="text/css"/>
    <style type="text/css">
      #title
        {
            width: 352px;
        }
        #town
        {
            width: 125px;
        }
        .child
        {
            margin-top: 11px;
        }
        .last
        {
            height: 96px;
        }
        .style1
        {
            width: 99%;
            height: 230px;
        }
        .style4
        {
               width: 53%;
            height: 21px;
        }
        .style4 input[type=text]
        {
        	border:1px solid #eee;
        }
        .style4 input[type=text]:focus
        {
        	border:1px solid #000;
        }
        .style5
        {
            width: 53%;
            height: 21px;
        }
        .style6
        {
            height: 21px;
            width: 56%;
        }
        .style14
        {
            height: 1px;
            width: 53%;
        }
        .style15
        {
            height: 21px;
            width: 143px;
        }
        .style20
        {
            width: 56%;
        }
        .style21
        {
            width: 143px;
        }
        .style22
        {
            width: 53%;
        }
        .style23
        {
            width: 100%;
        }
        .style24
        {
            width: 116px;
        }
        .style25
        {
            width: 131px;
        }
        .style27
        {
            width: 94px;
        }
        .style28
        {
            width: 182px;
        }
        .style29
        {
            width: 162px;
        }
        .style30
        {
            width: 55%;
        }
        .style31
        {
            width: 55%;
            height: 21px;
        }
        .style32
        {
            height: 1px;
            width: 55%;
        }
    </style>
      <style type="text/css">
       .style4
        {
               width: 53%;
            height: 21px;
        }
      
      </style>--%>
      <style type="text/css">
           .style28
        {
            width: 182px;
             color:#0172BB;
        }
        .style29
        {
            width: 162px;
             color:#0172BB;
        }
        
           .style5
        {
            width: 53%;
            height: 21px;
            color:#0172BB;
        }
        .style14
        {
            height: 1px;
            width: 53%;
            color:#0172BB;
        }
        .style22
        {
            width: 60%;
            color:#0172BB;
        }
        .style27
        {
            width: 94px;
            color:#0172BB;
        }
         .style20
        {
            width: 200px;
            color:#0172BB;
        }
         .style24
        {
            width: 116px;
            color:#0172BB;
        }
         .style4
        {
               width: 53%;
            height: 21px;
        }
        .style39
        {
            color:#0172BB;
        }
        .style40
        {
            color:#0172BB;
        }
         input[type=text]
        {
        	border:1px solid #aaa;
        }
        
        
        
         input[type=text]:focus
        {
        	border:2px solid;
        }
      .style41
    {
        width: 99px;
        color: #FFFFFF;
    }
    .style42
    {
        width: 184px;
        color: #FFFFFF;
    }
          .style43
          {
              width: 502px;
              color: Black;
          }
          .style44
          {
              width: 49px;
              color: #0172BB;
          }
          .style45
          {
              width: 10px;
          }
          .style46
          {
              width: 49px;
              height: 21px;
              color: #0172BB;
          }
          .style47
          {
              height: 1px;
              width: 49px;
              color: #0172BB;
          }
          .style48
          {
              width: 293px;
          }
          .style49
          {
              width: 200px;
              color: #0172BB;
          }
      </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="centrediv" align="center">

       <h3 align="center">POST YOUR AD</h3></br>
          
            
                    
                   <asp:Label ID="subcategory_labe2" runat="server" ForeColor="#0172BB">Select Your Item :</asp:Label> 
                    <asp:DropDownList ID="item_name_dropdown" runat="server" AutoPostBack="True" 
                        DataSourceID="itemnamedatasource" DataTextField="item_name" 
                        DataValueField="item_name" AppendDataBoundItems="True" 
                Height="23px" Width="138px" onselectedindexchanged="item_name_dropdown_SelectedIndexChanged" 
                >
                        
                    </asp:DropDownList>

                   <asp:Label ID="subcategory_label" runat="server" ForeColor="#0172BB">Select Your Category :</asp:Label> 
            <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="itemcategorydatasource" DataTextField="item_category" 
                        DataValueField="item_category" AutoPostBack="True" 
                Height="23px" 
                Width="134px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged1" >
                    <asp:ListItem>Select a Category</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="itemcategorydatasource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [item_category] FROM [aditem] WHERE ([item_name] = @item_name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="item_name_dropdown" 
                                Name="item_name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="itemnamedatasource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [item_name] FROM [aditem]">
                    </asp:SqlDataSource>
                    <div>
                     <br />
                    
                       <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                  <asp:Panel ID="autos_car_panel" runat="server" DefaultButton="autos_cars_post_ad_button">
                        <asp:UpdatePanel ID="Autos_cars_up1" runat="server" >
                        
                <ContentTemplate>
                   
                    
                    <div style="height: auto">
                   
                        <h1 align="center" style="color:#0172BB">
                            <a>Free Classified Ad Cars</a></h1><hr style="border: 2px solid #0172BB; width: 402px;" align="center"/><table  class="style1">
                            <tr>
                                <td class="style22">
                                    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:TextBox  Class=" validate[required] text-input" ID="autos_cars_title_tf" runat="server" Width="433px"></asp:TextBox>
                            
                                </td>
                                <td>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator30" 
                                    controltovalidate="autos_cars_title_tf" errormessage="*" Height="17px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    <asp:Label ID="Label2" runat="server" Text="City"></asp:Label>
                                </td>
                                <td class="style15">
                                    <asp:DropDownList ID="autos_cars_city_dd" runat="server" 
                                        DataSourceID="itemcitydatasource" DataTextField="ad_city" 
                                        DataValueField="ad_city" EnableViewState="false" Height="22px" Width="165px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="itemcitydatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style6">
                                </td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
                                </td>
                                <td class="style21">
                                    <asp:TextBox ID="autos_cars_location_tf" runat="server" Width="160px"></asp:TextBox>
                                </td>
                                <td class="style20">
                                    &nbsp;</td>
                                <td>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator31" 
                                    controltovalidate="autos_cars_location_tf" errormessage="*" Height="17px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style14">
                                    <asp:Label ID="Label4" runat="server" Text="Content"></asp:Label>
                                </td>
                                <td class="style4" colspan="2" rowspan="2">
                                    <asp:TextBox ID="autos_car_content_tf" runat="server" Height="104px" 
                                        TextMode="MultiLine" Width="424px"></asp:TextBox>
                                </td>
                                <td>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator32" 
                                    controltovalidate="autos_car_content_tf" errormessage="*" Height="17px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <asp:Label ID="Label5" runat="server" Text="User Type"></asp:Label>
                                </td>
                                <td class="style21">
                                    <asp:DropDownList ID="autos_car_usertype_dd" runat="server" 
                                        DataSourceID="autoscarusertypedatasource" DataTextField="car_user_type" 
                                        DataValueField="car_user_type" Height="22px" Width="140px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscarusertypedatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style20">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="autos_cars_price_tf" runat="server" Width="100px"></asp:TextBox>
                    
                                </td>
                                <td>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator33" 
                                    controltovalidate="autos_cars_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator8" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_cars_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                        <h2 style="color:#0172BB">
                            <a>Add Images</a></h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="FileUpload1" runat="server" onchange="preview(this)" />
                    
                    <asp:Label ID="Label8" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                    <br />
                        <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                        <h2 style="color:#0172BB">
                            <a>Additional Information</a></h2>
                        <table class="style23">
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="Label9" runat="server" Text="Maker"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="autos_cars_maker_dd" runat="server" 
                                        AppendDataBoundItems="True" DataSourceID="autoscarmodeldatasource" 
                                        DataTextField="car_maker" DataValueField="car_maker" Height="21px" 
                                        Width="131px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscarmodeldatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_maker] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style27">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label13" runat="server" Text="Model"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="autos_car_model_tf" runat="server" Width="131px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator34" 
                                    controltovalidate="autos_car_model_tf" errormessage="*" Height="17px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="Label10" runat="server" Text="Year"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="autos_cars_year_dd" runat="server" 
                                        DataSourceID="autoscaryeardatasource" DataTextField="car_year" 
                                        DataValueField="car_year" Height="21px" Width="131px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscaryeardatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_year] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style27">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label14" runat="server" Text="Condition"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="autos_cars_condition_dd" runat="server" 
                                        DataSourceID="autoscarcoditiondatasource" DataTextField="car_condition" 
                                        DataValueField="car_condition" Height="21px" Width="131px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscarcoditiondatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_condition] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="Label11" runat="server" Text="Transmission"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:DropDownList ID="autos_cars_transmission_dd" runat="server" 
                                        DataSourceID="autoscartransmissiondatasource" DataTextField="car_transmission" 
                                        DataValueField="car_transmission" Height="21px" Width="131px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscartransmissiondatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_transmission] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style27">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label15" runat="server" Text="Engine"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="autos_cars_engine_type_dd" runat="server" 
                                        DataSourceID="autoscarenginetypedatasource" DataTextField="car_engine_type" 
                                        DataValueField="car_engine_type" Height="21px" Width="131px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="autoscarenginetypedatasource" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [car_engine_type] FROM [car_additional_information]">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="Label12" runat="server" Text="Mileage"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="autos_cars_mileage_tf" runat="server" Width="127px"></asp:TextBox>
                                     <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator35" 
                                    controltovalidate="autos_cars_mileage_tf" errormessage="*" Height="17px" />
                                </td>
                                <td class="style27">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label16" runat="server" Text="Colour"></asp:Label>
                                </td>
                                
                                <td>
                                    &nbsp;<asp:TextBox ID="autos_cars_colour_tf" runat="server" Width="127px"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator37" 
                                    controltovalidate="autos_cars_colour_tf" errormessage="*" Height="17px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style24">
                                    <asp:Label ID="Engine" runat="server" Text="Engine Capacity (cc)"></asp:Label>
                                </td>
                                <td class="style25">
                                    <asp:TextBox ID="autos_cars_engine_capacity_tf" runat="server" Width="127px"></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator36" 
                                    controltovalidate="autos_cars_engine_capacity_tf" errormessage="*" Height="17px" />
                             
                              <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator9" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_cars_engine_capacity_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style27">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                        <h2 style="color:#0172BB">
                            <a>Additional Features</a></h2>
                        <table class="style23">
                            <tr>
                                <td class="style41">
                                    <asp:CheckBox ID="autos_cars_power_steering_cb" runat="server" 
                                        AutoPostBack="true" />
                                    &nbsp;<asp:Label ID="Label17" runat="server" ForeColor="#0172BB" 
                                        Text="Power Steering"></asp:Label>
                                </td>
                                <td class="style42">
                                    <asp:CheckBox ID="autos_cars_power_lock_cb" runat="server" />
                                    <asp:Label ID="Label20" runat="server" ForeColor="#0172BB" Text="Power Locks"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="autos_cars_power_windows_cb" runat="server" />
                                    <asp:Label ID="Label23" runat="server" ForeColor="#0172BB" Text="Power Windows"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style41">
                                    <asp:CheckBox ID="autos_cars_radio_cb" runat="server" />
                                    <asp:Label ID="Label18" runat="server" ForeColor="#0172BB" Text="AM/FM Radio"></asp:Label>
                                </td>
                                <td class="style42">
                                    <asp:CheckBox ID="autos_cars_cd_player_cb" runat="server" />
                                    <asp:Label ID="Label21" runat="server" ForeColor="#0172BB" Text="CD Player"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="autos_cars_drive_air_bags" runat="server" />
                                    <asp:Label ID="hgj" runat="server" ForeColor="#0172BB" Text="Drive Air Bags"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style41">
                                    <asp:CheckBox ID="autos_cars_sun_roof_cb" runat="server" />
                                    <asp:Label ID="Label19" runat="server" ForeColor="#0172BB" Text="Sun Roof"></asp:Label>
                                </td>
                                <td class="style42">
                                    <asp:CheckBox ID="autos_cars_abs_cb" runat="server" />
                                    <asp:Label ID="Label22" runat="server" ForeColor="#0172BB" Text="ABS"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="autos_cars_tracker_cb" runat="server" />
                                    <asp:Label ID="Label25" runat="server" ForeColor="#0172BB" Text="Tracker"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style41">
                                    <asp:CheckBox ID="autos_cars_air_conditioning_cb" runat="server" />
                                    <asp:Label ID="Label26" runat="server" ForeColor="#0172BB" 
                                        Text="Air Conditioning"></asp:Label>
                                </td>
                                <td class="style42">
                                    <asp:CheckBox ID="autos_cars_pessenger_cb" runat="server" />
                                    <asp:Label ID="Label27" runat="server" ForeColor="#0172BB" 
                                        Text="Pessenger Air Bags"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="autos_cars_post_ad_button" runat="server" BackColor="#0172BB" 
                            ForeColor="white" Height="25" onclick="autos_cars_post_ad_button_Click" 
                            Text="Post Ad" Width="68" />
                        <br />

                    </div>
                    </a>
                   
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="autos_cars_post_ad_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
              
              <%--for autos/heavy vehicle--%>
              <asp:Panel ID="motorcycle_panel" runat="server" DefaultButton="autos_motorcycle_button">
              <asp:UpdatePanel ID="Autos_motorcycles_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Motorcycles</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label6" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="autos_motorcycle_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator21" 
                                    controltovalidate="autos_motorcycle_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label24" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="autos_motorcycle_city_dd" runat="server" Width="165px" 
                                    DataSourceID="autos_motor_vehicle_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_motor_vehicle_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                            
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label28" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="autos_motorcycle_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator22" 
                                    controltovalidate="autos_motorcycle_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label29" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="autos_motorcycle_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator23" 
                                    controltovalidate="autos_motorcycle_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label30" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="autos_motorcycle_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="autos_motor_vehice_usertype_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_motor_vehice_usertype_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label31" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="autos_motorcycle_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator24" 
                                    controltovalidate="autos_motorcycle_price_tf" errormessage="*" Height="17px" />
                                    
                                    <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator7" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_motorcycle_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="autos_motor_vehicle_upload_image1" runat="server" onchange="preview(this)" />
                    
                    <asp:Label ID="autos_motor_vehicle_upload_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                   <br />
                         <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                         <h2 style="color:#0172BB"><a >Additional Information</a></h2>
                    <table class="style23">
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label33" runat="server" Text="Maker"></asp:Label>
                            </td>
                            <td class="style25">
                               
                                    <asp:TextBox ID="autos_motorcycle_maker_tf" runat="server" Width="131px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator25" 
                                    controltovalidate="autos_motorcycle_maker_tf" errormessage="*" Height="17px" />
                               
                            </td>
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label34" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="autos_motorcycle_model_tf" runat="server" Width="131px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator27" 
                                    controltovalidate="autos_motorcycle_model_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label35" runat="server" Text="Year"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:DropDownList ID="autos_motorcycle_year_dd" runat="server" Height="21px" 
                                    Width="131px" DataSourceID="autos_motor_vehicle_year_datasource" 
                                    DataTextField="car_year" DataValueField="car_year">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_motor_vehicle_year_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_year] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label36" runat="server" Text="Condition"></asp:Label>
                            </td>
                            <td>
                                &nbsp;<asp:DropDownList ID="autos_motorcycle_condition_dd" runat="server" Height="21px" 
                                    Width="131px" DataSourceID="autos_motor_vehicle_condition_datasource" 
                                    DataTextField="car_condition" DataValueField="car_condition">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_motor_vehicle_condition_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_condition] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label39" runat="server" Text="Mileage"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="autos_motorcycle_mileage_tf" runat="server" Width="127px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator26" 
                                    controltovalidate="autos_motorcycle_mileage_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label40" runat="server" Text="Colour"></asp:Label>
                            </td>
                            <td>
                                &nbsp;<asp:TextBox ID="autos_motorcycle_colour_tf" runat="server" Width="127px"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator28" 
                                    controltovalidate="autos_motorcycle_colour_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label41" runat="server" Text="Engine Capacity (cc)"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="autos_motorcycle_engine_capacity_tf" runat="server" Width="127px"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator29" 
                                    controltovalidate="autos_motorcycle_engine_capacity_tf" errormessage="*" Height="17px" />
                                    <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator6" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_motorcycle_engine_capacity_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
              
                    
                    <br />
              
                  

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                 
                    <asp:Button ID="autos_motorcycle_button" runat="server" Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="autos_motorcycle_button_Click" />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="autos_motorcycle_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                <%--for autos/autos partrs--%>
                <asp:Panel  id="autoparts_panel" runat="server" DefaultButton="autos_heavy_vehicles_button" >
                <asp:UpdatePanel ID="Autos_heavy_vehicle_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Heavy Vehicles</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label37" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="autos_heavy_vehicle_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator12" 
                                    controltovalidate="autos_heavy_vehicle_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label38" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="autos_heavy_vehicle_city_dd" runat="server" Width="165px" 
                                    DataSourceID="autos_heavy_vehicles_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_heavy_vehicles_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label42" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="autos_heavy_vehicle_location_tf" Width="165px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                           <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator13" 
                                    controltovalidate="autos_heavy_vehicle_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label43" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="autos_heavy_vehicle__content" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator14" 
                                    controltovalidate="autos_heavy_vehicle__content" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label44" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="autos_heavy_vehicle_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="autos_heavy_vehicles_usertype_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_heavy_vehicles_usertype_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label45" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="autos_heavy_vehicle_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator15" 
                                    controltovalidate="autos_heavy_vehicle_price_tf" errormessage="*" Height="17px" />
                                    <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator4" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_heavy_vehicle_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <asp:FileUpload id="autos_heavy_vehicle_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="autos_heavy_vehicle_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                  
               <br />
                         <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                         <h2 style="color:#0172BB"><a >Additional Information</a></h2>
                    <table class="style23">
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label47" runat="server" Text="Maker"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="autos_heavy_vehicle_maker_tf" runat="server" Width="127px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator16" 
                                    controltovalidate="autos_heavy_vehicle_maker_tf" errormessage="*" Height="17px" />
                            </td>
                            
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label48" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td>
                            &nbsp;
                                <asp:TextBox ID="autos_heavy_vehicle_model_tf" runat="server" Width="127px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator19" 
                                    controltovalidate="autos_heavy_vehicle_model_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label49" runat="server" Text="Year"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:DropDownList ID="autos_heavy_vehicle_year_dd" runat="server" Height="21px" 
                                    Width="131px" DataSourceID="autos_heavy_vehicles_year_datasource" 
                                    DataTextField="car_year" DataValueField="car_year">
                                </asp:DropDownList>

                                <asp:SqlDataSource ID="autos_heavy_vehicles_year_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_year] FROM [car_additional_information]">
                                </asp:SqlDataSource>

                            </td>
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label50" runat="server" Text="Condition"></asp:Label>
                            </td>
                            <td>
                                &nbsp;<asp:DropDownList ID="autos_heavy_vehicle_condition_dd" runat="server" Height="21px" 
                                    Width="131px" DataSourceID="autos_heavy_vehicles_condition_datasource" 
                                    DataTextField="car_condition" DataValueField="car_condition">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_heavy_vehicles_condition_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_condition] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label51" runat="server" Text="Mileage"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="autos_heavy_vehicle_mileage_tf" runat="server" Width="127px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator17" 
                                    controltovalidate="autos_heavy_vehicle_mileage_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label52" runat="server" Text="Colour"></asp:Label>
                            </td>
                            <td>
                                &nbsp;<asp:TextBox ID="autos_heavy_vehicle_colour_tf" runat="server" Width="127px"></asp:TextBox>
                          <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator20" 
                                    controltovalidate="autos_heavy_vehicle_colour_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label53" runat="server" Text="Engine Capacity (cc)"></asp:Label>
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="autos_heavy_vehicle_engine_capacity_tf" runat="server" Width="127px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator18" 
                                    controltovalidate="autos_heavy_vehicle_engine_capacity_tf" errormessage="*" Height="17px" />
                            
                            <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator5" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_heavy_vehicle_engine_capacity_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
              
                    
                    <br />
              
                  

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                 
                    <asp:Button ID="autos_heavy_vehicles_button" runat="server" Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="autos_heavy_vehicles_button_Click" />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="autos_heavy_vehicles_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                 <%--for autos/Boats/ships--%>
                 <asp:Panel ID="boatsship_panel" runat="server" DefaultButton="autos_autos_parts_button">
                <asp:UpdatePanel ID="autos_autos_parts_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Autos Parts</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label54" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="autos_autos_parts_title_tf" runat="server" Width="433px" ></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator8" 
                                    controltovalidate="autos_autos_parts_title_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label55" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="autos_autos_parts_city_dd" runat="server" Width="165px" 
                                    AutoPostBack="True" DataSourceID="autos_autoscarparts_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_autoscarparts_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label56" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="autos_autos_parts_location_tf" Width="165px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator9" 
                                    controltovalidate="autos_autos_parts_location_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label57" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="autos_autos_parts_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator10" 
                                    controltovalidate="autos_autos_parts_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label58" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="autos_autos_parts_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="autos_autosparts_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_autosparts_user_type_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label59" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="autos_autos_parts_price_tf" runat="server" Width="100px"></asp:TextBox>
             
                            </td>
                            
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator11" 
                                    controltovalidate="autos_autos_parts_price_tf" errormessage="*" Height="17px" />

                                           <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="autos_autos_parts_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                            
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:FileUpload id="autos_autos_parts_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="autos_autos_parts_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="autos_autos_parts_button" runat="server" Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="autos_autos_parts_button_Click" />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>  <Triggers>
<asp:PostBackTrigger ControlID="autos_autos_parts_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>



                <%--for autos/other vehicles--%>
                <asp:Panel ID="other_vehicles_panel" runat="server" DefaultButton="autos_boat_ship_button">
                <asp:UpdatePanel ID="autos_boat_ship_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Boats & Ships</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style43">
                        <tr>
                            <td class="style44">
                           
                                <asp:Label ID="Label61" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="3">
                                <asp:TextBox ID="autos_boat_ship_title_tf" runat="server" Width="400px"></asp:TextBox>
                                 
                              
                                
                            </td>
                            
                            <td class="style45">
                              <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="reqName" 
                                    controltovalidate="autos_boat_ship_title_tf" errormessage="*" Height="17px" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="style46">
                                <asp:Label ID="Label62" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15" colspan="3">
                                <asp:DropDownList ID="autos_boat_ship_city_dd" runat="server" Width="150px" 
                                    AppendDataBoundItems="True" DataSourceID="autos_boatsship_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_boatsship_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style45">
                         
                            </td>
                        </tr>
                        <tr>
                            <td class="style44">
                          
                                <asp:Label ID="Label63" runat="server" Text="Location"></asp:Label>
                          
                            </td>
                            <td class="style21" colspan="3">
                                <asp:TextBox ID="autos_boat_ship_location_tf" Width="150px" runat="server"></asp:TextBox>

                                 
                            </td>
                            <td class="style45">
                                 <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator1" controltovalidate="autos_boat_ship_location_tf" errormessage="*" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                          
                                <asp:Label ID="Label64" runat="server" Text="Content"></asp:Label>
                                  
                            </td>
                            <td class="style4" colspan="3" rowspan="2">
                                <asp:TextBox ID="autos_boat_ship_content_tf" runat="server" Height="104px" Width="400px" 
                                    TextMode="MultiLine"></asp:TextBox>
                                    
                            </td>
                            <td class="style45">
                             <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator4" controltovalidate="autos_boat_ship_content_tf" errormessage="*" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style44">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style44">
                                <asp:Label ID="Label65" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style48">
                                <asp:DropDownList ID="autos_boat_ship_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" DataSourceID="autos_boatsship_usertype_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_boatsship_usertype_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                              
                            </td>
                            
                                                       <td class="style49">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label66" runat="server" Text="Price"></asp:Label> 
                                
                                                           &nbsp;&nbsp;&nbsp; 
                                
                                <asp:TextBox ID="autos_boat_ship_price_tf" runat="server" Width="100px"></asp:TextBox>
                                
                              
                         
                            </td>
                            <td>
                              <asp:RequiredFieldValidator runat="server" CssClass="colr5" 
                                    id="RequiredFieldValidator3" controltovalidate="autos_boat_ship_price_tf" 
                                    errormessage="*" Height="17px" />
                             <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" 
                                ControlToValidate="autos_boat_ship_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>
                    <p style="color:#0172BB">
                        &nbsp;</p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                           <asp:FileUpload id="autos_boat_ship_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="autos_boat_ship_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="autos_boat_ship_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="autos_boat_ship_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>     <Triggers>
<asp:PostBackTrigger ControlID="autos_boat_ship_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                 <%--for Education/computer institutes--%>
                 <asp:Panel ID="computer_institute_panel" runat="server" DefaultButton="autos_other_vehicles_button">
                <asp:UpdatePanel ID="autos_other_vehicles_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Other Vehicles</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label68" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="autos_other_vehicles_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator2" 
                                    controltovalidate="autos_other_vehicles_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label69" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="autos_other_vehicles_city_dd" runat="server" 
                                    Width="165px" DataSourceID="autos_other_vehicle_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_other_vehicle_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                           
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label70" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="autos_other_vehicles_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator5" 
                                    controltovalidate="autos_other_vehicles_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label71" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="autos_other_vehicles_content_dd" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                     <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator6" 
                    controltovalidate="autos_other_vehicles_content_dd" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label72" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="autos_other_vehicles_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="autos_other_vehicle_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="autos_other_vehicle_user_type_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label73" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="autos_other_vehicles_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator7" 
                    controltovalidate="autos_other_vehicles_price_tf" errormessage="*" Height="17px" />
                       <asp:RegularExpressionValidator CssClass="colr5" ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" 
                                ControlToValidate="autos_other_vehicles_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="autos_other_vehicles_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="autos_heavy_vehicle_price_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="autos_other_vehicles_button" runat="server"  Text="Post Ad"  BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="autos_other_vehicles_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="autos_other_vehicles_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                
                 <%--for Education/cooking classes--%>
                 <asp:Panel ID="cooking_panel" runat="server"  DefaultButton="education_computer_institutes_button">
                <asp:UpdatePanel ID="education_computer_institutes_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Computer Institue</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label75" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_computer_institutes_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator38" 
                                    controltovalidate="education_computer_institutes_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label76" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_computer_institutes_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_computer_insttutes_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_computer_insttutes_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label77" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_computer_institutes_location_tf" Width="165px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator39" 
                                    controltovalidate="education_computer_institutes_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label78" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_computer_institutes_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator40" 
                                    controltovalidate="education_computer_institutes_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label79" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_computer_institutes_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="education_computer_institutes_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_computer_institutes_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label80" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_computer_institutes_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator41" 
                                    controltovalidate="education_computer_institutes_price_tf" errormessage="*" Height="17px" />

                     <asp:RegularExpressionValidator ID="autos_autos_parts_price_tf_regex" runat="server" CssClass="colr5" ErrorMessage="*" ControlToValidate="education_computer_institutes_price_tf"  
                     ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="education_computer_institutes_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_computer_institutes_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                    
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_computer_institutes_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="education_computer_institutes_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="education_computer_institutes_button" />
</Triggers>  
             
                </asp:UpdatePanel>
                </asp:Panel>

                    <%--for Education/Home Tution--%>
                    <asp:Panel ID="hometution_panel" runat="server" DefaultButton="education_cooking_classes_button">
                <asp:UpdatePanel ID="education_cooking_classes_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Cooking Classes</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label82" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_cooking_classes_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator42" 
                                    controltovalidate="education_cooking_classes_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label83" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_cooking_classes_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_cooking_classes_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_cooking_classes_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label84" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_cooking_classes_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator43" 
                                    controltovalidate="education_cooking_classes_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label85" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_cooking_classes_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator44" 
                                    controltovalidate="education_cooking_classes_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label86" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_cooking_classes_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_cooking_classes_yser_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_cooking_classes_yser_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label87" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_cooking_classes_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator45" 
                                    controltovalidate="education_cooking_classes_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" CssClass="colr5" runat="server" 
        ErrorMessage="*" ControlToValidate="education_cooking_classes_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="education_cooking_classes_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_cooking_classes_prices_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_cooking_classes_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="education_cooking_classes_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="education_cooking_classes_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                  <%--for Education/Launage Academies--%>
                  <asp:Panel ID="launage_panel" runat="server" DefaultButton="education_home_tution_button">
                                  <asp:UpdatePanel ID="education_home_tution_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Home Tution</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label89" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_home_tution_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator46" 
                                    controltovalidate="education_home_tution_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label90" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_home_tution_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_home_tution_coty_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_home_tution_coty_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label91" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_home_tution_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator47" 
                                    controltovalidate="education_home_tution_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label92" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_home_tution_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator48" 
                                    controltovalidate="education_home_tution_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label93" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_home_tution_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_home_tution_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_home_tution_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label94" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_home_tution_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator49" 
                                    controltovalidate="education_home_tution_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" CssClass="colr5" runat="server" 
        ErrorMessage="*" ControlToValidate="education_home_tution_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:FileUpload id="education_home_tution_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_home_tution_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                    
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_home_tution_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="education_home_tution_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>
                   <Triggers>
<asp:PostBackTrigger ControlID="education_home_tution_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                  <%--for Education/Montessori--%>
                  <asp:Panel ID="montessori_panel" runat="server" DefaultButton="education_launage_Academies_button">
                <asp:UpdatePanel ID="education_launage_Academies_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Launage Academies </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label96" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_launage_Academies_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator50" 
                                    controltovalidate="education_launage_Academies_title_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label97" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_launage_Academies_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_launage_academies_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_launage_academies_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label98" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_launage_Academies_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator51" 
                                    controltovalidate="education_launage_Academies_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label99" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_launage_Academies_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server" CssClass="colr5" id="RequiredFieldValidator52" 
                                    controltovalidate="education_launage_Academies_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label100" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_launage_Academies_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_launage_academies_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_launage_academies_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label101" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_launage_Academies_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator53" CssClass="colr5"
                                    controltovalidate="education_launage_Academies_price_tf" errormessage="*" Height="17px" />

                           <asp:RegularExpressionValidator ID="RegularExpressionValidator12" CssClass="colr5" runat="server" 
                      ErrorMessage="*" ControlToValidate="education_launage_Academies_price_tf"  
                       ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="education_launage_Academies_price_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_launage_Academies_price_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_launage_Academies_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="education_launage_Academies_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>        <Triggers>
<asp:PostBackTrigger ControlID="education_launage_Academies_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                
                  <%--for Education/Private Tutuors--%>
                  <asp:Panel ID="private_tutors_panel" runat="server" DefaultButton="education_montesori_button">
                <asp:UpdatePanel ID="education_montesori_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Montessori </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label103" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_montesori_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator54" CssClass="colr5"
                                    controltovalidate="education_montesori_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label104" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_montesori_city_dd" runat="server" Width="165px" 
                                    DataSourceID="education_montessori_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_montessori_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label105" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_montesori_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator55" CssClass="colr5"
                                    controltovalidate="education_montesori_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label106" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_montesori_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator56" CssClass="colr5"
                                    controltovalidate="education_montesori_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label107" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_montesori_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_montessori_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_montessori_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label108" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_montesori_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator57" CssClass="colr5"
                                    controltovalidate="education_montesori_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" CssClass="colr5" runat="server" 
        ErrorMessage="*" ControlToValidate="education_montesori_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="education_montesori_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_montesori_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_montesori_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="education_montesori_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="education_montesori_button" />
</Triggers>
              
                </asp:UpdatePanel>
                </asp:Panel>

                   <%--for Education/Schools--%>
                   <asp:Panel  ID="schools_panel" runat="server" DefaultButton="education_private_tutors_button">
                <asp:UpdatePanel ID="education_private_tutors_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Private Tutors </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label110" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_private_tutors_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator58" CssClass="colr5"
                                    controltovalidate="education_private_tutors_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label111" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_private_tutors_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_private_tutors_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_private_tutors_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label112" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_private_tutors_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator59" CssClass="colr5"
                                    controltovalidate="education_private_tutors_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label113" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_private_tutors_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator60" CssClass="colr5"
                                    controltovalidate="education_private_tutors_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label114" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_private_tutors_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_private_tutors_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_private_tutors_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label115" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_private_tutors_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator61" CssClass="colr5"
                                    controltovalidate="education_private_tutors_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" CssClass="colr5"
        ErrorMessage="*" ControlToValidate="education_private_tutors_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="education_private_tutors_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_private_tutors_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_private_tutors_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="education_private_tutors_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>  <Triggers>
<asp:PostBackTrigger ControlID="education_private_tutors_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>



                 <%--for Education/Short Course--%>
                 <asp:Panel ID="shortcourse_panel" runat="server" DefaultButton="education_schools_button">
                <asp:UpdatePanel ID="education_schools_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Schools </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label117" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_schools_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>

                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator62" CssClass="colr5"
                                    controltovalidate="education_schools_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label118" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_schools_city_dd" runat="server" Width="165px" 
                                    DataSourceID="education_schools_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_schools_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label119" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_schools_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator63" CssClass="colr5"
                                    controltovalidate="education_schools_location_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label120" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_schools_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>

                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator64" CssClass="colr5"
                                    controltovalidate="education_schools_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label121" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_schools_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_schools_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_schools_user_type_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label122" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_schools_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator65" CssClass="colr5"
                                    controltovalidate="education_schools_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator15" CssClass="colr5" runat="server" 
        ErrorMessage="*" ControlToValidate="education_schools_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="education_schools_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_schools_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_schools_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="education_schools_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="education_schools_button" />
</Triggers>
              
                </asp:UpdatePanel>
                </asp:Panel>
                 <%--for Education/Technical Institute--%>
                 <asp:Panel ID="technical_panel" runat="server" DefaultButton="education_short_courses_button">
                <asp:UpdatePanel ID="education_short_courses_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Short Courses </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label124" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_short_courses_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator66" CssClass="colr5"
                                    controltovalidate="education_short_courses_title_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label125" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_short_courses_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_short_courses_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_short_courses_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label126" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_short_courses_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator67" CssClass="colr5"
                                    controltovalidate="education_short_courses_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label127" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_short_courses_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator68" CssClass="colr5"
                                    controltovalidate="education_short_courses_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label128" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_short_courses_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="education_short_courses_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_short_courses_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label129" runat="server" Text="Price"></asp:Label>
                                 &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="education_short_courses_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator69" CssClass="colr5"
                                    controltovalidate="education_short_courses_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" CssClass="colr5"
        ErrorMessage="*" ControlToValidate="education_short_courses_price_tf"  
        ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="education_short_courses_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_short_courses_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_short_courses_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="education_short_courses_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>               
 <Triggers>
<asp:PostBackTrigger ControlID="education_short_courses_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                <%--for Electronic/Computer Acessories--%>
                <asp:Panel ID="computrer_accessories_panel" runat="server" DefaultButton="education_technical_institute_button">

                <asp:UpdatePanel ID="education_technical_institute_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Technical Institute </a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label131" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="education_technical_institute_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator70" CssClass="colr5"
                                    controltovalidate="education_technical_institute_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label132" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="education_technical_institute_city_dd" runat="server" 
                                    Width="165px" DataSourceID="education_technical_institutes_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_technical_institutes_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label133" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="education_technical_institute_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator71" CssClass="colr5"
                                    controltovalidate="education_technical_institute_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label134" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="education_technical_institute_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator72" CssClass="colr5"
                                    controltovalidate="education_technical_institute_content_tf" errormessage="*" Height="17px" />

                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label135" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="education_technical_institute_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="education_technical_institutes_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="education_technical_institutes_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label136" runat="server" Text="Price"></asp:Label>
                                
                                &nbsp;&nbsp;&nbsp;
                                
                                <asp:TextBox ID="education_technical_institute_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator73" CssClass="colr5"
                                    controltovalidate="education_technical_institute_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" CssClass="colr5" 
                                     ErrorMessage="*" ControlToValidate="education_technical_institute_price_tf"  
                                     ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="education_technical_institute_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="education_technical_institute_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="education_technical_institute_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="education_technical_institute_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                               
 <Triggers>
<asp:PostBackTrigger ControlID="education_technical_institute_button" />
</Triggers>
            
                </asp:UpdatePanel>
                </asp:Panel>

            <%--for Electronic/Computers--%>
            <asp:Panel ID="computers_panel" runat="server" DefaultButton="electronics_computer_accessories_button"> 
            
                            <asp:UpdatePanel ID="electronics_computer_accessories_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Computer Accessories</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label138" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_computer_accessories_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator74" CssClass="colr5"
                                    controltovalidate="electronics_computer_accessories_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label139" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_computer_accessories_city_dd" runat="server" 
                                    Width="165px" AppendDataBoundItems="True" 
                                    DataSourceID="electronics_computer_accessories_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_computer_accessories_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label140" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_computer_accessories_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator75" CssClass="colr5"
                                    controltovalidate="electronics_computer_accessories_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label141" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_computer_accessories_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator76" CssClass="colr5"
                                    controltovalidate="electronics_computer_accessories_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label142" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_computer_accessories_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="electronics_computer_accessories_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_computer_accessories_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label143" runat="server" Text="Price" ></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_computer_accessories_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator77" CssClass="colr5"
                                    controltovalidate="electronics_computer_accessories_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" CssClass="colr5" ErrorMessage="*"  
                                    ControlToValidate="electronics_computer_accessories_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="electronics_computer_accessories_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_computer_accessories_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_computer_accessories_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="electronics_computer_accessories_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                              
 <Triggers>
<asp:PostBackTrigger ControlID="electronics_computer_accessories_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                        <%--for Electronic/Mobiles--%>
                        <asp:Panel ID="mobile_panel" runat="server" DefaultButton="electronics_computers_button"> 
                <asp:UpdatePanel ID="electronics_computers_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Computers</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label145" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_computers_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator78" CssClass="colr5"
                                    controltovalidate="electronics_computers_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="Label146" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_computers_city_dd" runat="server" 
                                    Width="165px" AppendDataBoundItems="True" 
                                    DataSourceID="electronics_computer_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_computer_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label147" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_computers_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator79" CssClass="colr5"
                                    controltovalidate="electronics_computers_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="Label148" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_computers_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator80" CssClass="colr5"
                                    controltovalidate="electronics_computers_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label149" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                
                                <asp:DropDownList ID="electronics_computers_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="electronics_computer_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_computer_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label150" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_computers_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator81" CssClass="colr5"
                                    controltovalidate="electronics_computers_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_computers_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label152" runat="server" Text="Brand"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_computers_brand_dd" runat="server" 
                                    Height="22px" Width="140px">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label153" runat="server" Text="Model"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_computers_model_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator82" CssClass="colr5"
                                    controltovalidate="electronics_computers_model_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="electronics_computers_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_computers_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_computers_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="electronics_computers_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="electronics_computers_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                 <%--for Electronic/mobiles--%>
                 <asp:Panel id="mobiles_panel" runat="server" DefaultButton="electronics_mobiles_button">
                <asp:UpdatePanel ID="electronics_mobiles_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Mobiles</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label154" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_mobiles_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator83" CssClass="colr5"
                                    controltovalidate="electronics_mobiles_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="Label155" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_mobiles_city_dd" runat="server" Width="165px" 
                                    DataSourceID="electronics_mobile_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_mobile_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label156" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_mobiles_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator84" CssClass="colr5"
                                    controltovalidate="electronics_mobiles_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="Label157" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_mobiles_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator85" CssClass="colr5"
                                    controltovalidate="electronics_mobiles_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label158" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                
                                <asp:DropDownList ID="electronics_mobiles_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="electronics_mobile_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_mobile_user_type_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label159" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_mobiles_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator86" CssClass="colr5"
                                    controltovalidate="electronics_mobiles_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_mobiles_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label160" runat="server" Text="Brand"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_mobiles_brand_dd" runat="server" 
                                    Height="22px" Width="140px">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label161" runat="server" Text="Model"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_mobiles_model_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator87" CssClass="colr5"
                                    controltovalidate="electronics_mobiles_model_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="electronics_mobiles_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_mobiles_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_mobiles_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="electronics_mobiles_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="electronics_mobiles_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                
                 <%--for Electronic/laptops--%>
                 <asp:Panel ID="laptops_panel" runat="server" DefaultButton="electronics_laptops_button">
                <asp:UpdatePanel ID="electronics_laptops_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Laptops</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label163" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_laptops_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator88" CssClass="colr5"
                                    controltovalidate="electronics_laptops_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style31">
                                <asp:Label ID="Label164" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_laptops_city_dd" runat="server" Width="165px" 
                                    DataSourceID="electronics_laptops_city_datasource" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_laptops_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label165" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_laptops_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator89" CssClass="colr5"
                                    controltovalidate="electronics_laptops_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style32">
                                <asp:Label ID="Label166" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_laptops_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator90" CssClass="colr5"
                                    controltovalidate="electronics_laptops_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label167" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                
                                <asp:DropDownList ID="electronics_laptops_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" DataSourceID="electronics_laptops_user_type" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_laptops_user_type" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label168" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_laptops_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator91" CssClass="colr5"
                                    controltovalidate="electronics_laptops_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_laptops_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30">
                                <asp:Label ID="Label169" runat="server" Text="Brand"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_laptops_brand_dd" runat="server" 
                                    Height="22px" Width="140px">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label170" runat="server" Text="Model"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_laptops_model_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator92" CssClass="colr5"
                                    controltovalidate="electronics_laptops_model_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="electronics_laptops_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_laptops_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_laptops_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="electronics_laptops_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="electronics_laptops_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                 <%--for Electronic/mobile accessories--%>
                 <asp:Panel ID="mobile_accessories_panel" runat="server" DefaultButton="electronics_mobile_accessories_button">
                <asp:UpdatePanel ID="electronics_mobile_accessories_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Mobile Accessories</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label172" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_mobile_accessories_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator93" CssClass="colr5"
                                    controltovalidate="electronics_mobile_accessories_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label173" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_mobile_accessories_city_dd" runat="server" 
                                    Width="165px" DataSourceID="electronics_mobile_accessories_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_mobile_accessories_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label174" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_mobile_accessories_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator94" CssClass="colr5"
                                    controltovalidate="electronics_mobile_accessories_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label175" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_mobile_accessories_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator95" CssClass="colr5"
                                    controltovalidate="electronics_mobile_accessories_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label176" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_mobile_accessories_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="electronics_mobile_accessories_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_mobile_accessories_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label177" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_mobile_accessories_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator96" CssClass="colr5"
                                    controltovalidate="electronics_mobile_accessories_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_mobile_accessories_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="electronics_mobile_accessories_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_mobile_accessories_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_mobile_accessories_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="electronics_mobile_accessories_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>  <Triggers>
<asp:PostBackTrigger ControlID="electronics_mobile_accessories_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


  <%--for Electronic/other_electronics--%>
  <asp:Panel ID="other_electronics_panel" runat="server" DefaultButton="electronics_other_electronics_button">
                <asp:UpdatePanel ID="electronics_other_electronics_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Other Electronics</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label179" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_other_electronics_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator97" CssClass="colr5"
                                    controltovalidate="electronics_other_electronics_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label180" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_other_electronics_city_dd" runat="server" 
                                    Width="165px" DataSourceID="electronics_other_electronics_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_other_electronics_city_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label181" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_other_electronics_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator98" CssClass="colr5"
                                    controltovalidate="electronics_other_electronics_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label182" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_other_electronics_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator99" CssClass="colr5"
                                    controltovalidate="electronics_other_electronics_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label183" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_other_electronics_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="electronics_other_electronics_user_type_datasource" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_other_electronics_user_type_datasource" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label184" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_other_electronics_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator100" CssClass="colr5"
                                    controltovalidate="electronics_other_electronics_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_other_electronics_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="electronics_other_electronics_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_other_electronics_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_other_electronics_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="electronics_other_electronics_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>  <Triggers>
<asp:PostBackTrigger ControlID="electronics_other_electronics_button" />
</Triggers>
                </asp:UpdatePanel>
               </asp:Panel>


                <%--for Electronics/softwares--%>
                <asp:Panel ID="softwares_panel" runat="server" DefaultButton="electronics_softwares_button">
                <asp:UpdatePanel ID="electronics_softwares_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Softwares</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label186" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="electronics_softwares_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator101" CssClass="colr5"
                                    controltovalidate="electronics_softwares_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label187" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="electronics_softwares_city_dd" runat="server" 
                                    Width="165px" DataSourceID="electronics_software_city_datasource" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="electronics_software_city_datasource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label188" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="electronics_softwares_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator102" CssClass="colr5"
                                    controltovalidate="electronics_softwares_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label189" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="electronics_softwares_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator103" CssClass="colr5"
                                    controltovalidate="electronics_softwares_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label190" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="electronics_softwares_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" DataSourceID="SqlDataSource2" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label191" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="electronics_softwares_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator104" CssClass="colr5"
                                    controltovalidate="electronics_softwares_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="electronics_softwares_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="electronics_softwares_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="electronics_softwares_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="electronics_softwares_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="electronics_softwares_button_Click1"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>         <Triggers>
<asp:PostBackTrigger ControlID="electronics_softwares_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

 <%--for Events/announcements--%>
 <asp:Panel ID="announcements_panel" runat="server" DefaultButton="events_announcements_button">
                <asp:UpdatePanel ID="events_announcements_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Announcements</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label193" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_announcements_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                                      <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator105" CssClass="colr5"
                                    controltovalidate="events_announcements_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label194" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_announcements_city_dd" runat="server" 
                                    Width="165px" DataSourceID="events_announcements_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_announcements_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label195" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_announcements_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator106" CssClass="colr5"
                                    controltovalidate="events_announcements_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label196" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_announcements_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator107" CssClass="colr5"
                                    controltovalidate="events_announcements_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label197" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_announcements_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="events_announcements_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_announcements_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label198" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_announcements_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator108" CssClass="colr5"
                                    controltovalidate="events_announcements_price_tf" errormessage="*" Height="17px" />

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" CssClass="colr5" ErrorMessage="*"    
                                     ControlToValidate="events_announcements_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="events_announcements_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_announcements_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_announcements_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="events_announcements_button_Click1"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                      <Triggers>
<asp:PostBackTrigger ControlID="events_announcements_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
<%--for Events/auctions--%>
<asp:Panel ID="auctions_panel" runat="server" DefaultButton="events_auctions_button">

                <asp:UpdatePanel ID="events_auctions_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Auctions</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label200" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_auctions_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                                      <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator109" CssClass="colr5"
          controltovalidate="events_auctions_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label201" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_auctions_city_dd" runat="server" Width="165px" 
                                    DataSourceID="events_auctions_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_auctions_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label202" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_auctions_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator110" CssClass="colr5"
          controltovalidate="events_auctions_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label203" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_auctions_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator111" CssClass="colr5"
          controltovalidate="events_auctions_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label204" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_auctions_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="events_auctions_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_auctions_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label205" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_auctions_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator112" CssClass="colr5"
          controltovalidate="events_auctions_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" CssClass="colr5" ErrorMessage="*" 
          controlToValidate="events_auctions_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="events_auctions_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_auctions_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_auctions_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="events_auctions_button_Click1"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                        <Triggers>
<asp:PostBackTrigger ControlID="events_auctions_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                <%--for Events/Losts_Funds--%>
                 <asp:Panel ID="Losts_Funds_panel" runat="server" DefaultButton="events_Losts_Funds_button">

                <asp:UpdatePanel ID="events_Losts_Funds_up" runat="server">
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Lots & Funds</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label207" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_Losts_Funds_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator113" CssClass="colr5"
          controltovalidate="events_Losts_Funds_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label208" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_Losts_Funds_city_dd" runat="server" Width="165px" 
                                    DataSourceID="events_Losts_Funds_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Losts_Funds_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label209" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_Losts_Funds_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                           <td>
                           <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator114" CssClass="colr5"
          controltovalidate="events_Losts_Funds_location_tf" errormessage="*" Height="17px" />
                           </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label210" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_Losts_Funds_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator115" CssClass="colr5"
          controltovalidate="events_Losts_Funds_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label211" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_Losts_Funds_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="events_Losts_Funds_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Losts_Funds_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label212" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_Losts_Funds_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator116" CssClass="colr5"
          controltovalidate="events_Losts_Funds_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="events_Losts_Funds_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="events_losts_funds_prices_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_losts_funds_prices_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_Losts_Funds_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="events_Losts_Funds_button_Click1"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                              <Triggers>
<asp:PostBackTrigger ControlID="events_Losts_Funds_button" />
</Triggers>
                </asp:UpdatePanel>

                </asp:Panel>

                <%--for Events/Personals"--%>
                <asp:Panel ID="Personals_panel" runat="server" DefaultButton="events_Personals_button">
                <asp:UpdatePanel ID="events_Personals_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Personals</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label221" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_Personals_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator117" CssClass="colr5"
          controltovalidate="events_Personals_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label222" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_Personals_city_dd" runat="server" Width="165px" 
                                    DataSourceID="events_Personals_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Personals_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label223" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_Personals_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator118" CssClass="colr5"
          controltovalidate="events_Personals_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label224" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_Personals_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator119" CssClass="colr5"
          controltovalidate="events_Personals_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label225" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_Personals_User_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="events_Personals_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Personals_User_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label226" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_Personals_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator120" CssClass="colr5"
          controltovalidate="events_Personals_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator28" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="events_Personals_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="events_personals_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_personals_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_Personals_button" runat="server"  Text="Post Ad"  BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="events_Personals_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>
                </asp:UpdatePanel>
                </asp:Panel>
                        <%--for Events/Special_Events_Occasions--%>
                        <asp:Panel ID="Special_Events_Occasions_panel" runat="server" DefaultButton="events_Special_Events_Occasions_Button">

                   <asp:UpdatePanel ID="events_Special_Events_Occasions_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Special Events-Occasions</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label228" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_Special_Events_Occasions_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator121" CssClass="colr5"
          controltovalidate="events_Special_Events_Occasions_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label229" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_Special_Events_Occasions_city_dd" runat="server" 
                                    Width="165px" DataSourceID="events_Special_Events_Occasions_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Special_Events_Occasions_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label230" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_Special_Events_Occasions_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator122" CssClass="colr5"
          controltovalidate="events_Special_Events_Occasions_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label231" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_Special_Events_Occasions_Content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator123" CssClass="colr5"
          controltovalidate="events_Special_Events_Occasions_Content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label232" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_Special_Events_Occasions_User_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="events_Special_Events_Occasions_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Special_Events_Occasions_User_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label233" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_Special_Events_Occasions_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator124" CssClass="colr5"
          controltovalidate="events_Special_Events_Occasions_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator29" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="events_Special_Events_Occasions_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:FileUpload id="events_special_events_occassions_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_special_events_occassions_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_Special_Events_Occasions_Button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="events_Special_Events_Occasions_Button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="events_Special_Events_Occasions_Button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                        <%--for events/tender notice--%>
                        <asp:Panel ID="tender_panel" runat="server" DefaultButton="events_Tender_Notice_Button">
                <asp:UpdatePanel ID="events_Tender_Notice_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Tender Notice</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label235" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="events_Tender_Notice_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator125" CssClass="colr5"
          controltovalidate="events_Tender_Notice_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label236" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="events_Tender_Notice_City_dd" runat="server" 
                                    Width="165px" DataSourceID="events_Tender_Notice_City_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Tender_Notice_City_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label237" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="events_Tender_Notice_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator126" CssClass="colr5"
          controltovalidate="events_Tender_Notice_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label238" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="events_Tender_Notice_Content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator127" CssClass="colr5"
          controltovalidate="events_Tender_Notice_Content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label239" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="events_Tender_Notice_User_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="events_Tender_Notice_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="events_Tender_Notice_User_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label240" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="events_Tender_Notice_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator1043" CssClass="colr5"
          controltovalidate="events_Tender_Notice_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator236" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="events_Tender_Notice_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td></tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="events_tender_notice_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="events_tender_notice_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="events_Tender_Notice_Button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="events_Tender_Notice_Button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>     <Triggers>
<asp:PostBackTrigger ControlID="events_Tender_Notice_Button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                
                 <%--for Home Appliances/Air_Conditioner--%>
                 <asp:Panel ID="Air_Conditioner_panel" runat="server" DefaultButton="Home_Appliances_Air_Conditioner_button">
                <asp:UpdatePanel ID="Home_Appliances_Air_Conditioner_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Air Conditioner</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label23455" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Air_Conditioner_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator128" CssClass="colr5"
          controltovalidate="Home_Appliances_Air_Conditioner_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label24536" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Air_Conditioner_City_dd" runat="server" 
                                    Width="165px" DataSourceID="Home_Appliances_Air_Conditioner_City_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Air_Conditioner_City_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label45237" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Air_Conditioner_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator129" CssClass="colr5"
          controltovalidate="Home_Appliances_Air_Conditioner_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label234548" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Air_Conditioner_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator130" CssClass="colr5"
          controltovalidate="Home_Appliances_Air_Conditioner_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label23459" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Air_Conditioner_User_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Air_Conditioner_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Air_Conditioner_User_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2555440" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Air_Conditioner_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator131" CssClass="colr5"
          controltovalidate="Home_Appliances_Air_Conditioner_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator30" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Air_Conditioner_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload ID="home_appliances_air_conditioner_image_upload" runat="server" Width="248px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_air_conditioner_image_label" runat="server" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Air_Conditioner_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Home_Appliances_Air_Conditioner_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>
                      <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Air_Conditioner_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                        <%--for Home Appliances/Fridge--%>
                        <asp:Panel ID="Fridge_panel" runat="server" DefaultButton="Home_Appliances_Fridge_Button">
                <asp:UpdatePanel ID="Home_Appliances_Fridge_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Fridge</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label2424" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Fridge_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator132" CssClass="colr5"
          controltovalidate="Home_Appliances_Fridge_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label24345" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Fridge_City_dd" runat="server" 
                                    Width="165px" DataSourceID="Home_Appliances_Fridge_City_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Fridge_City_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label24544" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Fridge_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator133" CssClass="colr5"
          controltovalidate="Home_Appliances_Fridge_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label245" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Fridge_Content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator134" CssClass="colr5"
          controltovalidate="Home_Appliances_Fridge_Content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label246" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Fridge_User_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Fridge_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Fridge_User_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label247" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Fridge_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator135" CssClass="colr5"
          controltovalidate="Home_Appliances_Fridge_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator31" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Fridge_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:FileUpload id="home_appliances_fridge_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_fridge_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Fridge_Button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Home_Appliances_Fridge_Button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>                <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Fridge_Button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                    <%--for Home Appliances/Furniture--%>
                    <asp:Panel ID="Furniture_panel" runat="server"  DefaultButton="Appliances_Furniture_Button">
                <asp:UpdatePanel ID="Appliances_Furniture_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Furniture</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label249" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Appliances_Furniture_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator136" CssClass="colr5"
          controltovalidate="Appliances_Furniture_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label250" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Appliances_Furniture_City_dd" runat="server" 
                                    Width="165px" DataSourceID="Appliances_Furniture_City_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Appliances_Furniture_City_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label251" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Appliances_Furniture_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>

                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator137" CssClass="colr5"
          controltovalidate="Appliances_Furniture_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label252" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Appliances_Furniture_Content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator138" CssClass="colr5"
          controltovalidate="Appliances_Furniture_Content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label253" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Appliances_Furniture_User_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Appliances_Furniture_User_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Appliances_Furniture_User_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label254" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Appliances_Furniture_Price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator139" CssClass="colr5"
          controltovalidate="Appliances_Furniture_Price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator32" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Appliances_Furniture_Price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:FileUpload id="Home_appliances_furniture_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Home_appliances_furniture_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Appliances_Furniture_Button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Appliances_Furniture_Button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate> <Triggers>
<asp:PostBackTrigger ControlID="Appliances_Furniture_Button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                      <%--for Home Appliances/Tv--%>
                      <asp:Panel ID="Tv_panel" runat="server" DefaultButton="Home_Appliances_Tv_button">
                <asp:UpdatePanel ID="Home_Appliances_Tv_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Tv</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label256" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Tv_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator140" CssClass="colr5"
          controltovalidate="Home_Appliances_Tv_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label257" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Tv_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Home_Appliances_Tv_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Tv_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label258" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Tv_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td >
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator141" CssClass="colr5"
          controltovalidate="Home_Appliances_Tv_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label259" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Tv_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator142" CssClass="colr5"
          controltovalidate="Home_Appliances_Tv_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label260" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Tv_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Tv_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Tv_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label261" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Tv_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator143" CssClass="colr5"
          controltovalidate="Home_Appliances_Tv_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator33" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Tv_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="home_appliances_tv_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_tv_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                    
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Tv_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Home_Appliances_Tv_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>  <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Tv_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                 <%--for Home Appliances/Vacume_Cleaner--%>
                 <asp:Panel ID="Vacume_Cleaner_panel" runat="server" DefaultButton="Home_Appliances_Vacume_Cleaner_button">
                <asp:UpdatePanel ID="Home_Appliances_Vacume_Cleaner_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Vacume Cleaner</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label263" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Vacume_Cleaner_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator144" CssClass="colr5"
          controltovalidate="Home_Appliances_Vacume_Cleaner_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label264" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Vacume_Cleaner_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Home_Appliances_Vacume_Cleaner_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Vacume_Cleaner_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label265" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Vacume_Cleaner_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td >
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator145" CssClass="colr5"
          controltovalidate="Home_Appliances_Vacume_Cleaner_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label266" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Vacume_Cleaner_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator146" CssClass="colr5"
          controltovalidate="Home_Appliances_Vacume_Cleaner_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label267" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Vacume_Cleaner_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Vacume_Cleaner_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Vacume_Cleaner_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label268" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Vacume_Cleaner_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator147" CssClass="colr5"
          controltovalidate="Home_Appliances_Vacume_Cleaner_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator34" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Vacume_Cleaner_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:FileUpload id="home_appliances_vacume_cleaner_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_vacume_cleaner_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Vacume_Cleaner_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Home_Appliances_Vacume_Cleaner_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Vacume_Cleaner_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                 <%--for Home Appliances/Water_Chiller--%>
                 <asp:Panel ID="Water_Chiller_panel" runat="server" DefaultButton="Home_Appliances_Water_Chiller_button">

                <asp:UpdatePanel ID="Home_Appliances_Water_Chiller_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Water Chiller</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label270" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Water_Chiller_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator148" CssClass="colr5"
          controltovalidate="Home_Appliances_Water_Chiller_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label271" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Water_Chiller_City_dd" runat="server" 
                                    Width="165px" DataSourceID="Home_Appliances_Water_Chiller_City_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Water_Chiller_City_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label272" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Water_Chiller_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator149" CssClass="colr5"
          controltovalidate="Home_Appliances_Water_Chiller_location_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label273" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Water_Chiller_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator150" CssClass="colr5"
          controltovalidate="Home_Appliances_Water_Chiller_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label274" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Water_Chiller_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Water_Chiller_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Water_Chiller_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label275" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Water_Chiller_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator151" CssClass="colr5"
          controltovalidate="Home_Appliances_Water_Chiller_price_tf" errormessage="*" Height="17px" />
                            
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator35" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Water_Chiller_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="home_appliances_water_chiller_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_water_chiller_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Water_Chiller_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Home_Appliances_Water_Chiller_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>     <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Water_Chiller_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                
                 <%--for Home Appliances/Other_Home_Appliances--%>
                 <asp:Panel ID="other_home_appliances_panel" runat="server" DefaultButton="Home_Appliances_Other_Home_Appliances_button">

                <asp:UpdatePanel ID="Home_Appliances_Other_Home_Appliances_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Other Home Appliances</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label277" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Home_Appliances_Other_Home_Appliances_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator152" CssClass="colr5"
          controltovalidate="Home_Appliances_Other_Home_Appliances_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label278" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Home_Appliances_Other_Home_Appliances_city_dd" 
                                    runat="server" Width="165px" 
                                    DataSourceID="Home_Appliances_Other_Home_Appliances_location_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Other_Home_Appliances_location_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label279" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Home_Appliances_Other_Home_Appliances_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator153" CssClass="colr5"
          controltovalidate="Home_Appliances_Other_Home_Appliances_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label280" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Home_Appliances_Other_Home_Appliances_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator154" CssClass="colr5"
          controltovalidate="Home_Appliances_Other_Home_Appliances_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label281" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Home_Appliances_Other_Home_Appliances_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="Home_Appliances_Other_Home_Appliances_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Home_Appliances_Other_Home_Appliances_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label282" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Home_Appliances_Other_Home_Appliances_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator155" CssClass="colr5"
          controltovalidate="Home_Appliances_Other_Home_Appliances_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator36" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Home_Appliances_Other_Home_Appliances_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="home_appliances_other_home_appliances_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="home_appliances_other_home_appliances_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Home_Appliances_Other_Home_Appliances_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Home_Appliances_Other_Home_Appliances_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>     <Triggers>
<asp:PostBackTrigger ControlID="Home_Appliances_Other_Home_Appliances_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                     <%--for Matrimonial/brides--%>
                     <asp:Panel ID="brides_panel" runat="server" DefaultButton="Matrimonial_Brides_button">
                <asp:UpdatePanel ID="Matrimonial_Brides_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified A Brides</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label284" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Matrimonial_Brides_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator156" CssClass="colr5"
          controltovalidate="Matrimonial_Brides_tittle_tf" errormessage="*" Height="17px" />
                            </td>

                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label285" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Matrimonial_Brides_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Matrimonial_Brides_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Matrimonial_Brides_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label286" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Matrimonial_Brides_location_tf" 
                                    runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator157" CssClass="colr5"
          controltovalidate="Matrimonial_Brides_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label287" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Matrimonial_Brides_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator158" CssClass="colr5"
          controltovalidate="Matrimonial_Brides_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:FileUpload id="matrimonial_bridges_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="matrimonial_bridges_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Matrimonial_Brides_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Matrimonial_Brides_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>      <Triggers>
<asp:PostBackTrigger ControlID="Matrimonial_Brides_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                         <%--for Matrimonial/grooms--%>
                         <asp:Panel ID="grooms_panel" runat="server" DefaultButton="Matrimonial_groom_button">
                <asp:UpdatePanel ID="Matrimonial_groom_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Groom</a>s</h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label291" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Matrimonial_groom_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator159" CssClass="colr5"
          controltovalidate="Matrimonial_groom_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label292" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Matrimonial_groom_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Matrimonial_groom_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Matrimonial_groom_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label293" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Matrimonial_groom_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator160" CssClass="colr5"
          controltovalidate="Matrimonial_groom_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label294" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Matrimonial_groom_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator161" CssClass="colr5"
          controltovalidate="Matrimonial_groom_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="matrimonial_groom_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="matrimonial_groom_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Matrimonial_groom_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Matrimonial_groom_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>      <Triggers>
<asp:PostBackTrigger ControlID="Matrimonial_groom_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                
                        <%--for Miscellaneous/Arts_Crafts--%>
                        <asp:Panel ID="arts_crafts_panel" runat="server" DefaultButton="Miscellaneous_Air_Crafts_button">
                <asp:UpdatePanel ID="Miscellaneous_Air_Crafts_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Art And Crafts</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label288" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Air_Crafts_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator162" CssClass="colr5"
          controltovalidate="Miscellaneous_Air_Crafts_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label289" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Air_Crafts_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Miscellaneous_Air_Crafts_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Air_Crafts_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label295" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Air_Crafts_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator163" CssClass="colr5"
          controltovalidate="Miscellaneous_Air_Crafts_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label296" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Air_Crafts_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator164" CssClass="colr5"
          controltovalidate="Miscellaneous_Air_Crafts_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label299" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Air_Crafts_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Air_Crafts_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Air_Crafts_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label300" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Air_Crafts_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator165" CssClass="colr5"
          controltovalidate="Miscellaneous_Air_Crafts_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator37" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Air_Crafts_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="miscellaneous_air_crafts_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_air_crafts_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Air_Crafts_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Miscellaneous_Air_Crafts_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>             <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Air_Crafts_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                     
                        <%--for Miscellaneous/Books_Magazines--%>
                        <asp:Panel ID="Books_Magazines_panel" runat="server" DefaultButton="Miscellaneous_Books_Magazines_button">
                <asp:UpdatePanel ID="Miscellaneous_Books_Magazines_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Books And Magazines</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label301" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Books_Magazines_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator166" CssClass="colr5"
          controltovalidate="Miscellaneous_Books_Magazines_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label302" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Books_Magazines_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Miscellaneous_Books_Magazines_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Books_Magazines_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label303" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Books_Magazines_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator167" CssClass="colr5"
          controltovalidate="Miscellaneous_Books_Magazines_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label304" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Books_Magazines_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                             <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator168" CssClass="colr5"
          controltovalidate="Miscellaneous_Books_Magazines_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label305" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Books_Magazines_user_type_dd" 
                                    runat="server" Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Books_Magazines_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Books_Magazines_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label306" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Books_Magazines_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator169" CssClass="colr5"
          controltovalidate="Miscellaneous_Books_Magazines_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator38" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Books_Magazines_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:FileUpload id="miscellaneous_books_magazines_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_books_magazines_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Books_Magazines_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Miscellaneous_Books_Magazines_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Books_Magazines_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>
                     
                        <%--for Miscellaneous/Clothing--%>
                        <asp:Panel  ID="Clothing_panel" runat="server" DefaultButton="Miscellaneous_Clothing_button">
                <asp:UpdatePanel ID="Miscellaneous_Clothing_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Clothing</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label308" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Clothing_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator170" CssClass="colr5"
          controltovalidate="Miscellaneous_Clothing_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label309" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Clothing_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Miscellaneous_Clothing_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Clothing_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label310" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Clothing_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator171" CssClass="colr5"
          controltovalidate="Miscellaneous_Clothing_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label311" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Clothing_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator172" CssClass="colr5"
          controltovalidate="Miscellaneous_Clothing_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label312" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Clothing_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Clothing_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Clothing_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label313" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Clothing_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator173" CssClass="colr5"
          controltovalidate="Miscellaneous_Clothing_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator39" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Clothing_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="miscellaneous_clothing_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="misscellaneous_clothing_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Clothing_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Miscellaneous_Clothing_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Clothing_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                        <%--for Miscellaneous/Eating_Outlets--%>
                        <asp:Panel ID="Eating_Outlets_panel" runat="server" DefaultButton="Miscellaneous_Eating_Outlets_button">
                <asp:UpdatePanel ID="Miscellaneous_Eating_Outlets_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Eating Outlets</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label315" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Eating_Outlets_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator174" CssClass="colr5"
          controltovalidate="Miscellaneous_Eating_Outlets_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label316" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Eating_Outlets_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Miscellaneous_Eating_Outlets_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Eating_Outlets_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label317" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Eating_Outlets_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator175" CssClass="colr5"
          controltovalidate="Miscellaneous_Eating_Outlets_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label318" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Eating_Outlets_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator176" CssClass="colr5"
          controltovalidate="Miscellaneous_Eating_Outlets_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label319" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Eating_Outlets_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Eating_Outlets_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Eating_Outlets_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label320" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Eating_Outlets_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator177" CssClass="colr5"
          controltovalidate="Miscellaneous_Eating_Outlets_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator40" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Eating_Outlets_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="miscellaneous_eating_outlets_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_eating_outlets_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Eating_Outlets_button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Miscellaneous_Eating_Outlets_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Eating_Outlets_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                
                        <%--for Miscellaneous/guns--%>
                        <asp:Panel ID="guns_panel" runat="server" DefaultButton="Miscellaneous_Guns_button">
                <asp:UpdatePanel ID="Miscellaneous_Guns_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Guns</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label322" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Guns_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator178" CssClass="colr5"
          controltovalidate="Miscellaneous_Guns_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label323" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Guns_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Miscellaneous_Guns_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Guns_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label324" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Guns_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator179" CssClass="colr5"
          controltovalidate="Miscellaneous_Guns_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label325" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Guns_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator180" CssClass="colr5"
          controltovalidate="Miscellaneous_Guns_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label326" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Guns_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Guns_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Guns_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label327" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Guns_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator181" CssClass="colr5"
          controltovalidate="Miscellaneous_Guns_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator41" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Guns_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="miscellaneous_guns_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_guns_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                  
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Guns_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Miscellaneous_Guns_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>          <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Guns_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>


                
                
                        <%--for Miscellaneous/Jewelery--%>
                        <asp:Panel ID="Jewelery_panel" runat="server" DefaultButton="Miscellaneous_Jewelery_button">
                <asp:UpdatePanel ID="Miscellaneous_Jewelery_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Jewelery</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label329" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Jewelery_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator182" CssClass="colr5"
          controltovalidate="Miscellaneous_Jewelery_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label330" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Jewelery_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Miscellaneous_Jewelery_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Jewelery_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label331" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Jewelery_location_tf" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator183" CssClass="colr5"
          controltovalidate="Miscellaneous_Jewelery_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label332" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Jewelery_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator184" CssClass="colr5"
          controltovalidate="Miscellaneous_Jewelery_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label333" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Jewelery_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Jewelery_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Jewelery_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label334" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Jewelery_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator185" CssClass="colr5"
          controltovalidate="Miscellaneous_Jewelery_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator42" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Jewelery_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="miscellaneous_jewelery_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_jewelery_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                    
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Jewelery_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Miscellaneous_Jewelery_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>      <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Jewelery_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                
                
                   <%--for Miscellaneous/pets--%>
                   <asp:Panel ID="pets_panel" runat="server" DefaultButton="Miscellaneous_Pets_button">
                <asp:UpdatePanel ID="Miscellaneous_Pets_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Pets</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label336" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Miscellaneous_Pets_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator186" CssClass="colr5"
          controltovalidate="Miscellaneous_Pets_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label337" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Miscellaneous_Pets_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Miscellaneous_Pets_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Pets_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label338" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Miscellaneous_Pets_location_tf" runat="server" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator187" CssClass="colr5"
          controltovalidate="Miscellaneous_Pets_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label339" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Miscellaneous_Pets_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator188" CssClass="colr5"
          controltovalidate="Miscellaneous_Pets_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label340" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Miscellaneous_Pets_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Miscellaneous_Pets_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Miscellaneous_Pets_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label341" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Miscellaneous_Pets_price_tf" runat="server" Width="100"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator189" CssClass="colr5"
          controltovalidate="Miscellaneous_Pets_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator43" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Miscellaneous_Pets_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="miscellanoeus_pets_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="miscellaneous_pets_image_label" runat="server" Font-Names="Microsoft Himalaya" 
                                    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                 
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Miscellaneous_Pets_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Miscellaneous_Pets_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>     <Triggers>
<asp:PostBackTrigger ControlID="Miscellaneous_Pets_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                              <%--for Real Estates/Appartments--%>
                              <asp:Panel ID="Appartments_panel" runat="server" DefaultButton="Real_Estates_Appartments_button">
                <asp:UpdatePanel ID="Real_Estates_Appartments_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Appartments</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label343" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Real_Estates_Appartments_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator190" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label344" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Real_Estates_Appartments_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Real_Estates_Appartments_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label345" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Real_Estates_Appartments_location_tf" runat="server" 
                                    Width="165px" Height="18px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator191" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label346" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Real_Estates_Appartments_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator192" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label347" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Real_Estates_Appartments_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Real_Estates_Appartments_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label348" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Real_Estates_Appartments_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator193" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator44" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Appartments_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>

                    <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                    <h1 style="color:#0172BB" align="center"><a >Additional Infornation</a></h1>
                    <table class="style23">
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label362" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="Real_Estates_Appartments_address_tf" runat="server" Width="289px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator194" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_address_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label363" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_Appartments_area_tf" runat="server" Width="134px"></asp:TextBox>

<asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator195" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_area_tf" errormessage="*" Height="17px" />
                            </td>
                            
                            <td class="style39">
                                <asp:Label ID="Label368" runat="server" Text="Area Unit"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Appartments_area_unit_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Appartments_area_unit_data_source" 
                                    DataTextField="real_estate_area_unit" 
                                    DataValueField="real_estate_area_unit">
                                </asp:DropDownList>
                                
                                <asp:SqlDataSource ID="Real_Estates_Appartments_area_unit_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_area_unit] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label364" runat="server" Text="Agreement Type"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Appartments_agreement_type_dd" 
                                    runat="server" Width="134px" 
                                    DataSourceID="Real_Estates_Appartments_agreement_type_data_source" 
                                    DataTextField="real_estate_agreement_type" 
                                    DataValueField="real_estate_agreement_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_agreement_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_agreement_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label369" runat="server" Text="Property Type"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Appartments_property_type_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Appartments_property_type_data_source" 
                                    DataTextField="real_estate_property_type" 
                                    DataValueField="real_estate_property_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_property_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_property_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label365" runat="server" Text="Facing"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Appartments_facing_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Appartments_facing_data_source" 
                                    DataTextField="real_estate_facing" 
                                    DataValueField="real_estate_facing">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_facing_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_facing] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label370" runat="server" Text="Year Built"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Appartments_year_built_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Appartments_year_built_data_source" 
                                    DataTextField="real_estate_year_built" 
                                    DataValueField="real_estate_year_built">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_year_built_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_year_built] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label366" runat="server" Text="Floor"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Appartments_floor_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Appartments_floor_data_source" 
                                    DataTextField="real_estate_floor" DataValueField="real_estate_floor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Appartments_floor_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_floor] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label371" runat="server" Text="No. of Rooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="Real_Estates_Appartments_no_of_rooms_tf" runat="server" Width="134px"></asp:TextBox>

<asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator196" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_no_of_rooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator49" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Appartments_no_of_rooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                           
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label367" runat="server" Text="No. of Bedrooms"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_Appartments_no_of_bedrooms_tf" runat="server" Width="134px"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator197" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_no_of_bedrooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator50" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Appartments_no_of_bedrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
          </td>
          <td class="style39">
                            
                            
                            
                                <asp:Label ID="Label372" runat="server" Text="No. of Bathrooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="Real_Estates_Appartments_no_of_bathrooms_tf" runat="server" Width="134px"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator198" CssClass="colr5"
          controltovalidate="Real_Estates_Appartments_no_of_bathrooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator51" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Appartments_no_of_bathrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                            
                        </tr>
                    </table>
                    <br />

                 


               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h1 style="color:#0172BB" align="center"><a >Additional Features</a></h1>
                    
                    <table class="style23">
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Appartments_Drawing_cb" runat="server" />
                                &nbsp;<asp:Label ID="Label350" runat="server" Text="Drawing Room" 
                                    ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_Dinning_room_cb" runat="server" />
                                <asp:Label ID="Label351" runat="server" Text="Dinning Room" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td  class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_furnished_cb" runat="server" />
                                <asp:Label ID="Label352" runat="server" Text="Furnished" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Appartments_kichen_cb" runat="server" />
                                <asp:Label ID="Label353" runat="server" Text="Kichen" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_pool_cb" runat="server" />
                                <asp:Label ID="Label354" runat="server" Text="Pool" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Appartments_servant_quater_cb" runat="server" />
                                <asp:Label ID="Label355" runat="server" Text="Servant Quater" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Appartments_lawn_cb" runat="server" />
                                <asp:Label ID="Label356" runat="server" Text="Lawn" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_parking_cb" runat="server" />
                                <asp:Label ID="Label357" runat="server" Text="Parking" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Appartments_terrace_cb" runat="server" />
                                <asp:Label ID="Label358" runat="server" Text="Terrace" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Appartments_corner_location_cb" runat="server" />
                                <asp:Label ID="Label359" runat="server" Text="Corner Location" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_balcony_cb" runat="server" />
                                <asp:Label ID="Label360" runat="server" Text="Balcony" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Appartments_elevator_cb" runat="server" />
                                <asp:Label ID="Label361" runat="server" Text="Elevator" ForeColor="#0172BB"></asp:Label>
                            </td>

                        </tr>

                    </table>



               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>




               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="Real_Estates_Appartments_elevator_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Real_Estates_Appartments_elevator_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label>  
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Real_Estates_Appartments_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Real_Estates_Appartments_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Real_Estates_Appartments_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                 
                    <%--for Real Estates/Houses--%>
                    <asp:Panel id="Houses_panel" runat="server" DefaultButton="Real_Estates_Houses_button">
                <asp:UpdatePanel ID="Real_Estates_Houses_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Houses</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Labelss409" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="real_estate_houses_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator199" CssClass="colr5"
          controltovalidate="real_estate_houses_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label41ss0" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="real_estate_houses_city_dd" runat="server" Width="165px" 
                                    DataSourceID="real_estate_houses_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label411s" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="real_estate_houses_location_tf" runat="server" 
                                    Height="18px" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator200" CssClass="colr5"
          controltovalidate="real_estate_houses_location_tf" errormessage="*" Height="17px" />
                            
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Labesl412" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="real_estate_houses_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator201" CssClass="colr5"
          controltovalidate="real_estate_houses_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Labesl413" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="real_estate_houses_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="real_estate_houses_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Labels414" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="real_estate_houses_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator202" CssClass="colr5"
          controltovalidate="real_estate_houses_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator45" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="real_estate_houses_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>

                    <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                    <h1 style="color:#0172BB" align="center"><a >Additional Infornation</a></h1>
                    <table class="style23">
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label4s15" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="real_estate_houses_address_tf" runat="server" Width="289px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator203" CssClass="colr5"
          controltovalidate="real_estate_houses_address_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label41s7" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="real_estate_houses_area_tf" runat="server" Width="134px"></asp:TextBox>
                            
                           
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator204" CssClass="colr5"
          controltovalidate="real_estate_houses_area_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label418s" runat="server" Text="Area Unit"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="real_estate_houses_area_unit_dd" runat="server" 
                                    Width="135px" DataSourceID="real_estate_houses_area_unit_data_source" 
                                    DataTextField="real_estate_area_unit" DataValueField="real_estate_area_unit">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_area_unit_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_area_unit] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label41s9" runat="server" Text="Agreement Type"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="real_estate_houses_aggreement_type_dd" runat="server" 
                                    Width="134px" DataSourceID="real_estate_houses_aggreement_type_data_source" 
                                    DataTextField="real_estate_agreement_type" 
                                    DataValueField="real_estate_agreement_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_aggreement_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_agreement_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label42s0" runat="server" Text="Property Type"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="real_estate_houses_property_type_dd" runat="server" 
                                    Width="135px" DataSourceID="real_estate_houses_property_type_data_source" 
                                    DataTextField="real_estate_property_type" 
                                    DataValueField="real_estate_property_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_property_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_property_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label42a1" runat="server" Text="Facing"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="real_estate_houses_facing_dd" runat="server" 
                                    Width="134px" DataSourceID="real_estate_houses_facing_data_source" 
                                    DataTextField="real_estate_facing" DataValueField="real_estate_facing" 
                                    >
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_facing_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_facing] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label42a2" runat="server" Text="Year Built"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="real_estate_houses_year_built_dd" runat="server" 
                                    Width="135px" DataSourceID="real_estate_houses_year_built_data_source" 
                                    DataTextField="real_estate_year_built" DataValueField="real_estate_year_built">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_year_built_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [real_estate_year_built] FROM [ad_real_estate] ORDER BY [real_estate_year_built]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label42a3" runat="server" Text="Floor"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="real_estate_houses_floor_dd" runat="server" Width="134px" 
                                    DataSourceID="real_estate_houses_floor_data_source" 
                                    DataTextField="real_estate_floor" DataValueField="real_estate_floor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="real_estate_houses_floor_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_floor] FROM [ad_real_estate] ORDER BY [real_estate_floor]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label42a4" runat="server" Text="No. of Rooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="real_estate_houses_no_of_rooms_tf" runat="server" Width="134px"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator205" CssClass="colr5"
          controltovalidate="real_estate_houses_no_of_rooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator46" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="real_estate_houses_no_of_rooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label42a5" runat="server" Text="No. of Bedrooms"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="real_estate_houses_no_of_bedrooms_tf" runat="server" Width="134px"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator206" CssClass="colr5"
          controltovalidate="real_estate_houses_no_of_bedrooms_tf" errormessage="*" Height="17px" />

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator47" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="real_estate_houses_no_of_bedrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                           </td>
                            <td class="style39">
                                <asp:Label ID="Label426s" runat="server" Text="No. of Bathrooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="real_estate_houses_no_of_bathrooms_tf" runat="server" Width="134px"></asp:TextBox>
                            
                            
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator207" CssClass="colr5"
          controltovalidate="real_estate_houses_no_of_bathrooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator48" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="real_estate_houses_no_of_bathrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                           </td>
                        </tr>
                    </table>
                    <br />

                 


               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h1 style="color:#0172BB" align="center"><a >Additional Features</a></h1>
                    
                    <table class="style23">
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="real_estate_houses_drawing_room_cb" runat="server" />
                                &nbsp;<asp:Label ID="Labael427" runat="server" Text="Drawing Room" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="real_estate_houses_dining_room_cb" runat="server" />
                                <asp:Label ID="Label428a" runat="server" Text="Dinning Room" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="real_estate_houses_furnished_cb" runat="server" />
                                <asp:Label ID="Label429s" runat="server" Text="Furnished" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="real_estate_houses_kitchen_cb" runat="server" />
                                <asp:Label ID="Label430s" runat="server" Text="Kichen" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="real_estate_houses_pool_cb" runat="server" />
                                <asp:Label ID="Label431s" runat="server" Text="Pool" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="real_estate_houses_servent_quater_cb" runat="server" />
                                <asp:Label ID="Label432s" runat="server" Text="Servant Quater" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="real_estate_houses_lawn_cb" runat="server" />
                                <asp:Label ID="Label433" runat="server" Text="Lawn" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="real_estate_houses_parking_cb" runat="server" />
                                <asp:Label ID="Label434" runat="server" Text="Parking" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Houses_terrace_cb" runat="server" />
                                <asp:Label ID="Label22z22" runat="server" Text="Terrace" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Houses_corner_location_cb" runat="server" />
                                <asp:Label ID="Labe339" runat="server" Text="Corner Location" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Houses_balcony_cb" runat="server" />
                                <asp:Label ID="Label214" runat="server" Text="Balcony" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Houses_elevator_cb" runat="server" />
                                <asp:Label ID="Label631" runat="server" Text="Elevator" ForeColor="#0172BB"></asp:Label>
                            </td>

                        </tr>

                    </table>



               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>




               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="Real_Estates_Houses_elevator_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Real_Estates_Houses_elevator_image_label" runat="server" Font-Names="Microsoft Himalaya" 
    Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label> 
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Real_Estates_Houses_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Real_Estates_Houses_button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Real_Estates_Houses_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                 
                  <%--for Real Estates/Offices--%>
                  <asp:Panel ID="Offices_panel" runat="server" DefaultButton="Real_Estates_Offices_button">
                <asp:UpdatePanel ID="Real_Estates_Offices_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Offices</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label373" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Real_Estates_Offices_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator208" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label374" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Real_Estates_Offices_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Real_Estates_Offices_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label375" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Real_Estates_Offices_location_tf" runat="server" Height="18px" 
                                    Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator209" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label376" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Real_Estates_Offices_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator210" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label377" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Real_Estates_Offices_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Real_Estates_Offices_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label378" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Real_Estates_Offices_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator211" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator52" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Offices_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>

                    <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                    <h1 style="color:#0172BB" align="center"><a >Additional Infornation</a></h1>
                    <table class="style23">
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label379" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="Real_Estates_Offices_address_tf" runat="server" Width="289px"></asp:TextBox>
                            </td>
                            <td>
                            
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator212" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_address_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label380" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_Offices_area_tf" runat="server" Width="134px"></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator213" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_area_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label381" runat="server" Text="Area Unit"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Offices_area_unit_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Offices_area_unit_data_source" 
                                    DataTextField="real_estate_area_unit" DataValueField="real_estate_area_unit">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_area_unit_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_area_unit] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label382" runat="server" Text="Agreement Type"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Offices_agreement_type_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Offices_agreement_type_data_spurce" 
                                    DataTextField="real_estate_agreement_type" 
                                    DataValueField="real_estate_agreement_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_agreement_type_data_spurce" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_agreement_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label383" runat="server" Text="Property Type"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Offices_property_type_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Offices_property_type_data_source" 
                                    DataTextField="real_estate_property_type" 
                                    DataValueField="real_estate_property_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_property_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_property_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label384" runat="server" Text="Facing"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Offices_facing_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Offices_facing_data_source" 
                                    DataTextField="real_estate_facing" DataValueField="real_estate_facing" 
                                    >
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_facing_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_facing] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label385" runat="server" Text="Year Built"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Offices_year_built_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Offices_year_built_data_source" 
                                    DataTextField="real_estate_year_built" DataValueField="real_estate_year_built">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_year_built_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [real_estate_year_built] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label386" runat="server" Text="Floor"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Offices_floor_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Offices_floor_data_source" 
                                    DataTextField="real_estate_floor" DataValueField="real_estate_floor">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Offices_floor_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_floor] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label387" runat="server" Text="No. of Rooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="Real_Estates_Offices_no_of_rooms_tf" runat="server" Width="134px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator214" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_no_of_rooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator53" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Offices_no_of_rooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label388" runat="server" Text="No. of Bedrooms"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_Offices_No_of_bedrooms_tf" runat="server" Width="134px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator215" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_No_of_bedrooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator54" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Offices_No_of_bedrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label389" runat="server" Text="No. of Bathrooms"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="Real_Estates_Offices_No_of_bathrooms_tf" runat="server" Width="134px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator216" CssClass="colr5"
          controltovalidate="Real_Estates_Offices_No_of_bathrooms_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator55" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_Offices_No_of_bathrooms_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                    <br />

                 


               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h1 style="color:#0172BB" align="center"><a >Additional Features</a></h1>
                    
                    <table class="style23">
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Offices_drwaing_room_cb" runat="server" />
                                &nbsp;<asp:Label ID="Label390" runat="server" Text="Drawing Room" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Offices_dinning_room_cb" runat="server" />
                                <asp:Label ID="Label391" runat="server" Text="Dinning Room" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Offices_furnished_cb" runat="server" />
                                <asp:Label ID="Label392" runat="server" Text="Furnished" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Offices_kichen_cb" runat="server" />
                                <asp:Label ID="Label393" runat="server" Text="Kichen" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Offices_pool_cb" runat="server" />
                                <asp:Label ID="Label394" runat="server" Text="Pool" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Offices_servant_quater_cb" runat="server" />
                                <asp:Label ID="Label395" runat="server" Text="Servant Quater" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Offices_lawn_cb" runat="server" />
                                <asp:Label ID="Label396" runat="server" Text="Lawn" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Offices_parking_cb" runat="server" />
                                <asp:Label ID="Label397" runat="server" Text="Parking" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="Real_Estates_Offices_terrace_cb" runat="server" />
                                <asp:Label ID="Label2222" runat="server" Text="Terrace" ForeColor="#0172BB"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:CheckBox ID="Real_Estates_Offices_corner_location_cb" runat="server" />
                                <asp:Label ID="Label3539" runat="server" Text="Corner Location" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Offices_balcony_cb" runat="server" />
                                <asp:Label ID="Label3604" runat="server" Text="Balcony" ForeColor="#0172BB"></asp:Label>
                            </td>
                            <td class="style29">
                                <asp:CheckBox ID="Real_Estates_Offices_elevator_cb" runat="server" />
                                <asp:Label ID="Label3631" runat="server" Text="Elevator" ForeColor="#0172BB"></asp:Label>
                            </td>

                        </tr>

                    </table>



               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>




               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload id="Real_Estates_Offices_elevator_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Real_Estates_Offices_elevator_image_label" runat="server" Font-Names="Microsoft Himalaya" 
                                            Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label> 
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Real_Estates_Offices_button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                     onclick="Real_Estates_Offices_button_Click" 
                           />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Real_Estates_Offices_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                 <%--for Real Estates plots_lands--%>
                 <asp:Panel ID="plots_lands_panel" runat="server" DefaultButton="Real_Estates_plots_lands__button">
                <asp:UpdatePanel ID="Real_Estates_plots_lands_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Plots And Lands</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label398" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Real_Estates_plots_lands_tittle_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator217" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_tittle_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label399" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Real_Estates_plots_lands_city_dd" runat="server" 
                                    Width="165px" DataSourceID="Real_Estates_plots_lands_city_data_source" 
                                    DataTextField="ad_city" DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_plots_lands_city_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label400" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Real_Estates_plots_lands_location_tf" runat="server" 
                                    Height="18px" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator218" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label401" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Real_Estates_plots_lands_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator219" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label402" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Real_Estates_plots_lands_user_type_d" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Real_Estates_plots_lands_user_type_data_source" 
                                    DataTextField="car_engine_type" DataValueField="car_engine_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_plots_lands_user_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_engine_type], [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label403" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Real_Estates_plots_lands_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator220" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator56" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_plots_lands_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>

                    <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                    <h1 style="color:#0172BB" align="center"><a >Additional Infornation</a></h1>
                    <table class="style23">
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label404" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="Real_Estates_plots_lands_addresstf" runat="server" Width="289px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator221" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_addresstf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label405" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_plots_lands_area_tf" runat="server" Width="134px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator222" CssClass="colr5"
          controltovalidate="Real_Estates_plots_lands_area_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label406" runat="server" Text="Area Unit"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_plots_lands_area_unit_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_plots_lands_area_unit_data_source" 
                                    DataTextField="real_estate_area_unit" DataValueField="real_estate_area_unit">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_plots_lands_area_unit_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_area_unit] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label407" runat="server" Text="Agreement Type"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_plots_lands_agreement_type_dd" 
                                    runat="server" Width="134px" 
                                    DataSourceID="Real_Estates_plots_lands_agreement_type_data_source" 
                                    DataTextField="real_estate_agreement_type" 
                                    DataValueField="real_estate_agreement_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_plots_lands_agreement_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_agreement_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label408" runat="server" Text="Property Type"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_plots_lands_property_type_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_plots_lands_property_type_data_source" 
                                    DataTextField="real_estate_property_type" 
                                    DataValueField="real_estate_property_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_plots_lands_property_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_property_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>

                 


              
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:FileUpload id="Real_Estates_plots_lands_property_type_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Real_Estates_plots_lands_property_type_image_label" runat="server" Font-Names="Microsoft Himalaya" 
                                                              Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label> 

                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Real_Estates_plots_lands__button" runat="server"  
                        Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68" onclick="Real_Estates_plots_lands__button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Real_Estates_plots_lands__button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                  <%--for real estates shop--%>
                  <asp:Panel ID="shops_panel" runat="server" DefaultButton="Real_Estates_shops__button">
                                  <asp:UpdatePanel ID="Real_Estates_shops_up" runat="server">
                        
                <ContentTemplate >
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad&nbsp; Shops</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Labeluu398" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Real_Estates_Shops_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator223" CssClass="colr5"
          controltovalidate="Real_Estates_Shops_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Labertl399" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Real_Estates_Shops_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Real_Estates_Shops_city_data_source" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Shops_city_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Labeltt400" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Real_Estates_Shops_location_tf" runat="server" 
                                    Height="18px" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator224" CssClass="colr5"
          controltovalidate="Real_Estates_Shops_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label40d1" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Real_Estates_Shops_Content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator225" CssClass="colr5"
          controltovalidate="Real_Estates_Shops_Content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style22">
                                <asp:Label ID="Label40f2" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Real_Estates_shops_user_type_dd" runat="server" 
                                    Height="22px" Width="140px" 
                                    DataSourceID="Real_Estates_shops_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                              
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_shops_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label40dd3" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Real_Estates_shops_price" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator226" CssClass="colr5"
          controltovalidate="Real_Estates_shops_price" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator57" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Real_Estates_shops_price" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>

                    <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
                    <h1 style="color:#0172BB" align="center"><a >Additional Infornation</a></h1>
                    <table class="style23">
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label40d4" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="Real_Estates_Shops_address_tf" runat="server" Width="289px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator227" CssClass="colr5"
          controltovalidate="Real_Estates_Shops_address_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Label4d05" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:TextBox ID="Real_Estates_Shops_area_tf" runat="server" Width="134px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator228" CssClass="colr5"
          controltovalidate="Real_Estates_Shops_area_tf" errormessage="*" Height="17px" />
                            </td>
                            <td class="style39">
                                <asp:Label ID="Label40d6" runat="server" Text="Area Unit"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Shops_area_unit_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Shops_area_unit_data_source" 
                                    DataTextField="real_estate_area_unit" DataValueField="real_estate_area_unit">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Shops_area_unit_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_area_unit] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                <asp:Label ID="Labedl407" runat="server" Text="Agreement Type"></asp:Label>
                            </td>
                            <td class="style37">
                                <asp:DropDownList ID="Real_Estates_Shops_agreement_type_dd" runat="server" 
                                    Width="134px" DataSourceID="Real_Estates_Shops_agreement_type_data_source" 
                                    DataTextField="real_estate_agreement_type" 
                                    DataValueField="real_estate_agreement_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Shops_agreement_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_agreement_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style39">
                                <asp:Label ID="Labedl408" runat="server" Text="Property Type"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:DropDownList ID="Real_Estates_Shops_property_type_dd" runat="server" 
                                    Width="135px" DataSourceID="Real_Estates_Shops_property_type_data_source" 
                                    DataTextField="real_estate_property_type" 
                                    DataValueField="real_estate_property_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Real_Estates_Shops_property_type_data_source" 
                                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [real_estate_property_type] FROM [ad_real_estate]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>

                 


               
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:FileUpload id="Real_Estates_Shops_property_type_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Real_Estates_Shops_property_type_image_label" runat="server" Font-Names="Microsoft Himalaya" 
                                                              Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label> 
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Real_Estates_shops__button" runat="server"  Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Real_Estates_shops__button_Click"   />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>    <Triggers>
<asp:PostBackTrigger ControlID="Real_Estates_shops__button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                 <%--for services--%>
                 <asp:Panel ID="servicespanel" runat="server" DefaultButton="Services_button">
                                <asp:UpdatePanel ID="Services_up" runat="server" >
                                
                        
                <ContentTemplate>
                <div style="height: auto">
               <h1 style="color:#0172BB" align="center"><a >Free Classified Ad Services</a></h1>
                              
              <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
              
                    <table class="style1">
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label41d" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td class="style4" colspan="2">
                                <asp:TextBox ID="Services_title_tf" runat="server" Width="433px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator229" CssClass="colr5"
          controltovalidate="Services_title_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label41d1" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="style15">
                                <asp:DropDownList ID="Services_city_dd" runat="server" Width="165px" 
                                    DataSourceID="Services_city_data_sour" DataTextField="ad_city" 
                                    DataValueField="ad_city">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Services_city_data_sour" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [ad_city] FROM [ad_city_location]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label41d2" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:TextBox ID="Services_location_tf" runat="server" 
                                    Height="18px" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator230" CssClass="colr5"
          controltovalidate="Services_location_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label4d13" runat="server" Text="Content"></asp:Label>
                            </td>
                            <td class="style4" colspan="2" rowspan="2">
                                <asp:TextBox ID="Services_content_tf" runat="server" Height="104px" Width="424px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator231" CssClass="colr5"
          controltovalidate="Services_content_tf" errormessage="*" Height="17px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label4d14" runat="server" Text="User Type"></asp:Label>
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Services_user_type_dd" runat="server" Height="22px" 
                                    Width="140px" DataSourceID="Services_user_type_data_source" 
                                    DataTextField="car_user_type" DataValueField="car_user_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Services_user_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [car_user_type] FROM [car_additional_information]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4d15" runat="server" Text="Price"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Services_price_tf" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                            <asp:RequiredFieldValidator runat="server"  id="RequiredFieldValidator232" CssClass="colr5"
          controltovalidate="Services_price_tf" errormessage="*" Height="17px" />

          <asp:RegularExpressionValidator ID="RegularExpressionValidator58" runat="server" CssClass="colr5" ErrorMessage="*"           controlToValidate="Services_price_tf" ValidationExpression="^([0-9]*\d*\d{1}?\d*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                Service&nbsp; Type&nbsp;
                            </td>
                            <td class="style21">
                                <asp:DropDownList ID="Services_srvice_type_dd" runat="server" Height="23px" 
                                    Width="140px" DataSourceID="Services_srvice_type_data_source" 
                                    DataTextField="services_service_type" DataValueField="services_service_type">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Services_srvice_type_data_source" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [services_service_type] FROM [ad_services]">
                                </asp:SqlDataSource>
                            </td>
                            <td class="style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
               <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>
               <h2 style="color:#0172BB"><a >Add Images</a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:FileUpload id="services_service_type_image_upload" runat="server" onchange="preview(this)" />
                     &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="services_service_type_image_label" runat="server" Font-Names="Microsoft Himalaya" 
                                                              Font-Size="Small" Text="SIZE 2 MB; 1024 x 1024;"></asp:Label> 
                   
                    <br />
              
                   <hr style="border: 2px solid #0172BB; width: 402px;" align="center"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                  
                   
                    <asp:Button ID="Services_button" runat="server" Text="Post Ad" BackColor="#0172BB" ForeColor="white" Height="25" Width="68"
                        onclick="Services_button_Click" />
               
                
             
                       
                             
                   </div>
                
                
                
                
                
                 
                    </a>
                
                
                
                
                
                 
                </ContentTemplate>   <Triggers>
<asp:PostBackTrigger ControlID="Services_button" />
</Triggers>
                </asp:UpdatePanel>
                </asp:Panel>

                
                        <asp:UpdatePanel ID="success_up" runat="server">
                        <ContentTemplate>
                     <div><h1> your Ad has been Successfully Posted! </h1>
                     </div>   
                     </ContentTemplate>
                        </asp:UpdatePanel>
                         <asp:UpdatePanel ID="fail_up" runat="server">
                        <ContentTemplate>
                     <div><h1> Could not post </h1>
                     </div>   
                     </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="exception_up" runat="server">
                        <ContentTemplate>
                     <div><h1> ERROR: <asp:Label ID="exception_lb" runat="server"></asp:Label> </h1>
                     </div>   
                     </ContentTemplate>
                        </asp:UpdatePanel>
                        

                    </div>

                    
             
           

            </div>



     

    
</asp:Content>