using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data;
using QuickClassified.DAO;

namespace QuickClassified.DAO
{
    public class temp_DAO
    {


       




        /* for new postad*/
        public void getlocation(string city) {
            
            string query = "select ad_location from ad_city_location where ad_city='" + city + "'";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
       
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex) {
                //MessageBox.Show(ex.Message);
            
            }
           
        }

        /*     AdbOOK METHODS      */
        public static void tempbook_data(int id, string category, string title, string description, DateTime datetime, string price, string city){
           string query=null;
            SqlConnection connection = Connection_Manger.getConnection();
            try
            {
                connection.Open();
                
                query = "insert into temp values(" + id + ",'" + category + "','" + title + "','" + description + "','" + datetime + "','" + price + "','" + city + "')";
            
              //  string query = "insert into temp values(" + id + ",'" + category + "','" + title + "','" + description + "','" + datetime + "','" + price + "','" + city + "')";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception ex) {
               // MessageBox.Show("error found in insertion"+ ex.Message);
            }

}
        public static void temp_data( string category, string title, string description, DateTime datetime, string price, string city,Guid userid)
        {
            string query = null;
            SqlConnection connection = Connection_Manger.getConnection();
            try
            {
                connection.Open();

                query = "insert into temp values('" + category + "','" + title + "','" + description + "','" + datetime + "','" + price + "','" + city + "','"+userid+"')";

                //  string query = "insert into temp values(" + id + ",'" + category + "','" + title + "','" + description + "','" + datetime + "','" + price + "','" + city + "')";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
              //  MessageBox.Show("error found in insertion" + ex.Message);
            }

        }
        public static int selectadcarID()
        {

           int book_id =-1;

            string query = "SELECT max(autos_car_id) FROM ad_autos_car ";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
             connection.Open();
              book_id = (int)cmd.ExecuteScalar();         
               }                
            catch (Exception ex)
            {
               // MessageBox.Show( ex.Message);               
            }
            return book_id;

        }

        public static int selectAutoPartsID()
        {

            int parts_id = -1;

            string query = "SELECT max(autos_auto_parts_id) FROM ad_autos_auto_parts ";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                parts_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return parts_id;

        }
        public static int selectedBoatID()
        {

            int boat_id = -1;

            string query = "SELECT max(autos_boats_ships_id) FROM ad_autos_boats_ships ";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                boat_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return boat_id;

        }
        public static int selectedHeavyVehicleID()
        {

            int heavyvehicle_id = -1;

            string query = "SELECT max(autos_heavy_vehicle_id) FROM ad_autos_heavy_vehicle";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                heavyvehicle_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return heavyvehicle_id;

        }
        public static int selectedmotorID()
        {

            int motor_id = -1;

            string query = "SELECT max(autos_motor_vehicle_id) FROM ad_autos_motor_vehicle";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                motor_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return motor_id;

        }
        public static int selectedOtherVehicleID()
        {

            int other_vehicle_id = -1;

            string query = "SELECT max(autos_other_vehicle_id) FROM ad_autos_other_vehicle";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                other_vehicle_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return other_vehicle_id;

        }
        public static int selectcomputerInstituteID()
        {

            int compInstitute_id = -1;

            string query = "SELECT max(education_computer_institutes_id) FROM ad_education_computer_institutes";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                compInstitute_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return compInstitute_id;

        }

        public static int selectCookingClassesID()
        {

            int cooking_id = -1;

            string query = "SELECT max(education_cooking_classes_id) FROM ad_education_cooking_classes";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                cooking_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return cooking_id;

        }

    
        public static int selectHomeTutionID()
        {

            int home_id = -1;

            string query = "SELECT max(education_home_tution_id) FROM ad_education_home_tution";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                home_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return home_id;

        }
      
         public static int selectLaunageAcademiesID()
        {

            int launage_id = -1;

            string query = "SELECT max(education_launage_academies_id) FROM ad_education_launage_academies";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                launage_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return launage_id;

        }


        public static int selectMontessoriID()
        {

            int montesori_id = -1;

            string query = "SELECT max(education_montessori_id) FROM ad_education_montessori";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                montesori_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return montesori_id;

        }
        public static int selectprivateTutorsID()
        {

            int private_id = -1;

            string query = "SELECT max(education_private_tutors_id) FROM ad_education_private_tutors";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                private_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return private_id;

        }
        public static int selectschoolID()
        {

            int school_id = -1;

            string query = "SELECT max(education_schools_id) FROM ad_education_schools";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                school_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return school_id;

        }
        public static int selectshortCoursesID()
        {

            int short_id = -1;

            string query = "SELECT max(education_short_courses_id) FROM ad_education_short_courses";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                short_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return short_id;

        }
        public static int selectTechnicalInstitutesID()
        {

            int technical_id = -1;

            string query = "SELECT max(education_technical_institute_id) FROM ad_education_technical_institute";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                technical_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return technical_id;

        }

        //              ELECTRONCS ID,S
        public static int selectComputerAccessoriesID()
        {

            int CompAccessories_id = -1;

            string query = "SELECT max(electronics_computer_accessories_id) FROM ad_electronics_computer_accessories";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                CompAccessories_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return CompAccessories_id;

        }
        public static int selectComputerID()
        {

            int Computer_id = -1;

            string query = "SELECT max(electronics_computer_id) FROM ad_electronics_computer";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                Computer_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return Computer_id;

        }
        public static int selectLaptopID()
        {

            int laptop_id = -1;

            string query = "SELECT max(electronics_laptops_id) FROM ad_electronics_laptops";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                laptop_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return laptop_id;

        }
        public static int selectMobileID()
        {

            int mobile_id = -1;

            string query = "SELECT max(electronics_mobile_id) FROM ad_electronics_mobile";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                mobile_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return mobile_id;

        }
        public static int selectMobileAccessoriesID()
        {

            int mobile_id = -1;

            string query = "SELECT max(electronics_mobile_accessories_id) FROM ad_electronics_mobile_accessories";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                mobile_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return mobile_id;

        }
        public static int selectOtherElectronicsID()
        {

            int other_id = -1;

            string query = "SELECT max(electronics_other_electronics_id) FROM ad_electronics_other_electronics";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                other_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return other_id;

        }
        public static int selectSoftwareID()
        {

            int software_id = -1;

            string query = "SELECT max(electronics_software_id) FROM ad_electronics_software";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                software_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return software_id;

        }
        //   Matrimonial ID,s
        public static int selectbrideID()
        {

            int bride_id = -1;

            string query = "SELECT max(Matrimonial_brides_id) FROM ad_Matrimonial_brides";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                bride_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return bride_id;

        }
        public static int selectGroomID()
        {

            int groom_id = -1;

            string query = "SELECT max(Matrimonial_grooms_id) FROM ad_Matrimonial_grooms";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                groom_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return groom_id;

        }
        // Miscellaneous ID,s
        public static int selectCraftID()
        {

            int craft_id = -1;

            string query = "SELECT max(miscellaneous_art_crafts_id) FROM ad_miscellaneous_art_crafts";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                craft_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return craft_id;

        }
        public static int selectBookID()
        {

            int book_id = -1;

            string query = "SELECT max(miscellaneous_book__magazines_id) FROM ad_miscellaneous_book_magazines";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                book_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return book_id;

        }
        public static int selectClothingID()
        {

            int cloth_id = -1;

            string query = "SELECT max(miscellaneous_clothing_id) FROM ad_miscellaneous_clothing";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                cloth_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return cloth_id;

        }
        public static int selecteatingID()
        {

            int eating_id = -1;

            string query = "SELECT max(miscellaneous_eating_outlets_id) FROM ad_miscellaneous_eating_outlets";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                eating_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return eating_id;

        }
        public static int selectgunsID()
        {

            int gun_id = -1;

            string query = "SELECT max(miscellaneous_guns_id) FROM ad_miscellaneous_guns";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                gun_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return gun_id;

        }
        public static int selectjeweleryID()
        {

            int jewelery_id = -1;

            string query = "SELECT max(miscellaneous_jewelery_id) FROM ad_miscellaneous_jewelery";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                jewelery_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return jewelery_id;

        }
        public static int selectpetID()
        {

            int pet_id = -1;

            string query = "SELECT max(miscellaneous_pets_id) FROM ad_miscellaneous_pets";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                pet_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return pet_id;

        }
        //Real Estate ID,s
        public static int selectAppartmentID()
        {

            int appartment_id = -1;

            string query = "SELECT max(real_estate_appartment_id) FROM ad_real_estate_appartment";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                appartment_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return appartment_id;

        }
        public static int selecthousesID()
        {

            int houses_id = -1;

            string query = "SELECT max(real_estate_houses_id) FROM ad_real_estate_houses";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                houses_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return houses_id;

        }
        public static int selectofficesID()
        {

            int offices_id = -1;

            string query = "SELECT max(real_estate_offices_id) FROM ad_real_estate_offices";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                offices_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return offices_id;

        }
        public static int selectplotsID()
        {

            int plot_id = -1;

            string query = "SELECT max(real_estate_plots_lands_id) FROM ad_real_estate_plots_lands";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                plot_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return plot_id;

        }
        public static int selectshopsID()
        {

            int shop_id = -1;

            string query = "SELECT max(real_estate_shops_id) FROM ad_real_estate_shops";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                shop_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return shop_id;

        }
        // Services ID,s
        public static int selectservicesID()
        {

            int service_id = -1;

            string query = "SELECT max(services_id) FROM ad_services";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                service_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return service_id;

        }
        //Events ID,s
        public static int selectAnnouncementsID()
        {

            int announcements_id = -1;

            string query = "SELECT max(events_announcements_id) FROM ad_events_announcements";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                announcements_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return announcements_id;

        }
        public static int selectAuctionsID()
        {

            int auctios_id = -1;

            string query = "SELECT max(events_auctions_id) FROM ad_events_auctions";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                auctios_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return auctios_id;

        }
        public static int selectlostsID()
        {

            int lost_id = -1;

            string query = "SELECT max(events_lots_funds_id) FROM ad_events_lots_funds";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                lost_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return lost_id;

        }
        public static int selectPersonalID()
        {

            int personal_id = -1;

            string query = "SELECT max(events_personals_id) FROM ad_events_personals";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                personal_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return personal_id;

        }
        public static int selectOccassionsID()
        {

            int occassion_id = -1;

            string query = "SELECT max(events_special_events_occasions_id) FROM ad_events_special_events_occasions";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                occassion_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return occassion_id;

        }
        public static int selectTenderID()
        {

            int tender_id = -1;

            string query = "SELECT max(events_special_tender_notice_id) FROM ad_events_special_tender_notice";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                tender_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return tender_id;

        }
        // Home Appliances 
        public static int selectAirConditionerID()
        {

            int air_id = -1;

            string query = "SELECT max(home_appliances_air_conditioner_id) FROM ad_home_appliances_air_conditioner";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                air_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return air_id;

        }
        public static int selectFridgeID()
        {

            int fridge_id = -1;

            string query = "SELECT max(home_appliances_fridge_id) FROM ad_home_appliances_fridge";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                fridge_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return fridge_id;

        }
        public static int selectFurnitureID()
        {

            int furniture_id = -1;

            string query = "SELECT max(home_appliances_furniture_id) FROM ad_home_appliances_furniture";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                furniture_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return furniture_id;

        }
        public static int selectOtherHomeAppliancesID()
        {

            int Other_id = -1;

            string query = "SELECT max(home_appliances_other_home_appliances_id) FROM ad_home_appliances_other_home_appliances";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                Other_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return Other_id;

        }
        public static int selectTvID()
        {

            int tv_id = -1;

            string query = "SELECT max(home_appliances_tv_id) FROM ad_home_appliances_tv";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                tv_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return tv_id;

        }
        public static int selectVacumeCleanerID()
        {

            int vacume_id = -1;

            string query = "SELECT max(home_appliances_vacume_cleaner_id) FROM ad_home_appliances_vacume_cleaner_";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                vacume_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return vacume_id;

        }
        public static int selectWaterChillerID()
        {

            int water_id = -1;

            string query = "SELECT max(home_appliances_water_chiller_id) FROM ad_home_appliances_water_chiller";


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand cmd = new SqlCommand(query, connection);



            try
            {
                connection.Open();
                water_id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            return water_id;

        }

    }

}