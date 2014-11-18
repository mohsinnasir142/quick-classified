using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using QuickClassified.DAO;
using System.Windows.Forms;
using System.Web.Security;
using System.Drawing;


namespace QuickClassified.Ads
{
    public partial class postad : System.Web.UI.Page
    {
        public string imagepath;

        temp_DAO obj = new temp_DAO();
        ads_autos_DAO objinsert=new ads_autos_DAO();
        ad_education_DAO eduobj = new ad_education_DAO();
        ad_electronics_DAO elecobj = new ad_electronics_DAO();
        ad_events_DAO eventobj = new ad_events_DAO();
        ad_home_appliances_DAO homeobj = new ad_home_appliances_DAO();
        ad_matrimonial_DAO matriobj = new ad_matrimonial_DAO();
        ad_miscllaneous_DAO miscobj = new ad_miscllaneous_DAO();
        ad_real_estate_DAO realobj = new ad_real_estate_DAO();
        ad_services_DAO servicobj = new ad_services_DAO();



      
        protected void Page_Load(object sender, EventArgs e)
        {

            
           
            //this.selectlocation("Lahore");
            subcategory_label.Visible = true;
            DropDownList1.Visible = true;
            Autos_cars_up1.Visible = false;
            Autos_motorcycles_up.Visible = false;
            Autos_heavy_vehicle_up.Visible = false;
            autos_autos_parts_up.Visible = false;
            autos_boat_ship_up.Visible = false;
            autos_other_vehicles_up.Visible = false;
            education_computer_institutes_up.Visible=false;
            education_cooking_classes_up.Visible = false;
            education_home_tution_up.Visible = false;
            education_launage_Academies_up.Visible = false;
            education_montesori_up.Visible = false;
            education_private_tutors_up.Visible = false;
            education_schools_up.Visible = false;
            education_short_courses_up.Visible = false;
            education_technical_institute_up.Visible = false;
            electronics_computer_accessories_up.Visible = false;
            electronics_computers_up.Visible = false;
            electronics_mobiles_up.Visible = false;
            electronics_laptops_up.Visible = false;
            electronics_mobile_accessories_up.Visible = false;
            electronics_other_electronics_up.Visible = false;
            electronics_softwares_up.Visible = false;
            events_announcements_up.Visible = false;
            events_auctions_up.Visible = false;
            events_Losts_Funds_up.Visible = false;
            events_Personals_up.Visible = false;
            events_Tender_Notice_up.Visible = false;
            events_Special_Events_Occasions_up.Visible = false;
            Home_Appliances_Air_Conditioner_up.Visible = false;
            Home_Appliances_Fridge_up.Visible = false;
            Appliances_Furniture_up.Visible = false;
            Home_Appliances_Tv_up.Visible = false;
            Home_Appliances_Vacume_Cleaner_up.Visible = false;
            Home_Appliances_Water_Chiller_up.Visible = false;
            Home_Appliances_Other_Home_Appliances_up.Visible = false;
            Matrimonial_Brides_up.Visible = false;
            Matrimonial_groom_up.Visible = false;
            Miscellaneous_Air_Crafts_up.Visible = false;
            Miscellaneous_Books_Magazines_up.Visible = false;
            Miscellaneous_Clothing_up.Visible = false;
            Miscellaneous_Eating_Outlets_up.Visible = false;
            Miscellaneous_Guns_up.Visible = false;
            Miscellaneous_Jewelery_up.Visible = false;
            Miscellaneous_Pets_up.Visible = false;
            Real_Estates_Appartments_up.Visible = false;
            Real_Estates_Offices_up.Visible = false;
            Real_Estates_plots_lands_up.Visible = false;
            Real_Estates_shops_up.Visible = false;
            Services_up.Visible = false;
             Real_Estates_Houses_up.Visible = false;
             success_up.Visible = false;
             fail_up.Visible = false;
             exception_up.Visible = false;
            

            
        }
      
   
        protected void autos_cars_post_ad_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try{
                objinsert.insert_ad_autos_car(autos_cars_title_tf.Text, autos_cars_city_dd.SelectedValue.ToString(), autos_cars_location_tf.Text, autos_car_content_tf.Text, autos_car_usertype_dd.SelectedValue.ToString(), Convert.ToInt32(autos_cars_price_tf.Text), StartUpLoad(FileUpload1,newUserId), autos_cars_maker_dd.SelectedValue.ToString(), autos_car_model_tf.Text, autos_cars_year_dd.SelectedValue.ToString(), autos_cars_condition_dd.SelectedValue.ToString(), autos_cars_transmission_dd.SelectedValue.ToString(), autos_cars_engine_type_dd.SelectedValue.ToString(), autos_cars_mileage_tf.Text, autos_cars_colour_tf.Text, Convert.ToInt32(autos_cars_engine_capacity_tf.Text), autos_cars_power_steering_cb.Checked.ToString(), autos_cars_power_lock_cb.Checked.ToString(), autos_cars_power_windows_cb.Checked.ToString(), autos_cars_radio_cb.Checked.ToString(), autos_cars_cd_player_cb.Checked.ToString(), autos_cars_drive_air_bags.Checked.ToString(), autos_cars_sun_roof_cb.Checked.ToString(), autos_cars_abs_cb.Checked.ToString(), autos_cars_tracker_cb.Checked.ToString(), autos_cars_air_conditioning_cb.Checked.ToString(), autos_cars_pessenger_cb.Checked.ToString(), DateTime.Now, newUserId,0);
              
              temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), autos_cars_title_tf.Text, autos_car_content_tf.Text, DateTime.Now, autos_cars_price_tf.Text, autos_cars_city_dd.SelectedValue.ToString(), newUserId);
              Autos_cars_up1.Visible = false;
              success_up.Visible = true;
            }
            catch(Exception ex) {
                
                Autos_cars_up1.Visible = false;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
            }

        protected void autos_autos_parts_button_Click(object sender, EventArgs e)
        {
            
                MembershipUser newUser = Membership.GetUser(true);
                Guid newUserId = (Guid)newUser.ProviderUserKey;
                try
                {
                    objinsert.insert_ad_autos_auto_parts(autos_autos_parts_title_tf.Text, autos_autos_parts_city_dd.SelectedValue.ToString(), autos_autos_parts_location_tf.Text, autos_autos_parts_content_tf.Text, autos_autos_parts_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(autos_autos_parts_price_tf.Text), StartUpLoad(autos_autos_parts_price_image_upload,newUserId), DateTime.Now, newUserId,0);

                    temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), autos_autos_parts_title_tf.Text, autos_autos_parts_content_tf.Text, DateTime.Now, autos_autos_parts_price_tf.Text, autos_autos_parts_city_dd.SelectedValue.ToString(), newUserId);
                    autos_autos_parts_up.Visible = false;
                    success_up.Visible = true;

                }
                catch (Exception ex)
                {


                    autos_autos_parts_up.Visible = false;
                    exception_up.Visible = true;
                    exception_lb.Text = ex.Message;
                    fail_up.Visible = true;

                }



            }
        

        protected void autos_boat_ship_button_Click(object sender, EventArgs e)
        {
           
                MembershipUser newUser = Membership.GetUser(true);
                Guid newUserId = (Guid)newUser.ProviderUserKey;
                try
                {
                    objinsert.insert_ad_autos_boats_ships(autos_boat_ship_title_tf.Text, autos_boat_ship_city_dd.SelectedValue.ToString(), autos_boat_ship_location_tf.Text, autos_boat_ship_content_tf.Text, autos_boat_ship_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(autos_boat_ship_price_tf.Text), StartUpLoad(autos_boat_ship_price_image_upload,newUserId), DateTime.Now, newUserId,0);


                    temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), autos_boat_ship_title_tf.Text, autos_boat_ship_content_tf.Text, DateTime.Now, autos_boat_ship_price_tf.Text, autos_boat_ship_city_dd.SelectedValue.ToString(), newUserId);
                    autos_boat_ship_up.Visible = false;
                    success_up.Visible = true;
                }
                catch (Exception ex)
                {
                    autos_boat_ship_up.Visible = false;
                    exception_up.Visible = true;
                    exception_lb.Text = ex.Message;
                    fail_up.Visible = true;

                }

            
        }

        protected void autos_heavy_vehicles_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try{
                objinsert.insert_ad_autos_heavy_vehicle(autos_heavy_vehicle_title_tf.Text, autos_heavy_vehicle_city_dd.SelectedValue.ToString(), autos_heavy_vehicle_location_tf.Text, autos_heavy_vehicle__content.Text, autos_heavy_vehicle_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(autos_heavy_vehicle_price_tf.Text), StartUpLoad(autos_heavy_vehicle_price_image_upload,newUserId), autos_heavy_vehicle_maker_tf.Text, autos_heavy_vehicle_model_tf.Text, autos_heavy_vehicle_year_dd.SelectedValue.ToString(), autos_heavy_vehicle_condition_dd.SelectedValue.ToString(), autos_heavy_vehicle_mileage_tf.Text, autos_heavy_vehicle_colour_tf.Text, autos_heavy_vehicle_engine_capacity_tf.Text, DateTime.Now, newUserId,0);
            
                
                temp_DAO.temp_data( item_name_dropdown.SelectedValue.ToString(), autos_heavy_vehicle_title_tf.Text, autos_heavy_vehicle__content.Text, DateTime.Now, autos_heavy_vehicle_price_tf.Text, autos_heavy_vehicle_city_dd.SelectedValue.ToString(), newUserId);
                Autos_heavy_vehicle_up.Visible = false;
                success_up.Visible = true;

            }
            catch(Exception ex) {
                
                Autos_heavy_vehicle_up.Visible = false;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
            }

        protected void autos_motorcycle_button_Click(object sender, EventArgs e)
        {
            
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
            objinsert.insert_ad_autos_motor_vehicle(autos_motorcycle_title_tf.Text, autos_motorcycle_city_dd.SelectedValue.ToString(), autos_motorcycle_location_tf.Text, autos_motorcycle_content_tf.Text, autos_motorcycle_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(autos_motorcycle_price_tf.Text), StartUpLoad(autos_motor_vehicle_upload_image1,newUserId), autos_motorcycle_maker_tf.Text, autos_motorcycle_model_tf.Text, autos_motorcycle_year_dd.SelectedValue.ToString(), autos_motorcycle_condition_dd.SelectedValue.ToString(), autos_motorcycle_mileage_tf.Text, autos_motorcycle_colour_tf.Text, autos_motorcycle_engine_capacity_tf.Text, DateTime.Now, newUserId,0);
           
                
                temp_DAO.temp_data( item_name_dropdown.SelectedValue.ToString(), autos_motorcycle_title_tf.Text, autos_motorcycle_content_tf.Text, DateTime.Now, autos_motorcycle_price_tf.Text, autos_motorcycle_city_dd.SelectedValue.ToString(), newUserId);
                Autos_motorcycles_up.Visible = false;
                success_up.Visible = true;
            }
            catch (Exception ex)
            {
            
                Autos_motorcycles_up.Visible = false;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void autos_other_vehicles_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try{
                objinsert.insert_ad_autos_other_vehicle(autos_other_vehicles_title_tf.Text, autos_other_vehicles_city_dd.SelectedValue.ToString(), autos_other_vehicles_location_tf.Text, autos_other_vehicles_content_dd.Text, autos_other_vehicles_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(autos_other_vehicles_price_tf.Text), StartUpLoad(autos_other_vehicles_price_image_upload,newUserId), DateTime.Now, newUserId,0);
            
                
                temp_DAO.temp_data( item_name_dropdown.SelectedValue.ToString(), autos_other_vehicles_title_tf.Text, autos_other_vehicles_content_dd.Text, DateTime.Now, autos_other_vehicles_price_tf.Text, autos_other_vehicles_city_dd.SelectedValue.ToString(), newUserId);
                autos_other_vehicles_up.Visible = false;
                success_up.Visible = true;
            }
          
            catch(Exception ex) {

                autos_other_vehicles_up.Visible = false;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            
            }

        }

        protected void education_computer_institutes_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_computer_institutes(education_computer_institutes_title_tf.Text, education_computer_institutes_city_dd.SelectedValue.ToString(), education_computer_institutes_location_tf.Text, education_computer_institutes_content_tf.Text, education_computer_institutes_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_computer_institutes_price_tf.Text), StartUpLoad(education_computer_institutes_price_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data( item_name_dropdown.SelectedValue.ToString(), education_computer_institutes_title_tf.Text, education_computer_institutes_content_tf.Text, DateTime.Now, education_computer_institutes_price_tf.Text, education_computer_institutes_city_dd.SelectedValue.ToString(), newUserId);
                education_computer_institutes_up.Visible = false;
                success_up.Visible = true;
            }
            catch (Exception ex) {
                education_computer_institutes_up.Visible = false;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;

            }
            }

        protected void education_cooking_classes_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_cooking_classes(education_cooking_classes_title_tf.Text, education_cooking_classes_city_dd.SelectedValue.ToString(), education_cooking_classes_location_tf.Text, education_cooking_classes_content_tf.Text, education_cooking_classes_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_cooking_classes_price_tf.Text), StartUpLoad(education_cooking_classes_price_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data( item_name_dropdown.SelectedValue.ToString(), education_cooking_classes_title_tf.Text, education_cooking_classes_content_tf.Text, DateTime.Now, education_cooking_classes_price_tf.Text, education_cooking_classes_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
           }

        protected void education_home_tution_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_home_tution(education_home_tution_title_tf.Text, education_home_tution_city_dd.SelectedValue.ToString(), education_home_tution_location_tf.Text, education_home_tution_content_tf.Text, education_home_tution_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_home_tution_price_tf.Text), StartUpLoad(education_home_tution_price_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_home_tution_title_tf.Text, education_home_tution_content_tf.Text, DateTime.Now, education_home_tution_price_tf.Text, education_home_tution_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {

                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                 fail_up.Visible = true;           
            }
            }

        protected void education_launage_Academies_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_launage_academies(education_launage_Academies_title_tf.Text, education_launage_Academies_city_dd.SelectedValue.ToString(), education_launage_Academies_location_tf.Text, education_launage_Academies_content_tf.Text, education_launage_Academies_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_launage_Academies_price_tf.Text), StartUpLoad(education_launage_Academies_price_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_launage_Academies_title_tf.Text, education_launage_Academies_content_tf.Text, DateTime.Now, education_launage_Academies_price_tf.Text, education_launage_Academies_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               fail_up.Visible = true;

               exception_up.Visible = true;
               exception_lb.Text = ex.Message;
            
            }

            }

        protected void education_montesori_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_montessori(education_montesori_title_tf.Text, education_montesori_city_dd.SelectedValue.ToString(), education_montesori_location_tf.Text, education_montesori_content_tf.Text, education_montesori_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_montesori_price_tf.Text), StartUpLoad(education_montesori_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_montesori_title_tf.Text, education_montesori_content_tf.Text, DateTime.Now, education_montesori_price_tf.Text, education_montesori_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;

                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            }
            }

        protected void education_private_tutors_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_private_tutors(education_private_tutors_title_tf.Text, education_private_tutors_city_dd.SelectedValue.ToString(), education_private_tutors_location_tf.Text, education_private_tutors_content_tf.Text, education_private_tutors_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_private_tutors_price_tf.Text), StartUpLoad(education_private_tutors_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_private_tutors_title_tf.Text, education_private_tutors_content_tf.Text, DateTime.Now, education_private_tutors_price_tf.Text, education_private_tutors_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            
            }
        }

        protected void education_schools_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_education_schools(education_schools_title_tf.Text, education_schools_city_dd.SelectedValue.ToString(), education_schools_location_tf.Text, education_schools_content_tf.Text, education_schools_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_schools_price_tf.Text), StartUpLoad(education_schools_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_schools_title_tf.Text, education_schools_content_tf.Text, DateTime.Now, education_schools_price_tf.Text, education_schools_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               fail_up.Visible = true;
               exception_up.Visible = true;
               exception_lb.Text = ex.Message;
            }
        }

        protected void education_short_courses_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_short_courses(education_short_courses_title_tf.Text, education_short_courses_city_dd.SelectedValue.ToString(), education_short_courses_location_tf.Text, education_short_courses_content_tf.Text, education_short_courses_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_short_courses_price_tf.Text), StartUpLoad(education_short_courses_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_short_courses_title_tf.Text, education_short_courses_content_tf.Text, DateTime.Now, education_short_courses_price_tf.Text, education_short_courses_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            }
        }

        protected void education_technical_institute_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eduobj.insert_ad_technical_institutes(education_technical_institute_title_tf.Text, education_technical_institute_city_dd.SelectedValue.ToString(), education_technical_institute_location_tf.Text, education_technical_institute_content_tf.Text, education_technical_institute_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(education_technical_institute_price_tf.Text), StartUpLoad(education_technical_institute_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), education_technical_institute_title_tf.Text, education_technical_institute_content_tf.Text, DateTime.Now, education_technical_institute_price_tf.Text, education_technical_institute_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            
            }
        }

        protected void electronics_computer_accessories_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_computer_accessories(electronics_computer_accessories_title_tf.Text, electronics_computer_accessories_city_dd.SelectedValue.ToString(), electronics_computer_accessories_location_tf.Text, electronics_computer_accessories_content_tf.Text, electronics_computer_accessories_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_computer_accessories_price_tf.Text), StartUpLoad(electronics_computer_accessories_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_computer_accessories_title_tf.Text, electronics_computer_accessories_content_tf.Text, DateTime.Now, electronics_computer_accessories_price_tf.Text, electronics_computer_accessories_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            }
        }

        protected void electronics_computers_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_computer(electronics_computers_title_tf.Text, electronics_computers_city_dd.SelectedValue.ToString(), electronics_computers_location_tf.Text, electronics_computers_content_tf.Text, electronics_computers_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_computers_price_tf.Text), electronics_computers_brand_dd.SelectedValue.ToString(), electronics_computers_model_tf.Text, StartUpLoad(electronics_computers_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_computers_title_tf.Text, electronics_computers_content_tf.Text, DateTime.Now, electronics_computers_price_tf.Text, electronics_computers_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                 fail_up.Visible = true;
                 exception_up.Visible = true;
                 exception_lb.Text = ex.Message;
            }
        }

        protected void electronics_laptops_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_laptops(electronics_laptops_title_tf.Text, electronics_laptops_city_dd.SelectedValue.ToString(), electronics_laptops_location_tf.Text, electronics_laptops_content_tf.Text, electronics_laptops_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_laptops_price_tf.Text), electronics_laptops_brand_dd.SelectedValue.ToString(), electronics_laptops_model_tf.Text, StartUpLoad(electronics_laptops_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_laptops_title_tf.Text, electronics_laptops_content_tf.Text, DateTime.Now, electronics_laptops_price_tf.Text, electronics_laptops_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                fail_up.Visible = true;
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
            }
        }

        protected void electronics_mobiles_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_mobile(electronics_mobiles_title_tf.Text, electronics_mobiles_city_dd.SelectedValue.ToString(), electronics_mobiles_location_tf.Text, electronics_mobiles_content_tf.Text, electronics_mobiles_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_mobiles_price_tf.Text), electronics_mobiles_brand_dd.SelectedValue.ToString(), electronics_mobiles_model_tf.Text, StartUpLoad(electronics_mobiles_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_mobiles_title_tf.Text, electronics_mobiles_content_tf.Text, DateTime.Now, electronics_mobiles_price_tf.Text, electronics_mobiles_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }

        }

        protected void electronics_mobile_accessories_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_mobile_accessories(electronics_mobile_accessories_title_tf.Text, electronics_mobile_accessories_city_dd.SelectedValue.ToString(), electronics_mobile_accessories_location_tf.Text, electronics_mobile_accessories_content_tf.Text, electronics_mobile_accessories_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_mobile_accessories_price_tf.Text), StartUpLoad(electronics_mobile_accessories_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_mobile_accessories_title_tf.Text, electronics_mobile_accessories_content_tf.Text, DateTime.Now, electronics_mobile_accessories_price_tf.Text, electronics_mobile_accessories_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void electronics_other_electronics_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_other_electronics(electronics_other_electronics_title_tf.Text, electronics_other_electronics_city_dd.SelectedValue.ToString(), electronics_other_electronics_location_tf.Text, electronics_other_electronics_content_tf.Text, electronics_other_electronics_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_other_electronics_price_tf.Text), StartUpLoad(electronics_other_electronics_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_other_electronics_title_tf.Text, electronics_other_electronics_content_tf.Text, DateTime.Now, electronics_other_electronics_price_tf.Text, electronics_other_electronics_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
        }

        protected void electronics_softwares_button_Click1(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                elecobj.insert_ad_electronics_software(electronics_softwares_title_tf.Text, electronics_softwares_city_dd.SelectedValue.ToString(), electronics_softwares_location_tf.Text, electronics_softwares_content_tf.Text, electronics_softwares_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(electronics_softwares_price_tf.Text), StartUpLoad(electronics_softwares_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), electronics_softwares_title_tf.Text, electronics_softwares_content_tf.Text, DateTime.Now, electronics_softwares_price_tf.Text, electronics_softwares_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }
        

        protected void events_announcements_button_Click1(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_announcements(events_announcements_title_tf.Text, events_announcements_city_dd.SelectedValue.ToString(), events_announcements_location_tf.Text, events_announcements_content_tf.Text, events_announcements_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_announcements_price_tf.Text), StartUpLoad(events_announcements_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_announcements_title_tf.Text, events_announcements_content_tf.Text, DateTime.Now, events_announcements_price_tf.Text, events_announcements_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
        }

        protected void events_auctions_button_Click1(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_auctions(events_auctions_title_tf.Text, events_auctions_city_dd.SelectedValue.ToString(), events_auctions_location_tf.Text, events_auctions_content_tf.Text, events_auctions_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_auctions_price_tf.Text), StartUpLoad(events_auctions_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_auctions_title_tf.Text, events_auctions_content_tf.Text, DateTime.Now, events_auctions_price_tf.Text, events_auctions_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void events_Losts_Funds_button_Click1(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_losts_funds(events_Losts_Funds_tf.Text, events_Losts_Funds_city_dd.SelectedValue.ToString(), events_Losts_Funds_location_tf.Text, events_Losts_Funds_content_tf.Text, events_Losts_Funds_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_Losts_Funds_price_tf.Text), StartUpLoad(events_losts_funds_prices_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_Losts_Funds_tf.Text, events_Losts_Funds_content_tf.Text, DateTime.Now, events_Losts_Funds_price_tf.Text, events_Losts_Funds_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void events_Personals_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_personals(events_Personals_title_tf.Text, events_Personals_city_dd.SelectedValue.ToString(), events_Personals_location_tf.Text, events_Personals_content_tf.Text, events_Personals_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_Personals_Price_tf.Text), StartUpLoad(events_personals_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_Personals_title_tf.Text, events_Personals_content_tf.Text, DateTime.Now, events_Personals_Price_tf.Text, events_Personals_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void events_Special_Events_Occasions_Button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_special_events_occasions(events_Special_Events_Occasions_tittle_tf.Text, events_Special_Events_Occasions_city_dd.SelectedValue.ToString(), events_Special_Events_Occasions_location_tf.Text, events_Special_Events_Occasions_Content_tf.Text, events_Special_Events_Occasions_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_Special_Events_Occasions_Price_tf.Text), StartUpLoad(events_special_events_occassions_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_Special_Events_Occasions_tittle_tf.Text, events_Special_Events_Occasions_Content_tf.Text, DateTime.Now, events_Special_Events_Occasions_Price_tf.Text, events_Special_Events_Occasions_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void events_Tender_Notice_Button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                eventobj.insert_ad_events_special_tender_notice(events_Tender_Notice_tittle_tf.Text, events_Tender_Notice_City_dd.SelectedValue.ToString(), events_Tender_Notice_location_tf.Text, events_Tender_Notice_Content_tf.Text, events_Tender_Notice_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(events_Tender_Notice_Price_tf.Text), StartUpLoad(events_tender_notice_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), events_Tender_Notice_tittle_tf.Text, events_Tender_Notice_Content_tf.Text, DateTime.Now, events_Tender_Notice_Price_tf.Text, events_Tender_Notice_City_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;

            }

        }

        protected void Home_Appliances_Air_Conditioner_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_air_conditioner(Home_Appliances_Air_Conditioner_tittle_tf.Text, Home_Appliances_Air_Conditioner_City_dd.SelectedValue.ToString(), Home_Appliances_Air_Conditioner_location_tf.Text, Home_Appliances_Air_Conditioner_content_tf.Text, Home_Appliances_Air_Conditioner_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Air_Conditioner_Price_tf.Text), StartUpLoad(home_appliances_air_conditioner_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Air_Conditioner_tittle_tf.Text, Home_Appliances_Air_Conditioner_content_tf.Text, DateTime.Now, Home_Appliances_Air_Conditioner_Price_tf.Text, Home_Appliances_Air_Conditioner_City_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Home_Appliances_Fridge_Button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_fridge(Home_Appliances_Fridge_tittle_tf.Text, Home_Appliances_Fridge_City_dd.SelectedValue.ToString(), Home_Appliances_Fridge_location_tf.Text, Home_Appliances_Fridge_Content_tf.Text, Home_Appliances_Fridge_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Fridge_Price_tf.Text), StartUpLoad(home_appliances_fridge_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Fridge_tittle_tf.Text, Home_Appliances_Fridge_Content_tf.Text, DateTime.Now, Home_Appliances_Fridge_Price_tf.Text, Home_Appliances_Fridge_City_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
        }

        protected void Appliances_Furniture_Button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_furniture(Appliances_Furniture_tittle_tf.Text, Appliances_Furniture_City_dd.SelectedValue.ToString(), Appliances_Furniture_location_tf.Text, Appliances_Furniture_Content_tf.Text, Appliances_Furniture_User_type_dd.SelectedValue.ToString(), Convert.ToInt32(Appliances_Furniture_Price_tf.Text), StartUpLoad(Home_appliances_furniture_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Appliances_Furniture_tittle_tf.Text, Appliances_Furniture_Content_tf.Text, DateTime.Now, Appliances_Furniture_Price_tf.Text, Appliances_Furniture_City_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Home_Appliances_Tv_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_tv(Home_Appliances_Tv_tittle_tf.Text, Home_Appliances_Tv_city_dd.SelectedValue.ToString(), Home_Appliances_Tv_location_tf.Text, Home_Appliances_Tv_content_tf.Text, Home_Appliances_Tv_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Tv_price_tf.Text), StartUpLoad(home_appliances_tv_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Tv_tittle_tf.Text, Home_Appliances_Tv_content_tf.Text, DateTime.Now, Home_Appliances_Tv_price_tf.Text, Home_Appliances_Tv_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Home_Appliances_Vacume_Cleaner_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_vacume_cleaner(Home_Appliances_Vacume_Cleaner_tittle_tf.Text, Home_Appliances_Vacume_Cleaner_city_dd.SelectedValue.ToString(), Home_Appliances_Vacume_Cleaner_location_tf.Text, Home_Appliances_Vacume_Cleaner_content_tf.Text, Home_Appliances_Vacume_Cleaner_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Vacume_Cleaner_price_tf.Text), StartUpLoad(home_appliances_vacume_cleaner_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Vacume_Cleaner_tittle_tf.Text, Home_Appliances_Vacume_Cleaner_content_tf.Text, DateTime.Now, Home_Appliances_Vacume_Cleaner_price_tf.Text, Home_Appliances_Vacume_Cleaner_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }


        }

        protected void Home_Appliances_Water_Chiller_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_water_chiller(Home_Appliances_Water_Chiller_tittle_tf.Text, Home_Appliances_Water_Chiller_City_dd.SelectedValue.ToString(), Home_Appliances_Water_Chiller_location_tf.Text, Home_Appliances_Water_Chiller_content_tf.Text, Home_Appliances_Water_Chiller_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Water_Chiller_price_tf.Text), StartUpLoad(home_appliances_water_chiller_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Water_Chiller_tittle_tf.Text, Home_Appliances_Water_Chiller_content_tf.Text, DateTime.Now, Home_Appliances_Water_Chiller_price_tf.Text, Home_Appliances_Water_Chiller_City_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Home_Appliances_Other_Home_Appliances_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                homeobj.insert_ad_home_appliances_other_home_appliances(Home_Appliances_Other_Home_Appliances_tittle_tf.Text, Home_Appliances_Other_Home_Appliances_city_dd.SelectedValue.ToString(), Home_Appliances_Other_Home_Appliances_location_tf.Text, Home_Appliances_Other_Home_Appliances_content_tf.Text, Home_Appliances_Other_Home_Appliances_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Home_Appliances_Other_Home_Appliances_price_tf.Text), StartUpLoad(home_appliances_other_home_appliances_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Home_Appliances_Other_Home_Appliances_tittle_tf.Text, Home_Appliances_Other_Home_Appliances_content_tf.Text, DateTime.Now, Home_Appliances_Other_Home_Appliances_price_tf.Text, Home_Appliances_Other_Home_Appliances_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Matrimonial_Brides_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                matriobj.insert_ad_matrimonial_brides(Matrimonial_Brides_tittle_tf.Text, Matrimonial_Brides_city_dd.SelectedValue.ToString(), Matrimonial_Brides_location_tf.Text, Matrimonial_Brides_content_tf.Text, StartUpLoad(matrimonial_bridges_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Matrimonial_Brides_tittle_tf.Text, Matrimonial_Brides_content_tf.Text, DateTime.Now, null, Matrimonial_Brides_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex)
            {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Matrimonial_groom_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                matriobj.insert_ad_matrimonial_grooms(Matrimonial_groom_tittle_tf.Text, Matrimonial_groom_city_dd.SelectedValue.ToString(), Matrimonial_groom_location_tf.Text, Matrimonial_groom_content_tf.Text, StartUpLoad(matrimonial_groom_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Matrimonial_groom_tittle_tf.Text, Matrimonial_groom_content_tf.Text, DateTime.Now, null, Matrimonial_groom_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
        }

        protected void Miscellaneous_Air_Crafts_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_art_crafts(Miscellaneous_Air_Crafts_tittle_tf.Text, Miscellaneous_Air_Crafts_city_dd.SelectedValue.ToString(), Miscellaneous_Air_Crafts_location_tf.Text, Miscellaneous_Air_Crafts_content_tf.Text, Miscellaneous_Air_Crafts_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Air_Crafts_price_tf.Text), StartUpLoad(miscellaneous_air_crafts_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Air_Crafts_tittle_tf.Text, Miscellaneous_Air_Crafts_content_tf.Text, DateTime.Now, Miscellaneous_Air_Crafts_price_tf.Text, Miscellaneous_Air_Crafts_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }
       
        protected void Miscellaneous_Books_Magazines_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_book_magazines(Miscellaneous_Books_Magazines_tittle_tf.Text, Miscellaneous_Books_Magazines_city_dd.SelectedValue.ToString(), Miscellaneous_Books_Magazines_location_tf.Text, Miscellaneous_Books_Magazines_content_tf.Text, Miscellaneous_Books_Magazines_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Books_Magazines_price_tf.Text), StartUpLoad(miscellaneous_books_magazines_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Books_Magazines_tittle_tf.Text, Miscellaneous_Books_Magazines_content_tf.Text, DateTime.Now, Miscellaneous_Books_Magazines_price_tf.Text, Miscellaneous_Books_Magazines_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Miscellaneous_Clothing_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_clothing(Miscellaneous_Clothing_tittle_tf.Text, Miscellaneous_Clothing_city_dd.SelectedValue.ToString(), Miscellaneous_Clothing_location_tf.Text, Miscellaneous_Clothing_content_tf.Text, Miscellaneous_Clothing_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Clothing_price_tf.Text), StartUpLoad(miscellaneous_clothing_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Clothing_tittle_tf.Text, Miscellaneous_Clothing_content_tf.Text, DateTime.Now, Miscellaneous_Clothing_price_tf.Text, Miscellaneous_Clothing_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }

        }

        protected void Miscellaneous_Eating_Outlets_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_eating_outlets(Miscellaneous_Eating_Outlets_tittle_tf.Text, Miscellaneous_Eating_Outlets_city_dd.SelectedValue.ToString(), Miscellaneous_Eating_Outlets_location_tf.Text, Miscellaneous_Eating_Outlets_content_tf.Text, Miscellaneous_Eating_Outlets_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Eating_Outlets_price_tf.Text), StartUpLoad(miscellaneous_eating_outlets_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Eating_Outlets_tittle_tf.Text, Miscellaneous_Eating_Outlets_content_tf.Text, DateTime.Now, Miscellaneous_Eating_Outlets_price_tf.Text, Miscellaneous_Eating_Outlets_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
           
        }

        protected void Miscellaneous_Guns_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_guns(Miscellaneous_Guns_tittle_tf.Text, Miscellaneous_Guns_city_dd.SelectedValue.ToString(), Miscellaneous_Guns_location_tf.Text, Miscellaneous_Guns_content_tf.Text, Miscellaneous_Guns_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Guns_price_tf.Text), StartUpLoad(miscellaneous_guns_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Guns_tittle_tf.Text, Miscellaneous_Guns_content_tf.Text, DateTime.Now, Miscellaneous_Guns_price_tf.Text, Miscellaneous_Guns_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Miscellaneous_Jewelery_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_jewelery(Miscellaneous_Jewelery_tittle_tf.Text, Miscellaneous_Jewelery_city_dd.SelectedValue.ToString(), Miscellaneous_Jewelery_location_tf.Text, Miscellaneous_Jewelery_content_tf.Text, Miscellaneous_Jewelery_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Jewelery_price_tf.Text), StartUpLoad(miscellaneous_jewelery_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Jewelery_tittle_tf.Text, Miscellaneous_Jewelery_content_tf.Text, DateTime.Now, Miscellaneous_Jewelery_price_tf.Text, Miscellaneous_Jewelery_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }
        }

        protected void Miscellaneous_Pets_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                miscobj.insert_ad_miscellaneous_pets(Miscellaneous_Pets_tittle_tf.Text, Miscellaneous_Pets_city_dd.SelectedValue.ToString(), Miscellaneous_Pets_location_tf.Text, Miscellaneous_Pets_content_tf.Text, Miscellaneous_Pets_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Miscellaneous_Pets_price_tf.Text), StartUpLoad(miscellanoeus_pets_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Miscellaneous_Pets_tittle_tf.Text, Miscellaneous_Pets_content_tf.Text, DateTime.Now, Miscellaneous_Pets_price_tf.Text, Miscellaneous_Pets_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Real_Estates_Appartments_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                realobj.insert_ad_real_estate_appartment(Real_Estates_Appartments_tittle_tf.Text, Real_Estates_Appartments_city_dd.SelectedValue.ToString(), Real_Estates_Appartments_location_tf.Text, Real_Estates_Appartments_content_tf.Text, Real_Estates_Appartments_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_Appartments_price_tf.Text), Real_Estates_Appartments_address_tf.Text, Real_Estates_Appartments_area_tf.Text, Real_Estates_Appartments_area_unit_dd.SelectedValue.ToString(), Real_Estates_Appartments_agreement_type_dd.SelectedValue.ToString(), Real_Estates_Appartments_property_type_dd.SelectedValue.ToString(), Real_Estates_Appartments_facing_dd.SelectedValue.ToString(), Real_Estates_Appartments_year_built_dd.SelectedValue.ToString(), Real_Estates_Appartments_floor_dd.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_Appartments_no_of_bedrooms_tf.Text), Convert.ToInt32(Real_Estates_Appartments_no_of_rooms_tf.Text), Convert.ToInt32(Real_Estates_Appartments_no_of_bathrooms_tf.Text), Real_Estates_Appartments_Drawing_cb.Checked.ToString(), Real_Estates_Appartments_Dinning_room_cb.Checked.ToString(), Real_Estates_Appartments_furnished_cb.Checked.ToString(), Real_Estates_Appartments_kichen_cb.Checked.ToString(), Real_Estates_Appartments_pool_cb.Checked.ToString(), Real_Estates_Appartments_servant_quater_cb.Checked.ToString(), Real_Estates_Appartments_lawn_cb.Checked.ToString(), Real_Estates_Appartments_parking_cb.Checked.ToString(), Real_Estates_Appartments_terrace_cb.Checked.ToString(), Real_Estates_Appartments_corner_location_cb.Checked.ToString(), Real_Estates_Appartments_balcony_cb.Checked.ToString(), Real_Estates_Appartments_elevator_cb.Checked.ToString(), StartUpLoad(Real_Estates_Appartments_elevator_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Real_Estates_Appartments_tittle_tf.Text, Real_Estates_Appartments_content_tf.Text, DateTime.Now, Real_Estates_Appartments_price_tf.Text, Real_Estates_Appartments_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch(Exception ex){
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Real_Estates_Houses_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                realobj.insert_ad_real_estate_houses(real_estate_houses_title_tf.Text, real_estate_houses_city_dd.SelectedValue.ToString(), real_estate_houses_location_tf.Text, real_estate_houses_content_tf.Text, real_estate_houses_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(real_estate_houses_price_tf.Text), real_estate_houses_address_tf.Text, real_estate_houses_area_tf.Text, real_estate_houses_area_unit_dd.SelectedValue.ToString(), real_estate_houses_aggreement_type_dd.SelectedValue.ToString(), real_estate_houses_property_type_dd.SelectedValue.ToString(), real_estate_houses_facing_dd.SelectedValue.ToString(), real_estate_houses_year_built_dd.SelectedValue.ToString(), real_estate_houses_floor_dd.SelectedValue.ToString(), Convert.ToInt32(real_estate_houses_no_of_rooms_tf.Text), Convert.ToInt32(real_estate_houses_no_of_bedrooms_tf.Text), Convert.ToInt32(real_estate_houses_no_of_bathrooms_tf.Text), real_estate_houses_drawing_room_cb.Checked.ToString(), real_estate_houses_dining_room_cb.Checked.ToString(), real_estate_houses_furnished_cb.Checked.ToString(), real_estate_houses_kitchen_cb.Checked.ToString(), real_estate_houses_pool_cb.Checked.ToString(), real_estate_houses_servent_quater_cb.Checked.ToString(), real_estate_houses_lawn_cb.Checked.ToString(), real_estate_houses_parking_cb.Checked.ToString(), Real_Estates_Houses_terrace_cb.Checked.ToString(), Real_Estates_Houses_corner_location_cb.Checked.ToString(), Real_Estates_Houses_balcony_cb.Checked.ToString(), Real_Estates_Houses_elevator_cb.Checked.ToString(), StartUpLoad(Real_Estates_Houses_elevator_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), real_estate_houses_title_tf.Text, real_estate_houses_content_tf.Text, DateTime.Now, real_estate_houses_price_tf.Text, real_estate_houses_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true; 
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            
            }

        }

        protected void Real_Estates_Offices_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                realobj.insert_ad_real_estate_offices(Real_Estates_Offices_tittle_tf.Text, Real_Estates_Offices_city_dd.SelectedValue.ToString(), Real_Estates_Offices_location_tf.Text, Real_Estates_Offices_content_tf.Text, Real_Estates_Offices_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_Offices_price_tf.Text), Real_Estates_Offices_address_tf.Text, Real_Estates_Offices_area_tf.Text, Real_Estates_Offices_area_unit_dd.SelectedValue.ToString(), Real_Estates_Offices_agreement_type_dd.SelectedValue.ToString(), Real_Estates_Offices_facing_dd.SelectedValue.ToString(), Real_Estates_Offices_property_type_dd.SelectedValue.ToString(), Real_Estates_Offices_year_built_dd.SelectedValue.ToString(), Real_Estates_Offices_floor_dd.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_Offices_No_of_bedrooms_tf.Text), Convert.ToInt32(Real_Estates_Offices_no_of_rooms_tf.Text), Convert.ToInt32(Real_Estates_Offices_No_of_bathrooms_tf.Text), Real_Estates_Offices_drwaing_room_cb.Checked.ToString(), Real_Estates_Offices_dinning_room_cb.Checked.ToString(), Real_Estates_Offices_furnished_cb.Checked.ToString(), Real_Estates_Offices_kichen_cb.Checked.ToString(), Real_Estates_Offices_pool_cb.Checked.ToString(), Real_Estates_Offices_servant_quater_cb.Checked.ToString(), Real_Estates_Offices_lawn_cb.Checked.ToString(), Real_Estates_Offices_parking_cb.Checked.ToString(), Real_Estates_Offices_terrace_cb.Checked.ToString(), Real_Estates_Offices_corner_location_cb.Checked.ToString(), Real_Estates_Offices_balcony_cb.Checked.ToString(), Real_Estates_Offices_elevator_cb.Checked.ToString(), StartUpLoad(Real_Estates_Offices_elevator_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Real_Estates_Offices_tittle_tf.Text, Real_Estates_Offices_content_tf.Text, DateTime.Now, Real_Estates_Offices_price_tf.Text, Real_Estates_Offices_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Real_Estates_plots_lands__button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                realobj.insert_ad_real_estate_plots_lands(Real_Estates_plots_lands_tittle_tf.Text, Real_Estates_plots_lands_city_dd.SelectedValue.ToString(), Real_Estates_plots_lands_location_tf.Text, Real_Estates_plots_lands_user_type_d.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_plots_lands_price_tf.Text), Real_Estates_plots_lands_addresstf.Text, Real_Estates_plots_lands_area_tf.Text, Real_Estates_plots_lands_area_unit_dd.SelectedValue.ToString(), Real_Estates_plots_lands_agreement_type_dd.SelectedValue.ToString(), Real_Estates_plots_lands_property_type_dd.SelectedValue.ToString(), StartUpLoad(Real_Estates_plots_lands_property_type_image_upload,newUserId), Real_Estates_plots_lands_content_tf.Text, DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Real_Estates_plots_lands_tittle_tf.Text, Real_Estates_plots_lands_content_tf.Text, DateTime.Now, Real_Estates_plots_lands_price_tf.Text, Real_Estates_plots_lands_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex)
            {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Real_Estates_shops__button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                realobj.insert_ad_real_estate_shops(Real_Estates_Shops_title_tf.Text, Real_Estates_Shops_location_tf.Text, Real_Estates_shops_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Real_Estates_plots_lands_price_tf.Text), Real_Estates_Shops_address_tf.Text, Real_Estates_Shops_area_tf.Text, Real_Estates_Shops_area_unit_dd.SelectedValue.ToString(), Real_Estates_Shops_agreement_type_dd.SelectedValue.ToString(), Real_Estates_Shops_property_type_dd.SelectedValue.ToString(), StartUpLoad(Real_Estates_Shops_property_type_image_upload,newUserId), Real_Estates_Shops_city_dd.SelectedValue.ToString(), Real_Estates_Shops_Content_tf.Text, DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Real_Estates_Shops_title_tf.Text, Real_Estates_Shops_Content_tf.Text, DateTime.Now, Real_Estates_shops_price.Text, Real_Estates_Shops_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
               exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
        }

        protected void Services_button_Click(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            try
            {
                servicobj.insert_ad_services(Services_title_tf.Text, Services_city_dd.SelectedValue.ToString(), Services_location_tf.Text, Services_content_tf.Text, Services_user_type_dd.SelectedValue.ToString(), Convert.ToInt32(Services_price_tf.Text), Services_srvice_type_dd.SelectedValue.ToString(), StartUpLoad(services_service_type_image_upload,newUserId), DateTime.Now, newUserId,0);
                
                temp_DAO.temp_data(item_name_dropdown.SelectedValue.ToString(), Services_title_tf.Text, Services_content_tf.Text, DateTime.Now, Services_price_tf.Text, Services_city_dd.SelectedValue.ToString(), newUserId);
                success_up.Visible = true;
            }
            catch (Exception ex) {
                exception_up.Visible = true;
                exception_lb.Text = ex.Message;
                fail_up.Visible = true;
            }
           
        }

        protected void autos_cars_city_dd_SelectedIndexChanged(object sender, EventArgs e)
        {
           //this.selectlocation(autos_cars_city_dd.SelectedValue.ToString());
          
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Cars"))
            {
                Autos_cars_up1.Visible = true;
                //Autos_motorcycles_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Motorcycles"))
            {
                Autos_motorcycles_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Heavy Vehicles"))
            {
                Autos_heavy_vehicle_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Autos Parts"))
            {
                autos_autos_parts_up.Visible = true;
            }

            else if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Boats-Ships"))
            {
                autos_boat_ship_up.Visible = true;
            }

            else if (item_name_dropdown.SelectedValue.Equals("Autos") && DropDownList1.SelectedValue.Equals("Other Vehicles"))
            {
                autos_other_vehicles_up.Visible = true;
            }


            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Computer Institutes"))
            {
                education_computer_institutes_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Cooking Classes"))
            {
                education_cooking_classes_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Home Tutions"))
            {
                education_home_tution_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Launage Academies"))
            {
                education_launage_Academies_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Montessori"))
            {
                education_montesori_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Private Tutors"))
            {
                education_private_tutors_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Schools"))
            {
                education_schools_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Short Courses"))
            {
                education_short_courses_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Education") && DropDownList1.SelectedValue.Equals("Technical Institutes"))
            {
                education_technical_institute_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Computer Accessories"))
            {
                electronics_computer_accessories_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Computers "))
            {
                electronics_computers_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Mobile"))
            {
                electronics_mobiles_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Laptops"))
            {
                electronics_laptops_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Mobiles Accessories"))
            {
                electronics_mobile_accessories_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Other Electronics"))
            {
                electronics_other_electronics_up.Visible = true;
            }

            else if (item_name_dropdown.SelectedValue.Equals("Electronics") && DropDownList1.SelectedValue.Equals("Softwares"))
            {
                electronics_softwares_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Announcements"))
            {
                events_announcements_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Auctions"))
            {
                events_auctions_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Losts & Funds"))
            {
                events_Losts_Funds_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Personals"))
            {
                events_Personals_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Special Events-Occasions"))
            {
                events_Special_Events_Occasions_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Events") && DropDownList1.SelectedValue.Equals("Tender Notice"))
            {
                events_Tender_Notice_up.Visible = true;
            }
            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Air Conditioner"))
            {
                Home_Appliances_Air_Conditioner_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Fridge"))
            {
                Home_Appliances_Fridge_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Furniture"))
            {
                Appliances_Furniture_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("T.V"))
            {
                Home_Appliances_Tv_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Vacume Cleaner"))
            {
                Home_Appliances_Vacume_Cleaner_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Water Chiller"))
            {
                Home_Appliances_Water_Chiller_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Home Appliances") && DropDownList1.SelectedValue.Equals("Other Home Appliances"))
            {
                Home_Appliances_Other_Home_Appliances_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Matrimonial") && DropDownList1.SelectedValue.Equals("Brides"))
            {
                Matrimonial_Brides_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Matrimonial") && DropDownList1.SelectedValue.Equals("Grooms"))
            {
                Matrimonial_groom_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Arts & Crafts"))
            {
                Miscellaneous_Air_Crafts_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Books & Magazines"))
            {
                Miscellaneous_Books_Magazines_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Clothing"))
            {
                Miscellaneous_Clothing_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Eating Outlets"))
            {
                Miscellaneous_Eating_Outlets_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Guns"))
            {
                Miscellaneous_Guns_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Jewelery"))
            {
                Miscellaneous_Jewelery_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Miscellaneous") && DropDownList1.SelectedValue.Equals("Pets"))
            {
                Miscellaneous_Pets_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Real Estates") && DropDownList1.SelectedValue.Equals("Apartments"))
            {
                Real_Estates_Appartments_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Real Estates") && DropDownList1.SelectedValue.Equals("Offices"))
            {
                Real_Estates_Offices_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Real Estates") && DropDownList1.SelectedValue.Equals("Houses"))
            {
                Real_Estates_Houses_up.Visible = true;

            }

            else if (item_name_dropdown.SelectedValue.Equals("Real Estates") && DropDownList1.SelectedValue.Equals("Plots/Lands"))
            {
                Real_Estates_plots_lands_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Real Estates") && DropDownList1.SelectedValue.Equals("Shops"))
            {
                Real_Estates_shops_up.Visible = true;

            }
            else if (item_name_dropdown.SelectedValue.Equals("Services"))
            {

                Services_up.Visible = true;
            }


        }

        protected void item_name_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (item_name_dropdown.SelectedValue.Equals("Services")) {
                subcategory_label.Visible = false;
                DropDownList1.Visible = false;
                Services_up.Visible = true;
            
            }
        }



        public string imagevalidater(FileUpload file)
        {
            string fileFullname, dataName, fileName, type;
            string ImagePath, sPath = "", imgPath = "";
            fileFullname = file.PostedFile.FileName;
            dataName = DateTime.Now.ToString("yyyy-MM-dd hh-mm-ss");
            fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);

            type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
            if (file.PostedFile.ContentType.ToUpper().IndexOf("IMAGE") > -1)
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(file.PostedFile.InputStream);

                int Width = img.Width;
                int Height = img.Height;

                if (Width > 1100 || Height > 1100 || file.PostedFile.ContentLength > 1024 * 1024 * 200)
                {

                    this.ClientScript.RegisterStartupScript(GetType(), "Startup",

                        "<script language='javascript'>alert('The image size is too large!');</script>");
                    //Label1.BackColor = Color.Red;
                }
                else
                {
                    if (type == "jpg" || type == "gif" || type == "bmp" || type == "JPG" || type == "GIF" || type == "png" || type == "PNG" || type == "jpeg")
                    {
                        ImagePath = "~/images/";
                        sPath = Server.MapPath(ImagePath) + dataName + fileName;
                        imgPath = dataName + fileName;

                        file.PostedFile.SaveAs(sPath);

                        ClientScript.RegisterStartupScript(this.GetType(),
                        "Startup", "<script language='javascript'>alert('Success!');</script>");
                        //  this.picField.ImageUrl = imgPath;
                        //this.Button1.Enabled = false;
                        //this.Button1.Text = "Success!";

                        //this.Button1.Enabled = true;

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Startup",

                            "<script language='javascript'>alert('THAT IS NOT A VALID IMAGE .. !!!');</script>");
                    }
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Startup",
                    "<script language='javascript'>alert('The uploaded file is not a image file!');</script>");
            }
            return imgPath;
        }

        public void successchecker() {

             autos_autos_parts_up.Visible = false;
            success_up.Visible = true;
            
        
        
        }
        //for image upload
        private string StartUpLoad(FileUpload filename,Guid userid)
        {
            string path="";
            //get the file name of the posted image
            string imgName = filename.FileName;
            //sets the image path
            
            string actual_path = "ImageStorage/" + userid + imgName;
            string imgPath = "~/" + actual_path;
            //get the size in bytes that
            int imgSize = filename.PostedFile.ContentLength;
            //validates the posted file before savingautos_motor_vehicle_upload_image1.PostedFile.FileName
            if (filename.PostedFile != null && filename.FileName != "")
            {
                // 10240 KB means 10MB, You can change the value based on your requirement
                if (filename.PostedFile.ContentLength > 50240)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                }
                else
                {
                    //then save it to the Folder
                    filename.SaveAs(Server.MapPath(imgPath));
                   // Image1.ImageUrl = "~/" + imgPath;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    MessageBox.Show(imgPath);
                    path = actual_path;
                }
                
            }
            return path;
        }

      


        //public void getlocation()
        //{

        //    string query = "SELECT  ad_location FROM   ad_city_location";
          
        //    SqlConnection connection = Connection_Manger.getConnection();
        //    SqlCommand command = new SqlCommand(query, connection);

            
        //        connection.Open();
        //        SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
        //        if (reader.HasRows)
        //        {
        //            while (reader.Read())
        //            {
        //                // MessageBox.Show(reader.ToString());
        //                autos_cars_model_dd.Items.Add(new ListItem(reader.GetString(0)));
        //                autos_cars_model_dd.DataSource = reader;
        //                autos_cars_model_dd.DataBind();
                       
        //            }
                  
        //        }
        //        else {

        //            MessageBox.Show("No record Found");
        //        }
              
          
        

        //}


        //public void selectlocation(string city)
        //{
        //    string query = "select ad_location from ad_city_location where ad_city='"+city+"'";
        //    SqlConnection conn = Connection_Manger.getConnection();
        //    SqlDataAdapter  adapt = new SqlDataAdapter(query, conn);
        //    try
        //    {

        //        conn.Open();
        //        DataSet ds = new DataSet();
        //        adapt.Fill(ds, "Table");
        //        autos_cars_location_dd.DataSource = ds.Tables[0];

        //        autos_cars_location_dd.DataTextField = ds.Tables[0].Columns["ad_location"].ColumnName.ToString();
                
        //        autos_cars_location_dd.DataBind();



        //        //        autos_cars_location_dd.Items.Add(reader[0].ToString());
        //               // autos_cars_location_dd.DataSource = reader;
        //              //  autos_cars_location_dd.DataBind();   
                    

              

        //    }

        //    catch (Exception ex)
        //    {

        //       exception_up.Visible = true; exception_lb.Text = ex.Message;
        //    }
        //    conn.Close();

        //}

       
  

       

       
    }
}