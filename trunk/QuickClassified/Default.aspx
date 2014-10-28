<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="QuickClassified._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

  <%--  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="robots" content="all" />

	--%><style>
	.column { width: 170px; float: left; padding-bottom: 100px; }
	.portlet { margin: 0 1em 1em 0; }
	.portlet-header { margin: 0.3em; padding-bottom: 4px; padding-left: 0.2em; }
	.portlet-header .ui-icon { float: right; }
	.portlet-content { padding: 0.4em; }
	.ui-sortable-placeholder { border: 1px dotted black; visibility: visible !important; height: 50px !important; }
	.ui-sortable-placeholder * { visibility: hidden; }
	</style>
	<script>
	    $(function () {
	        $(".column").sortable({
	            connectWith: ".column"
	        });

	        $(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
			.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all")
				.prepend("<span class='ui-icon ui-icon-minusthick'></span>")
				.end()
			.find(".portlet-content");

	        $(".portlet-header .ui-icon").click(function () {
	            $(this).toggleClass("ui-icon-minusthick").toggleClass("ui-icon-plusthick");
	            $(this).parents(".portlet:first").find(".portlet-content").toggle();
	        });

	        $(".column").disableSelection();
	    });
	</script>




</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent" >
   
    <!---   
    <div id="contentpages" style="width:auto; height:auto;">
  
        </div>
   -->
 <div class="centrediv" align="center">
         <div id="contentpages" style="width:auto; height:585px;" align="center">

    <div class="Letfcontentpages">
    <div class="column">
    
   
    <div class="portlet">
    <div class="portlet-content">
        <table class="style27" >
            <tr >
                <td align="left" class="style31" style="cursor: all-scroll;">
                    <asp:LinkButton ID="autos_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Autos</asp:LinkButton>
                
                &nbsp;<img src="images/Autos.png" />
                <hr style="width: 119px; height: -12px;" align="left"  />
                </td>
            </tr>
            <tr  >
                <td align="left" class="style28" id="Auto Parts" >
                  <%--  <asp:LinkButton ID="autos_Parts_lb" runat="server" Font-Overline="false" ForeColor="#0172BB"  CssClass="autosmain"
                        onclick="autos_Parts_lb_Click"  OnClientClick="aspnetForm.target ='_blank';" >Auto Parts</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_auto_parts"  class="homeAdsNavAnchor autosmain" >Auto Parts</a>
                        <span class="pppp">(<asp:Label ID="autosparts_counter_lb" runat="server" ></asp:Label>)
                    </span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29" >
                 <%--   <asp:LinkButton ID="autos_Boats_Ships_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="autos_Boats_Ships_lb_Click">Boats-Ships</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_boats_ships"  class="homeAdsNavAnchor autosmain" >Boats-Ships</a>
                        <span class="pppp">(<asp:Label ID="boat_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                   <%-- <asp:LinkButton ID="autos_car_lb" runat="server" Font-Overline="false" ForeColor="#0172BB"  CssClass="autosmain"
                        onclick="autos_car_lb_Click">Cars</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_car"  class="homeAdsNavAnchor autosmain" >Cars</a>
                        <span class="pppp">(<asp:Label ID="car_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="autos_Heavy_Vehicles_lb" runat="server"  CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="autos_Heavy_Vehicles_lb_Click" >Heavy Vehicles</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_heavy_vehicle"  class="homeAdsNavAnchor autosmain" >Heavy Vehicles</a>
                       <span class="pppp"> (<asp:Label ID="heavyvehicles_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="autos_Motorcycles_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="autos_Motorcycles_lb_Click">Motorcycles</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_motor_vehicle"  class="homeAdsNavAnchor autosmain" >Motorcycles</a>
                       <span class="pppp"> (<asp:Label ID="motercycles_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                   
                    <%--<asp:LinkButton ID="autos_Other_Vehicles_lb" runat="server"  Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                         OnClick="autos_Other_Vehicles_lb_Click">Other Vehicle</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_autos_other_vehicle"  class="homeAdsNavAnchor autosmain" >Other Vehicle</a>
                    <span class="pppp">(<asp:Label ID="othersvehicle_counter_lb" runat="server"></asp:Label>)</span>
                   
                </td>
            </tr>
            
        </table>
        </div>
        </div>
       <br />
       <div class="portlet"><div class="portlet-content">
          <table class="style27">
            <tr>
                <td align="left" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Education_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Education</asp:LinkButton>
                
                 &nbsp;<img src="images/Education.png" />
                <hr style="width: 119px" align="left" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Computer_Insitutes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Computer_Insitutes_lb_Click">Computer Insitutes</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_computer_institutes"  class="homeAdsNavAnchor autosmain" >Computer Insitutes</a>
                       <span class="pppp"> (<asp:Label ID="computerinstitute_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Education_Cooking_Classes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Cooking_Classes_lb_Click">Cooking Classes</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_cooking_classes"  class="homeAdsNavAnchor autosmain" >Cooking Classes</a>
                       <span class="pppp"> (<asp:Label ID="cookingclasses_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Education_Home_Tutions_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Home_Tutions_lb_Click">Home Tutions</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_home_tution"  class="homeAdsNavAnchor autosmain" >Home Tutions</a>
                        <span class="pppp"> (<asp:Label ID="hometuction_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Education_Launage_Academies_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Launage_Academies_lb_Click">Launage Academies</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_launage_academies"  class="homeAdsNavAnchor autosmain" >Launage Academies</a>
                        <span class="pppp">(<asp:Label ID="languages_academes_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Montessori_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Montessori_lb_Click">Montessori</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_montessori"  class="homeAdsNavAnchor autosmain" >Montessori</a>
                        <span class="pppp"> (<asp:Label ID="montessori_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Private_Tutors_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Private_Tutors_lb_Click">Private Tutors</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_private_tutors"  class="homeAdsNavAnchor autosmain" >Private Tutors</a>
                       <span class="pppp"> (<asp:Label ID="private_tutors_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Schools_lb" runat="server" Font-Overline="false" CssClass="autosmain" ForeColor="#0172BB"
                        onclick="Education_Schools_lb_Click">Schools</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_schools"  class="homeAdsNavAnchor autosmain" >Schools</a>
                       <span class="pppp"> (<asp:Label ID="schools_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Short_Courses_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Short_Courses_lb_Click">Short Courses</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_short_courses"  class="homeAdsNavAnchor autosmain" >Short Courses</a>
                       <span class="pppp"> (<asp:Label ID="shorts_courses_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Education_Technical_Insitutes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Technical_Insitutes_lb_Click">Technical Insitutes</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_education_technical_institute"  class="homeAdsNavAnchor autosmain" >Technical Insitutes</a>
                       <span class="pppp"> (<asp:Label ID="technical_institutes_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
        </table>
        </div></div>
        <br />
        <div class="portlet"><div class="portlet-content">
   <table class="style27">
            <tr>
                <td align="left" class="style31" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Real_Estates_lb" runat="server" Font-Overline="false" CssClass="AutosMain"  ForeColor="#0172BB"
                       >Real Estates</asp:LinkButton>
                 &nbsp;<img src="images/RealEstate.png" dir="ltr" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Real_Estates_Appartments_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Appartments_lb_Click">Appartments</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_real_estate_appartment"  class="homeAdsNavAnchor autosmain" >Appartments</a>
                       <span class="pppp"> (<asp:Label ID="appartments_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Real_Estates_Houses_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Houses_lb_Click">Houses</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_real_estate_houses"  class="homeAdsNavAnchor autosmain" >Houses</a>
                        <span class="pppp">(<asp:Label ID="houses_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Real_Estates_Offices_lb" runat="server" CssClass="autosmain"  ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Offices_lb_Click">Offices</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_real_estate_offices"  class="homeAdsNavAnchor autosmain" >Offices</a>
                       <span class="pppp"> (<asp:Label ID="offices_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Real_Estates_Plots_Lands_lb" runat="server" CssClass="autosmain"  ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Plots_Lands_lb_Click">Plots Lands</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_real_estate_plots_lands"  class="homeAdsNavAnchor autosmain" >Plots Lands</a>
                      <span class="pppp">  (<asp:Label ID="plots_lands_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Real_Estates_Shops_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Real_Estates_Shops_lb_Click">Shops</asp:LinkButton>--%>
                     <a href="showdata.aspx?attr=ad_real_estate_shops"  class="homeAdsNavAnchor autosmain" >Shops</a>
                       <span class="pppp"> (<asp:Label ID="shops_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
  
        
    </div></div>
        
           
        
        </div>
        </div>


    <div class="Centercontentpages">
    <div class="column">
    <div class="portlet"><div class="portlet-content">
    <table class="style27">
            <tr>
                <td align="left" class="style31" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Home_Appliances_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Home Appliances</asp:LinkButton>
                &nbsp;<img src="images/homeappliances.png" />
                <hr  style="width: 137px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28" id="ad_home_appliances_air_conditioner">
                   <%-- <asp:LinkButton ID="Home_Appliances_Air_conditioner_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Air_conditioner_lb_Click">Air Conditioner</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_air_conditioner"  class="homeAdsNavAnchor autosmain" >Air Conditioner</a>
                        <span class="pppp">(<asp:Label ID="airconditioner_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Home_Appliances_Fridge_lb" runat="server" 
                        Font-Overline="false" ForeColor="#0172BB" onclick="Home_Appliances_Fridge_lb_Click">Fridge</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_fridge"  class="homeAdsNavAnchor autosmain" >Fridge</a>
                       <span class="pppp"> (<asp:Label ID="fridge_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Home_Appliances_Furniture_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Furniture_lb_Click">Furniture</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_furniture"  class="homeAdsNavAnchor autosmain" >Furniture</a>
                        <span class="pppp">(<asp:Label ID="furniture_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Home_Appliances_Other_Home_Appliances_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Other_Home_Appliances_lb_Click">Other Home Appliances</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_other_home_appliances"  class="homeAdsNavAnchor autosmain" >Other Home Appliances</a>
                       <span class="pppp"> (<asp:Label ID="otherhomeappliences_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Home_Appliances_tv_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Home_Appliances_tv_lb_Click">TV</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_tv"  class="homeAdsNavAnchor autosmain" >TV</a>
                      <span class="pppp">  (<asp:Label ID="tv_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Home_Appliances_Vacume_cleaner_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Vacume_cleaner_lb_Click">Vacume cleaner</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_vacume_cleaner"  class="homeAdsNavAnchor autosmain" >Vacume cleaner</a>
                        <span class="pppp">(<asp:Label ID="vacumecleaner_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Home_Appliances_Water_Chiller_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Water_Chiller_lb_Click">Water Chiller</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_home_appliances_water_chiller"  class="homeAdsNavAnchor autosmain" >Water Chiller</a>
                       <span class="pppp"> (<asp:Label ID="waterchiller_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
        </table>
        </div></div>
        <br />
        <div class="portlet"><div class="portlet-content">
            <table class="style27">
            <tr>
                <td align="left" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Miscellaneous_lb" runat="server" Font-Overline="false" CssClass="AutosMain"  ForeColor="#0172BB"
                       >Miscellaneous</asp:LinkButton>
                
               &nbsp;<img src="images/Miscellaneous.png" />
                <hr style="width: 119px" align="left" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Miscellaneous_Arts_Crafts_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Arts_Crafts_lb_Click">Arts & Crafts</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_art_crafts"  class="homeAdsNavAnchor autosmain" >Arts & Crafts</a>
                        <span class="pppp">(<asp:Label ID="art_craft_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Miscellaneous_Books_Magazines_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Books_Magazines_lb_Click">Books & Magazines</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_book_magazines"  class="homeAdsNavAnchor autosmain" >Books & Magazines</a>
                      <span class="pppp">  (<asp:Label ID="books_magazines_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Miscellaneous_Clothing_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Clothing_lb_Click">Clothing</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_clothing"  class="homeAdsNavAnchor autosmain" >Clothing</a>
                       <span class="pppp"> (<asp:Label ID="clothing_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Miscellaneous_Eating_Outlets_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Eating_Outlets_lb_Click">Eating Outlets</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_eating_outlets"  class="homeAdsNavAnchor autosmain" >Eating Outlets</a>
                        <span class="pppp">(<asp:Label ID="eatingoutlets_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Miscellaneous_Guns_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Miscellaneous_Guns_lb_Click">Guns</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_guns"  class="homeAdsNavAnchor autosmain" >Guns</a>
                        <span class="pppp"> (<asp:Label ID="gun_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Miscellaneous_Pets_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Miscellaneous_Pets_lb_Click">Pets</asp:LinkButton>--%>
                     <a href="showdata.aspx?attr=ad_miscellaneous_pets"  class="homeAdsNavAnchor autosmain" >Pets</a>
                        <span class="pppp">(<asp:Label ID="pets_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Miscellaneous_Jewelery_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Jewelery_lb_Click">Jewelery</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_miscellaneous_jewelery"  class="homeAdsNavAnchor autosmain" >Jewelery</a>
                         <span class="pppp">(<asp:Label ID="jewelery_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
          
        </table>
        </div></div>
        <br /> 
        <div class="portlet"><div class="portlet-content">
    <table class="style27">
            <tr>
                <td align="left" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Services_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Services</asp:LinkButton>
                
                 &nbsp;<img src="images/Services.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Services_Other_Services_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Services_Other_Services_lb_Click">Other Services</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_services"  class="homeAdsNavAnchor autosmain" >Other Services</a>
                        <span class="pppp">(<asp:Label ID="otherservices_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
       
    </div></div>
    </div>
    </div>
  
    <div class="Rightcontentpages">
      <div class="column">
      <div class="portlet"><div class="portlet-content">
    <table class="style27">
            <tr>
                <td align="left" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Electronics_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Electronics</asp:LinkButton>
                
                &nbsp;<img src="images/Electronics.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Electronics_Computer_Acessories_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Computer_Acessories_lb_Click">Computer Accessories</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_elecronics_computer_accessories"  class="homeAdsNavAnchor autosmain" >Computer Accessories</a>
                        <span class="pppp"> (<asp:Label ID="computer_accessories_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Electronics_Computers_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Computers_lb_Click">Computers</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_computer"  class="homeAdsNavAnchor autosmain" >Computers</a>
                        <span class="pppp">(<asp:Label ID="computers_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Electronics_Laptops_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Laptops_lb_Click">Laptops</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_laptops"  class="homeAdsNavAnchor autosmain" >Laptops</a>
                       <span class="pppp"> (<asp:Label ID="laptop_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Electronics_Mobile_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Electronics_Mobile_lb_Click">Mobile</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_mobile"  class="homeAdsNavAnchor autosmain" >Mobile</a>
                       <span class="pppp"> (<asp:Label ID="mobile_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Electronics_Mobile_Accessories_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Mobile_Accessories_lb_Click">Mobile Accessories</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_mobile_accessories"  class="homeAdsNavAnchor autosmain" >Mobile Accessories</a>
                       <span class="pppp"> (<asp:Label ID="mobile_accessories_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Electronics_Other_Electronics_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Other_Electronics_lb_Click">Other Electronics</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_other_electronics"  class="homeAdsNavAnchor autosmain" >Other Electronics</a>
                       <span class="pppp"> (<asp:Label ID="otherelectronic_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Electronics_Softwares_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Softwares_lb_Click">Softwares</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_electronics_software"  class="homeAdsNavAnchor autosmain" >Softwares</a>
                      <span class="pppp">  (<asp:Label ID="software_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
        </div></div>
   
         </br>
         <div class="portlet"><div class="portlet-content">
          <table class="style27">
            <tr>
                <td align="left" style="cursor: all-scroll;">
                    <asp:LinkButton ID="Events_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Events</asp:LinkButton>
                
&nbsp;<img src="images/events.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Events_Annoucements_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Annoucements_lb_Click">Annoucements</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_announcements"  class="homeAdsNavAnchor autosmain" >Annoucements</a>
                        <span class="pppp"> (<asp:Label ID="announcement_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <%--<asp:LinkButton ID="Events_Auctions_lb" runat="server" Font-Overline="false" CssClass="autosmain" ForeColor="#0172BB"
                        onclick="Events_Auctions_lb_Click">Auctions</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_auctions"  class="homeAdsNavAnchor autosmain" >Auctions</a>
                       <span class="pppp"> (<asp:Label ID="acution_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Events_Lots_funds_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Events_Lots_funds_lb_Click">Lots funds</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_lots_funds"  class="homeAdsNavAnchor autosmain" >Lots funds</a>
                       <span class="pppp"> (<asp:Label ID="lotsfunds_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <%--<asp:LinkButton ID="Events_Personals_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Events_Personals_lb_Click">Personals</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_personals"  class="homeAdsNavAnchor autosmain" >Personals</a>
                       <span class="pppp"> (<asp:Label ID="personal_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Events_Special_Events_Ocassions_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Special_Events_Ocassions_lb_Click">Special Events-Ocassions</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_special_events_occasions"  class="homeAdsNavAnchor autosmain" >Special Events-Ocassions</a>
                       <span class="pppp"> (<asp:Label ID="special_events_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <%--<asp:LinkButton ID="Events_Tender_Notice_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Tender_Notice_lb_Click">Tender Notice</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_events_special_tender_notice"  class="homeAdsNavAnchor autosmain" >Tender Notice</a>
                       <span class="pppp"> (<asp:Label ID="tendernotice_counter_lb" runat="server" ></asp:Label>)</span>
                    <br />
                </td>
            </tr>
            
        </table>
        </div></div>
         </br> 
         <div class="portlet"style="cursor: all-scroll;" ><div class="portlet-content">
            <table class="style27">
            <tr>
                <td align="left" class="style34">
                    <asp:LinkButton ID="Matrimonial_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB" 
                       >Matrimonial</asp:LinkButton>
                
              &nbsp;<img src="images/Matrimonial.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style33">
                    <%--<asp:LinkButton ID="Matrimonial_Brides_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Matrimonial_Brides_lb_Click">Brides</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_matrimonial_brides"  class="homeAdsNavAnchor autosmain" >Brides</a>
                        <span class="pppp">(<asp:Label ID="brides_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style35">
                   <%-- <asp:LinkButton ID="Matrimonial_Grooms_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Matrimonial_Grooms_lb_Click">Grooms</asp:LinkButton>--%>
                    <a href="showdata.aspx?attr=ad_matrimonial_grooms"  class="homeAdsNavAnchor autosmain" >Grooms</a>
                        <span class="pppp">(<asp:Label ID="groom_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
        </div></div>
    </div>        
    </div>

 
      </div> </div>
    
       <br /><br />
       <!-- <div class="centrediv">-->
      
     <!--   <asp:PlaceHolder  ID="body_ph" runat="server" >
            
            </asp:PlaceHolder>
            -->


            

            
            <div class="belowcentrediv">
           
       
        <link rel="stylesheet" type="text/css" href="Styles/pagination-style.css"
         media="screen"/>
        <style type="text/css">
     
            .demo{
                width:325px;
                padding:10px;
                margin:10px auto;
                border: 1px solid #fff;
                background-color:#f7f7f7;
                height: 141px;
            }
          
			.pagedemo{
				border: 1px solid #CCC;
				width:310px;
				margin:2px;
                padding:50px 10px;
                text-align:center;
				background-color:white;	
			}
        </style>
   
      
      <%--
			<div id="paginationdemo" class="demo">
                   --%>
               <%-- <div id="p1" class="pagedemo _current">method not call</div>
				<div id="p2" class="pagedemo" style="display:none;">Page 2</div>
				<div id="p3" class="pagedemo" style="display:none;">Page 3</div>
				<div id="p4" class="pagedemo" style="display:none;">Page 4</div>
				<div id="p5" class="pagedemo" style="display:none;">Page 5</div>
				<div id="p6" class="pagedemo" style="display:none;">Page 6</div>
				<div id="p7" class="pagedemo" style="display:none;">Page 7</div>
				<div id="p8" class="pagedemo" style="display:none;">Page 8</div>
				<div id="p9" class="pagedemo" style="display:none;">Page 9</div>
				<div id="p10" class="pagedemo" style="display:none;">Page 10</div>--%>
				<%--<div id="demo5"> --%>                  
               <%-- </div>--%>  
          
     
        
		<%--<script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>--%>
		<script src="Scripts/jquery.paginate.js" type="text/javascript"></script>
		<script type="text/javascript">
		    $(function () {

		        $("#demo5").paginate({
		            count: 10,
		            start: 1,
		            display: 7,
		            border: true,
		            border_color: '#fff',
		            text_color: '#fff',
		            background_color: 'black',
		            border_hover_color: '#ccc',
		            text_hover_color: '#000',
		            background_hover_color: '#fff',
		            images: false,
		            mouse: 'press',
		            onChange: function (page) {
		                $('._current', '#paginationdemo').removeClass('_current').hide();
		                $('#p' + page).addClass('_current').show();
		                $.ajax({
		                    type: "get",
		                    url: "addata.aspx",
		                    success: function (respo) {
		                        // alert('Data Successfully loaded' + respo);
		                        $('#p' + page).html(respo);
		                    },

		                    error: function () { alert('Error'); }
		                });
		            }
		        });


		        $('#button1').click(function () {
		            $.ajax({
		                type: "get",
		                url: "addata.aspx",
		                success: function (respo) {
		                     alert('Data Successfully loaded' + respo);
		                    //$('#p' + page).html(respo);
		                },

		                error: function () { alert('Error'); }
		            });
                });//end button1 click
		    });
		</script>

 
                    <br />



            
            </div>
            
          
    <%--    </div>
        
      
  
 </div>--%>

        <div class="clear">                    
    </div>


  </asp:Content>
  