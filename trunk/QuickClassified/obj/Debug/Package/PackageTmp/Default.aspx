﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="QuickClassified._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="all" />
<title>jQuery Vertical Accordion Menu Plugin v 2.6</title>

</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent" >
   
    <!---   
    <div id="contentpages" style="width:auto; height:auto;">
  
        </div>
   -->
 <div class="centrediv" align="center">
         <div id="contentpages" style="width:auto; height:585px;" align="center">

         <div>
    <div class="Letfcontentpages">
        <table class="style27" >
            <tr >
                <td align="left" class="style31">
                    <asp:LinkButton ID="autos_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Autos</asp:LinkButton>
                
                &nbsp;<img src="images/Autos.png" />
                <hr style="width: 119px; height: -12px;" align="left"  />
                </td>
            </tr>
            <tr  >
                <td align="left" class="style28" id="Auto Parts" >
                    <asp:LinkButton ID="autos_Parts_lb" runat="server" Font-Overline="false" ForeColor="#0172BB"  CssClass="autosmain"
                        onclick="autos_Parts_lb_Click">Auto Parts</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="autosparts_counter_lb" runat="server" ></asp:Label>)
                    </span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29" >
                    <asp:LinkButton ID="autos_Boats_Ships_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="autos_Boats_Ships_lb_Click">Boats-Ships</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="boat_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="autos_car_lb" runat="server" Font-Overline="false" ForeColor="#0172BB"  CssClass="autosmain"
                        onclick="autos_car_lb_Click">Cars</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="car_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="autos_Heavy_Vehicles_lb" runat="server"  CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="autos_Heavy_Vehicles_lb_Click" >Heavy Vehicles</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="heavyvehicles_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="autos_Motorcycles_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="autos_Motorcycles_lb_Click">Motorcycles</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="motercycles_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                   
                    <asp:LinkButton ID="autos_Other_Vehicles_lb" runat="server"  Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain" OnClick="autos_Other_Vehicles_lb_Click">Other Vehicle</asp:LinkButton>
                    <span class="pppp">(<asp:Label ID="othersvehicle_counter_lb" runat="server"></asp:Label>)</span>
                   
                </td>
            </tr>
        </table>
       <br /><br />
          <table class="style27">
            <tr>
                <td align="left">
                    <asp:LinkButton ID="Education_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Education</asp:LinkButton>
                
                 &nbsp;<img src="images/Education.png" />
                <hr style="width: 119px" align="left" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Computer_Insitutes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Computer_Insitutes_lb_Click">Computer Insitutes</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="computerinstitute_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Education_Cooking_Classes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Cooking_Classes_lb_Click">Cooking Classes</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="cookingclasses_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Education_Home_Tutions_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Home_Tutions_lb_Click">Home Tutions</asp:LinkButton>
                        <span class="pppp"> (<asp:Label ID="hometuction_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Education_Launage_Academies_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Launage_Academies_lb_Click">Launage Academies</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="languages_academes_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Montessori_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Montessori_lb_Click">Montessori</asp:LinkButton>
                        <span class="pppp"> (<asp:Label ID="montessori_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Private_Tutors_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Private_Tutors_lb_Click">Private Tutors</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="private_tutors_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Schools_lb" runat="server" Font-Overline="false" CssClass="autosmain" ForeColor="#0172BB"
                        onclick="Education_Schools_lb_Click">Schools</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="schools_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Short_Courses_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Short_Courses_lb_Click">Short Courses</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="shorts_courses_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Education_Technical_Insitutes_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Education_Technical_Insitutes_lb_Click">Technical Insitutes</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="technical_institutes_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
        </table>
        <br />
   <table class="style27">
            <tr>
                <td align="left" class="style31">
                    <asp:LinkButton ID="Real_Estates_lb" runat="server" Font-Overline="false" CssClass="AutosMain"  ForeColor="#0172BB"
                       >Real Estates</asp:LinkButton>
                 &nbsp;<img src="images/RealEstate.png" dir="ltr" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Real_Estates_Appartments_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Appartments_lb_Click">Appartments</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="appartments_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Real_Estates_Houses_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Houses_lb_Click">Houses</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="houses_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Real_Estates_Offices_lb" runat="server" CssClass="autosmain"  ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Offices_lb_Click">Offices</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="offices_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Real_Estates_Plots_Lands_lb" runat="server" CssClass="autosmain"  ForeColor="#0172BB"
                        Font-Overline="false" onclick="Real_Estates_Plots_Lands_lb_Click">Plots Lands</asp:LinkButton>
                      <span class="pppp">  (<asp:Label ID="plots_lands_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Real_Estates_Shops_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Real_Estates_Shops_lb_Click">Shops</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="shops_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
  
        
      
        
           
        </div>
    <div class="Centercontentpages">
    <table class="style27">
            <tr>
                <td align="left" class="style31">
                    <asp:LinkButton ID="Home_Appliances_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Home Appliances</asp:LinkButton>
                &nbsp;<img src="images/homeappliances.png" />
                <hr  style="width: 137px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28" id="ad_home_appliances_air_conditioner">
                    <asp:LinkButton ID="Home_Appliances_Air_conditioner_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Air_conditioner_lb_Click">Air Conditioner</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="airconditioner_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Home_Appliances_Fridge_lb" runat="server" 
                        Font-Overline="false" ForeColor="#0172BB" onclick="Home_Appliances_Fridge_lb_Click">Fridge</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="fridge_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Home_Appliances_Furniture_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Furniture_lb_Click">Furniture</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="furniture_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Home_Appliances_Other_Home_Appliances_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Other_Home_Appliances_lb_Click">Other Home Appliances</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="otherhomeappliences_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Home_Appliances_tv_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Home_Appliances_tv_lb_Click">TV</asp:LinkButton>
                      <span class="pppp">  (<asp:Label ID="tv_counter_lb" runat="server"></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Home_Appliances_Vacume_cleaner_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Vacume_cleaner_lb_Click">Vacume cleaner</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="vacumecleaner_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Home_Appliances_Water_Chiller_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Home_Appliances_Water_Chiller_lb_Click">Water Chiller</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="waterchiller_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
        </table>
        <br />
            <table class="style27">
            <tr>
                <td align="left">
                    <asp:LinkButton ID="Miscellaneous_lb" runat="server" Font-Overline="false" CssClass="AutosMain"  ForeColor="#0172BB"
                       >Miscellaneous</asp:LinkButton>
                
               &nbsp;<img src="images/Miscellaneous.png" />
                <hr style="width: 119px" align="left" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Miscellaneous_Arts_Crafts_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Arts_Crafts_lb_Click">Arts & Crafts</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="art_craft_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Miscellaneous_Books_Magazines_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Books_Magazines_lb_Click">Books & Magazines</asp:LinkButton>
                      <span class="pppp">  (<asp:Label ID="books_magazines_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Miscellaneous_Clothing_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Clothing_lb_Click">Clothing</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="clothing_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Miscellaneous_Eating_Outlets_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Eating_Outlets_lb_Click">Eating Outlets</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="eatingoutlets_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Miscellaneous_Guns_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Miscellaneous_Guns_lb_Click">Guns</asp:LinkButton>
                        <span class="pppp"> (<asp:Label ID="gun_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Miscellaneous_Pets_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Miscellaneous_Pets_lb_Click">Pets</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="pets_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Miscellaneous_Jewelery_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Miscellaneous_Jewelery_lb_Click">Jewelery</asp:LinkButton>
                         <span class="pppp">(<asp:Label ID="jewelery_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
          
        </table>
        <br /> <br /> <br />
    <table class="style27">
            <tr>
                <td align="left">
                    <asp:LinkButton ID="Services_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Services</asp:LinkButton>
                
                 &nbsp;<img src="images/Services.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Services_Other_Services_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Services_Other_Services_lb_Click">Other Services</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="otherservices_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
    
    </div>
    <div class="Rightcontentpages">
    <table class="style27">
            <tr>
                <td align="left">
                    <asp:LinkButton ID="Electronics_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Electronics</asp:LinkButton>
                
                &nbsp;<img src="images/Electronics.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Electronics_Computer_Acessories_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Computer_Acessories_lb_Click">Computer Accessories</asp:LinkButton>
                        <span class="pppp"> (<asp:Label ID="computer_accessories_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Electronics_Computers_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Computers_lb_Click">Computers</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="computers_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Electronics_Laptops_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Laptops_lb_Click">Laptops</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="laptop_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Electronics_Mobile_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Electronics_Mobile_lb_Click">Mobile</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="mobile_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Electronics_Mobile_Accessories_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Mobile_Accessories_lb_Click">Mobile Accessories</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="mobile_accessories_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Electronics_Other_Electronics_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Other_Electronics_lb_Click">Other Electronics</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="otherelectronic_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Electronics_Softwares_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Electronics_Softwares_lb_Click">Softwares</asp:LinkButton>
                      <span class="pppp">  (<asp:Label ID="software_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
   
         </br>
          <table class="style27">
            <tr>
                <td align="left">
                    <asp:LinkButton ID="Events_lb" runat="server" Font-Overline="false" CssClass="AutosMain" ForeColor="#0172BB"
                       >Events</asp:LinkButton>
                
&nbsp;<img src="images/events.png" />
                <hr  style="width: 119px" align="left"/>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Events_Annoucements_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Annoucements_lb_Click">Annoucements</asp:LinkButton>
                        <span class="pppp"> (<asp:Label ID="announcement_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style29">
                    <asp:LinkButton ID="Events_Auctions_lb" runat="server" Font-Overline="false" CssClass="autosmain" ForeColor="#0172BB"
                        onclick="Events_Auctions_lb_Click">Auctions</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="acution_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Events_Lots_funds_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Events_Lots_funds_lb_Click">Lots funds</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="lotsfunds_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style30">
                    <asp:LinkButton ID="Events_Personals_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Events_Personals_lb_Click">Personals</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="personal_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Events_Special_Events_Ocassions_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Special_Events_Ocassions_lb_Click">Special Events-Ocassions</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="special_events_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style28">
                    <asp:LinkButton ID="Events_Tender_Notice_lb" runat="server" CssClass="autosmain" ForeColor="#0172BB"
                        Font-Overline="false" onclick="Events_Tender_Notice_lb_Click">Tender Notice</asp:LinkButton>
                       <span class="pppp"> (<asp:Label ID="tendernotice_counter_lb" runat="server" ></asp:Label>)</span>
                    <br />
                </td>
            </tr>
            
        </table>
         </br> </br> </br> <br />
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
                    <asp:LinkButton ID="Matrimonial_Brides_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Matrimonial_Brides_lb_Click">Brides</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="brides_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            <tr>
                <td align="left" class="style35">
                    <asp:LinkButton ID="Matrimonial_Grooms_lb" runat="server" Font-Overline="false" ForeColor="#0172BB" CssClass="autosmain"
                        onclick="Matrimonial_Grooms_lb_Click">Grooms</asp:LinkButton>
                        <span class="pppp">(<asp:Label ID="groom_counter_lb" runat="server" ></asp:Label>)</span>
                </td>
            </tr>
            
        </table>
            
    </div>
  </div>
      </div> 
      </div>
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
          
     
        
		<script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
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
  