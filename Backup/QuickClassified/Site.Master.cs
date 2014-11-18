using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using QuickClassified.DAO;
using System.Web.UI.HtmlControls;
using QuickClassified.Bean;


namespace QuickClassified
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("Register.aspx");  
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            searchBean.title = TextBox1.Text;
            if(TextBox2.Text.Equals("") ){
            
            searchBean.minprice = 1;
            
            
            }
            else if (TextBox3.Text.Equals("")) {
                searchBean.maxprice = 1;
            }
            else
            {
                searchBean.minprice = Convert.ToInt32(TextBox2.Text);
                searchBean.maxprice = Convert.ToInt32(TextBox3.Text);
            }
                searchBean.city = DropDownList1.SelectedValue.ToString();
            searchBean.tablename = DropDownList2.SelectedValue.ToString();
            Response.Redirect("~/search.aspx");
        }

        protected void accordian_autos_cars_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_car";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_car");
        }

        protected void accordian_autos_auto_parts_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_auto_parts";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_auto_parts");
        }

        protected void accordian_autos_boat_and_ships_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_boats_ships";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_boats_ships");
        }

        protected void accordian_autos_heavy_vehicle_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_heavy_vehicle";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_heavy_vehicle");
        }

        protected void accordian_autos_motorcycle_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_motor_vehicle";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_motor_vehicle");
        }

        protected void accordian_autos_other_vehicle_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_autos_other_vehicle";
            Response.Redirect("~/showdata.aspx?attr=ad_autos_other_vehicle");
        }

        protected void accordian_home_appliances_air_conditioner_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_air_conditioner";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_air_conditioner");
        }

        protected void accordian_home_appliances_fridge_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_fridge";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_fridge");
        }

        protected void accordian_home_appliances_furniture_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_furniture";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_furniture");
        }

        protected void accordian_home_appliances_other_home_appliances_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_other_home_appliances";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_other_home_appliances");
        }

        protected void accordian_home_appliances_tv_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_tv";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_tv");
        }

        protected void accordian_home_appliances_vaccum_cleaner_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_vacume_cleaner_";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_vacume_cleaner_");
        }

        protected void accordian_home_appliances_water_chiller_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_home_appliances_water_chiller";
            Response.Redirect("~/showdata.aspx?attr=ad_home_appliances_water_chiller");
        }

        protected void accordian_electronics_computer_accessories_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_elecronics_computer_accessories";
            Response.Redirect("~/showdata.aspx?attr=ad_elecronics_computer_accessories");
        }

        protected void accordian_electronics_computer_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_computer";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_computer");
        }

        protected void accordian_electronics_laptops_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_laptops";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_laptops");
        }

        protected void accordian_electronics_mobile_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_mobile";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_mobile");
        }

        protected void accordian_electronics_mobile_accessories_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_mobile_accessories";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_mobile_accessories");
        }

        protected void accordian_electronics_other_electronics_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_other_electronics";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_other_electronics");
        }

        protected void accordian_electronics_softwares_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_electronics_software";
            Response.Redirect("~/showdata.aspx?attr=ad_electronics_software");
        }

        protected void accordian_education_computer_institutes_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_computer_institutes";
            Response.Redirect("~/showdata.aspx?attr=ad_education_computer_institutes");
        }

        protected void accordian_education_cooking_classes_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_cooking_classes";
            Response.Redirect("~/showdata.aspx?attr=ad_education_cooking_classes");
        }

        protected void accordian_education_home_tuitions_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_home_tution";
            Response.Redirect("~/showdata.aspx?attr=ad_education_home_tution");
        }

        protected void accordian_education_language_academiess_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_launage_academies";
            Response.Redirect("~/showdata.aspx?attr=ad_education_launage_academies");
        }

        protected void accordian_education_montessori_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_montessori";
            Response.Redirect("~/showdata.aspx?attr=ad_education_montessori");
        }

        protected void accordian_education_private_tutors_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_private_tutors";
            Response.Redirect("~/showdata.aspx?attr=ad_education_private_tutors");
        }

        protected void accordian_education_schools_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_schools";
            Response.Redirect("~/showdata.aspx?attr=ad_education_schools");
        }

        protected void accordian_education_short_courses_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_short_courses";
            Response.Redirect("~/showdata.aspx?attr=ad_education_short_courses");
        }

        protected void accordian_education_technical_institutes_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_education_short_courses";
            Response.Redirect("~/showdata.aspx?attr=ad_education_short_courses");
        }

        protected void accordian_miscellenous_arts_and_crafts_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_art_crafts";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_art_crafts");
        }

        protected void accordian_miscellenous_books_and_magazines_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_book_magazines";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_book_magazines");
        }

        protected void accordian_miscellenous_clothing_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_clothing";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_clothing");
        }

        protected void accordian_miscellenous_eating_outlets_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_eating_outlets";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_eating_outlets");
        }

        protected void accordian_miscellenous_guns_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_guns";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_guns");
        }

        protected void accordian_miscellenous_pets_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_pets";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_pets");
        }

        protected void accordian_miscellenous_jewellery_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_miscellaneous_jewelery";
            Response.Redirect("~/showdata.aspx?attr=ad_miscellaneous_jewelery");
        }

        protected void accordian_events_announcements_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_announcements";
            Response.Redirect("~/showdata.aspx?attr=ad_events_announcements");
        }

        protected void accordian_events_auctions_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_auctions";
            Response.Redirect("~/showdata.aspx?attr=ad_events_auctions");
        }

        protected void accordian_events_losts_and_funds_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_lots_funds";
            Response.Redirect("~/showdata.aspx?attr=ad_events_lots_funds");
        }

        protected void accordian_events_personals_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_personals";
            Response.Redirect("~/showdata.aspx?attr=ad_events_personals");
        }

        protected void accordian_events_special_evens_and_occassions_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_special_events_occasions";
            Response.Redirect("~/showdata.aspx?attr=ad_events_special_events_occasions");
        }

        protected void accordian_events_tender_notices_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_events_special_tender_notice";
            Response.Redirect("~/showdata.aspx?attr=ad_events_special_tender_notice");
        }

        protected void accordian_real_estate_appartments_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_real_estate_appartment";
            Response.Redirect("~/showdata.aspx?attr=ad_real_estate_appartment");
        }

        protected void accordian_real_estate_houses_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_real_estate_houses";
            Response.Redirect("~/showdata.aspx?attr=ad_real_estate_houses");
        }

        protected void accordian_real_estate_offices_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_real_estate_offices";
            Response.Redirect("~/showdata.aspx?attr=ad_real_estate_offices");
        }

        protected void accordian_real_estate_plots_and_lands_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_real_estate_plots_lands";
            Response.Redirect("~/showdata.aspx?attr=ad_real_estate_plots_lands");
        }

        protected void accordian_real_estate_shops_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_real_estate_shops";
            Response.Redirect("~/showdata.aspx?attr=ad_real_estate_shops");
        }

        protected void accordian_services_other_services_lb_Click(object sender, EventArgs e)
        {
            autosBean.autos_category_bean = "ad_services";
            Response.Redirect("~/showdata.aspx?attr=ad_services");
        }

        protected void accordian_Matrimonial_brides_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_matrimonial_brides";
            Response.Redirect("~/showdata.aspx?attr=ad_matrimonial_brides");
        }

        protected void accordian_Matrimonial_grooms_lb_Click(object sender, EventArgs e)
        {
            //autosBean.autos_category_bean = "ad_matrimonial_grooms";
            Response.Redirect("~/showdata.aspx?attr=ad_matrimonial_grooms");
        }
     }
}
