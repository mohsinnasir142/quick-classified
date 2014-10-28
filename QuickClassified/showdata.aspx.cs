using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using QuickClassified.DAO;
using System.Windows.Forms;
using QuickClassified.Bean;

namespace QuickClassified
{
    public partial class showdata : System.Web.UI.Page
    {
        string tablename;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
          
             if (Request.QueryString["attr"].ToString().Equals("ad_autos_car")) {
                 this.getnewdata(Request.QueryString["attr"].ToString());
            }
             else if (Request.QueryString["attr"].ToString().Equals("ad_autos_auto_parts"))
            {
                this.autos_parts_data(Request.QueryString["attr"].ToString());
                //autosBean.autos_category_bean = "ad_autos_auto_parts";
                tablename = "autos_auto_parts";
            
            }
             else if (Request.QueryString["attr"].ToString().Equals("ad_autos_boats_ships"))
             {

                 this.autos_boats_ships_data(Request.QueryString["attr"].ToString());
                //autosBean.autos_category_bean = "ad_autos_boats_ships";
                tablename = "autos_boats_ships";
            }
             else if (Request.QueryString["attr"].ToString().Equals("ad_autos_heavy_vehicle"))
            {

                this.autos_heavy_vehicle_data(Request.QueryString["attr"].ToString());
                //autosBean.autos_category_bean = "ad_autos_heavy_vehicle";
                tablename = "autos_heavy_vehicle";
            }
             else if (Request.QueryString["attr"].ToString().Equals("ad_autos_motor_vehicle"))
            {

                this.autos_motor_vehicle_data(Request.QueryString["attr"].ToString());
                //autosBean.autos_category_bean = "ad_autos_motor_vehicle";
                tablename = "autos_motor_vehicle";
            }
             else if (Request.QueryString["attr"].ToString().Equals("ad_autos_other_vehicle"))
             {

                 this.autos_other_vehicle_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_autos_other_vehicle";
                 tablename = "autos_other_vehicle";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_air_conditioner")) 
             {

                 this.homeappliances_air_conditioner_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_air_conditioner";
                 tablename = "home_appliances_air_conditioner";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_fridge"))
             {

                 this.homeappliances_fridge_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_fridge";
                 tablename = "home_appliances_fridge";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_furniture"))
             {

                 this.homeappliances_furniture_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_furniture";
                 tablename = "home_appliances_furniture";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_other_home_appliances"))
             {

                 this.otherhomeappliances_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_other_home_appliances";
                 tablename = "home_appliances_other_home_appliances";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_tv"))
             {

                 this.homeappliances_tv_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_tv";
                 tablename = "home_appliances_tv";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_vacume_cleaner_"))
             {

                 this.homeappliances_vacume_cleaner_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_vacume_cleaner";
                 tablename = "home_appliances_vacume_cleaner";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_home_appliances_water_chiller"))
             {

                 this.homeappliances_water_chiller_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_home_appliances_water_chiller";
                 tablename = "home_appliances_water_chiller";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_elecronics_computer_accessories"))
             {

                 this.electronics_computer_accessories_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_elecronics_computer_accessories";
                 tablename = "elecronics_computer_accessories";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_computer"))
             {

                 this.electronics_computer_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_computer";
                 tablename = "electronics_computer";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_laptops"))
             {

                 this.electronics_laptops_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_laptops";
                 tablename = "electronics_laptops";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_mobile"))
             {

                 this.electronics_mobile_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_mobile";
                 tablename = "electronics_mobile";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_mobile_accessories"))
             {

                 this.electronics_mobile_accessories_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_mobile_accessories";
                 tablename = "electronics_mobile_accessories";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_other_electronics"))
             {

                 this.electronics_other_electronics_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_other_electronics";
                 tablename = "electronics_other_electronics";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_electronics_software"))
             {

                 this.electronics_software_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_electronics_software";
                 tablename = "electronics_software";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_computer_institutes"))
             {

                 this.education_computer_institute_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_computer_institutes";
                 tablename = "education_computer_institutes";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_cooking_classes"))
             {

                 this.education_cooking_classes_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_cooking_classes";
                 tablename = "education_cooking_classes";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_home_tution"))
             {

                 this.education_home_tution_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_home_tution";
                 tablename = "education_home_tution";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_launage_academies"))
             {

                 this.education_launage_academies_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_launage_academies";
                 tablename = "education_launage_academies";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_montessori"))
             {

                 this.education_montessori_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_montessori";
                 tablename = "education_montessori";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_private_tutors"))
             {

                 this.education_private_tutors_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_private_tutors";
                 tablename = "education_private_tutors";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_schools"))
             {

                 this.education_schools_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_schools";
                 tablename = "education_schools";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_short_courses"))
             {

                 this.education_short_courses_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_short_courses";
                 tablename = "education_short_courses";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_education_technical_institute"))
             {

                 this.education_technical_institute_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_education_technical_institute";
                 tablename = "education_technical_institute";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_art_crafts"))
             {

                 this.miscellaneous_art_crafts_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_art_crafts";
                 tablename = "miscellaneous_art_crafts";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_book_magazines"))
             {

                 this.miscellaneous_book_magazines_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_book_magazines";
                 tablename = "miscellaneous_book_magazines";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_clothing"))
             {

                 this.miscellaneous_clothing_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_clothing";
                 tablename = "miscellaneous_clothing";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_eating_outlets"))
             {

                 this.miscellaneous_eating_outlets_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_eating_outlets";
                 tablename = "miscellaneous_eating_outlets";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_guns"))
             {

                 this.miscellaneous_guns_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_guns";
                 tablename = "miscellaneous_guns";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_pets"))
             {

                 this.miscellaneous_pets_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_pets";
                 tablename = "miscellaneous_pets";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_miscellaneous_jewelery"))
             {

                 this.miscellaneous_jewelery_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_miscellaneous_jewelery";
                 tablename = "miscellaneous_jewelery";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_announcements"))
             {

                 this.events_announcements_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_announcements";
                 tablename = "events_announcements";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_auctions"))
             {

                 this.events_auctions_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_auctions";
                 tablename = "events_auctions";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_lots_funds"))
             {

                 this.events_lots_funds_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_lots_funds";
                 tablename = "events_lots_funds";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_personals"))
             {

                 this.events_personals_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_personals";
                 tablename = "events_personals";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_special_events_occasions"))
             {

                 this.events_special_events_occasions_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_special_events_occasions";
                 tablename = "events_special_events_occasions";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_events_special_tender_notice"))
             {

                 this.events_special_tender_notice_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_events_special_tender_notice";
                 tablename = "events_special_tender_notice";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_real_estate_appartment"))
             {

                 this.real_estate_appartment_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_real_estate_appartment";
                 tablename = "real_estate_appartment";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_real_estate_houses"))
             {

                 this.real_estate_houses_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_real_estate_houses";
                 tablename = "real_estate_houses";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_real_estate_offices"))
             {

                 this.real_estate_offices_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_real_estate_offices";
                 tablename = "real_estate_offices";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_real_estate_plots_lands"))
             {

                 this.real_estate_plots_lands_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_real_estate_plots_lands";
                 tablename = "real_estate_plots_lands";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_real_estate_shops"))
             {

                 this.real_estate_shops_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_real_estate_shops";
                 tablename = "real_estate_shops";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_services"))
             {

                 this.services_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_services";
                 tablename = "services";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_matrimonial_brides"))
             {

                 this.matrimonial_brides_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_matrimonial_brides";
                 tablename = "matrimonial_brides";
             }
             else if (Request.QueryString["attr"].ToString().Equals("ad_matrimonial_grooms"))
             {

                 this.matrimonial_grooms_data(Request.QueryString["attr"].ToString());
                 //autosBean.autos_category_bean = "ad_matrimonial_grooms";
                 tablename = "matrimonial_grooms";
             }
          
           
        }

       

        public void leftbody(string title, string price, string description, string city, string date, string province, int i)
        {

            //MessageBox.Show("i reached in leftbody div");

            HtmlGenericControl freeads = new HtmlGenericControl("DIV");




            //div created for free ads 
            HtmlGenericControl dynDiv = new HtmlGenericControl("DIV");

            freeads.ID = i.ToString();
            //          freeads.Attributes["Style"] = "border-radius:5px;";
            freeads.Style.Add(HtmlTextWriterStyle.BackgroundColor, "#4b6c9e");
            freeads.Style.Add(HtmlTextWriterStyle.Height, "90px");
            freeads.Style.Add(HtmlTextWriterStyle.Width, "550px");
            freeads.Style.Add(HtmlTextWriterStyle.Left, "200px");


            body_ph.Controls.Add(freeads);


            /* For Province  */
            HtmlGenericControl innerdiv = new HtmlGenericControl("DIV");

            innerdiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            innerdiv.Attributes["style"] = "float:Left;";
            innerdiv.Style.Add(HtmlTextWriterStyle.Height, "70px");
            innerdiv.Style.Add(HtmlTextWriterStyle.Width, "50px");
            innerdiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            innerdiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            innerdiv.InnerHtml = province;
            innerdiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(innerdiv);


            /* For Title */
            HtmlGenericControl header = new HtmlGenericControl("DIV");

            header.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            header.Style.Add(HtmlTextWriterStyle.Height, "20px");
            header.Style.Add(HtmlTextWriterStyle.Width, "350px");
            header.Attributes["style"] = "float:left;";
            header.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            header.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            header.InnerHtml = title;
            header.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(header);

            /*For Desciption */
            HtmlGenericControl detaildiv = new HtmlGenericControl("DIV");

            detaildiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            detaildiv.Style.Add(HtmlTextWriterStyle.Height, "45px");
            detaildiv.Style.Add(HtmlTextWriterStyle.Width, "350px");
            detaildiv.Attributes["style"] = "float:left;";
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            detaildiv.InnerHtml = description;
            detaildiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(detaildiv);


            /*FOR CITY DIV*/
            HtmlGenericControl citydiv = new HtmlGenericControl("DIV");

            citydiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            citydiv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            citydiv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            citydiv.Attributes["style"] = "float:right;";
            citydiv.Style.Add(HtmlTextWriterStyle.MarginTop, "-20px");
            citydiv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            citydiv.InnerHtml = city;
            citydiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(citydiv);


            /*FOR DATE TIME DIV*/
            HtmlGenericControl datediv = new HtmlGenericControl("DIV");

            datediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            datediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            datediv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            datediv.Attributes["style"] = "float:right;";
            datediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            datediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            datediv.InnerHtml = date;
            datediv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(datediv);


            /*            FOR PRICE DIV      */
            HtmlGenericControl pricediv = new HtmlGenericControl("DIV");

            pricediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            pricediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            pricediv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            pricediv.Attributes["style"] = "float:right;";
            pricediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            pricediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            pricediv.InnerHtml = price;
            pricediv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(pricediv);





        }
        ///*~~~~~~~~~~~~~~method for autos~~~~~~~~~~~~~~~~~*/
        //public void getdata()
        //{

        //    string query = "select temp_title ,temp_price,temp_description,temp_city ,temp_datetime ,temp_category from temp  ORDER  BY temp_datetime DESC   ";
        //    SqlConnection connection = Connection_Manger.getConnection();
        //    SqlCommand command = new SqlCommand(query, connection);
        //    try
        //    {
        //        connection.Open();
        //        SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
        //        int i = 0;

        //        if (reader.HasRows)
        //        {
        //            message_label.Text = "Your Search Results";
        //            while (reader.Read())
        //            {

        //                this.leftbody(reader["temp_title"].ToString(), reader["temp_price"].ToString(), reader["temp_description"].ToString(), reader["temp_city"].ToString(), reader["temp_datetime"].ToString(), reader["temp_category"].ToString(), i++);
        //            }

        //        }
        //        else
        //        {
                    
        //            message_label.Text = "No Record Found";


        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}
        public void getnewdata(string tablename)
        {

            string query = "select autos_car_title as title,autos_car_id as id ,autos_car_price as price,autos_car_content as content,autos_car_city as city ,autos_car_datetime as datetime ,autos_car_image as image from " + tablename + "  ORDER  BY autos_car_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                
                    dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                
                message_label.Text = ex.Message;
            }
        }
        public void autos_parts_data(string tablename)
        {

            string query = "select autos_auto_parts_title as title,autos_auto_parts_id as id ,autos_auto_parts_price as price,autos_auto_parts_content as content,autos_auto_parts_city as city ,autos_auto_parts_datetime as datetime ,autos_auto_parts_image image from " + tablename + "  ORDER  BY autos_auto_parts_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                
                    dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void autos_boats_ships_data(string tablename)
        {

            string query = "select autos_boats_ships_title as title,autos_boats_ships_id as id ,autos_boats_ships_price as price,autos_boats_ships_content as content,autos_boats_ships_city as city ,autos_boats_ships_datetime as datetime ,autos_boats_ships_image as image from " + tablename + "  ORDER  BY autos_boats_ships_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                
                    dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void autos_heavy_vehicle_data(string tablename)
        {

            string query = "select autos_heavy_vehicle_title as title,autos_heavy_vehicle_id as id ,autos_heavy_vehicle_price as price,autos_heavy_vehicle_content as content,autos_heavy_vehicle_city as city,autos_heavy_vehicle_datetime as datetime ,autos_heavy_vehicle_image as image from " + tablename + "  ORDER  BY autos_heavy_vehicle_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
            SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                    dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void autos_motor_vehicle_data(string tablename)
        {

            string query = "select autos_motor_vehicle_title as title,autos_motor_vehicle_id as id ,autos_motor_vehicle_price as price,autos_motor_vehicle_content as content,autos_motor_vehicle_city as city ,autos_motor_vehicle_datetime as datetime ,autos_motor_vehicle_image as image from " + tablename + "  ORDER  BY autos_motor_vehicle_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
              //  dp.Fill(ds);
                    dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void autos_other_vehicle_data(string tablename)
        {

            string query = "select autos_other_vehicle_title as title ,autos_other_vehicle_id as id ,autos_other_vehicle_price as price,autos_other_vehicle_content as content,autos_other_vehicle_city as city ,autos_other_vehicle_datetime as datetime ,autos_other_vehicle_image as image from " + tablename + "  ORDER  BY autos_other_vehicle_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                    message_label.Text = "your  results";
                
                    //SqlDataReader reader = command.ExecuteReader();
                    //if (reader.HasRows)
                    //{
                
                
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }

        /*~~~~~~~~~~~~~~method for home appliances~~~~~~~~~~~~~~~~~*/
        public void homeappliances_air_conditioner_data(string tablename)
        {

            string query = "select home_appliances_air_conditioner_title as title,home_appliances_air_conditioner_id as id ,home_appliances_air_conditioner_price as price,home_appliances_air_conditioner_content as content,home_appliances_air_conditioner_city as city ,home_appliances_air_conditioner_datetime as datetime ,home_appliances_air_conditioner_image as image from " + tablename + "  ORDER  BY home_appliances_air_conditioner_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}

            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void homeappliances_fridge_data(string tablename)
        {

            string query = "select home_appliances_fridge_title as title ,home_appliances_fridge_id as id,home_appliances_fridge_price as price,home_appliances_fridge_content as content,home_appliances_fridge_city as city ,home_appliances_fridge_datetime as datetime ,home_appliances_fridge_image as image from " + tablename + "  ORDER  BY home_appliances_fridge_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}

            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void homeappliances_furniture_data(string tablename)
        {

            string query = "select home_appliances_furniture_title as title ,home_appliances_furniture_price as price,home_appliances_furniture_id as id,home_appliances_furniture_content as content,home_appliances_furniture_city as city ,home_appliances_furniture_datetime as datetime,home_appliances_furniture_image as image from " + tablename + "  ORDER  BY home_appliances_furniture_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void otherhomeappliances_data(string tablename)
        {

            string query = "select home_appliances_other_home_appliances_title as title ,home_appliances_other_home_appliances_price as price,home_appliances_other_home_appliances_id as id,home_appliances_other_home_appliances_content as content,home_appliances_other_home_appliances_city as city ,home_appliances_other_home_appliances_datetime as datetime ,home_appliances_other_home_appliances_image as image from " + tablename + "  ORDER  BY home_appliances_other_home_appliances_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void homeappliances_tv_data(string tablename)
        {

            string query = "select home_appliances_tv_title as title ,home_appliances_tv_price as price ,home_appliances_tv_content as content,home_appliances_tv_city as city,home_appliances_tv_id as id  ,home_appliances_tv_datetime  as datetime,home_appliances_tv_image as image from " + tablename + "  ORDER  BY home_appliances_tv_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void homeappliances_vacume_cleaner_data(string tablename)
        {

            string query = "select home_appliances_vacume_cleaner_title as title  ,home_appliances_vacume_cleaner_price as price,home_appliances_vacume_cleaner_content as content,home_appliances_vacume_cleaner_id as id,home_appliances_vacume_cleaner_city as city ,home_appliances_vacume_cleaner_datetime as datetime ,home_appliances_vacume_cleaner_image as image from " + tablename + "  ORDER  BY home_appliances_vacume_cleaner_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void homeappliances_water_chiller_data(string tablename)
        {

            string query = "select home_appliances_water_chiller_title as title,home_appliances_water_chiller_price as price,home_appliances_water_chiller_content as content,home_appliances_water_chiller_city as city,home_appliances_water_chiller_id as id ,home_appliances_water_chiller_datetime as datetime ,home_appliances_water_chiller_image as image from " + tablename + "  ORDER  BY home_appliances_water_chiller_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        /*~~~~~~~~~~~~~~method for electronics~~~~~~~~~~~~~~~~~*/
        public void electronics_computer_accessories_data(string tablename)
        {

            string query = "select elecronics_computer_accessories_title as title,elecronics_computer_accessories_id as id ,elecronics_computer_accessories_price as price ,elecronics_computer_accessories_content as content,elecronics_computer_accessories_city as city,elecronics_computer_accessories_datetime as datetime ,elecronics_computer_accessories_image as image from " + tablename + "  ORDER  BY elecronics_computer_accessories_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_computer_data(string tablename)
        {

            string query = "select electronics_computer_title as title,electronics_computer_id as id ,electronics_computer_price as price,electronics_computer_content as content,electronics_computer_city as city ,electronics_computer_datetime as datetime ,electronics_computer_image as image from " + tablename + "  ORDER  BY electronics_computer_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_laptops_data(string tablename)
        {

            string query = "select electronics_laptops_title as title,electronics_laptops_id as id ,electronics_laptops_price as price,electronics_laptops_content as content,electronics_laptops_city as city ,electronics_laptops_datetime as datetime ,electronics_laptops_image as image from " + tablename + "  ORDER  BY electronics_laptops_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_mobile_data(string tablename)
        {

            string query = "select electronics_mobile_title as title ,electronics_mobile_id as id,electronics_mobile_price as price,electronics_mobile_content as content,electronics_mobile_city as city ,electronics_mobile_datetime as datetime ,electronics_mobile_image as image from " + tablename + "  ORDER  BY electronics_mobile_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_mobile_accessories_data(string tablename)
        {

            string query = "select electronics_mobile_accessories_title as title,electronics_mobile_accessories_id as id ,electronics_mobile_accessories_price as price,electronics_mobile_accessories_content as content,electronics_mobile_accessories_city as city ,electronics_mobile_accessories_datetime as datetime ,electronics_mobile_accessories_image as image from " + tablename + "  ORDER  BY electronics_mobile_accessories_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_other_electronics_data(string tablename)
        {

            string query = "select electronics_other_electronics_title as title,electronics_other_electronics_id as id ,electronics_other_electronics_price as price,electronics_other_electronics_content as content,electronics_other_electronics_city as city ,electronics_other_electronics_datetime as datetime ,electronics_other_electronics_image as image from " + tablename + "  ORDER  BY electronics_other_electronics_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }
        public void electronics_software_data(string tablename)
        {

            string query = "select electronics_software_title as title,electronics_software_id as id ,electronics_software_price as price,electronics_software_content as content,electronics_software_city as city ,electronics_software_datetime as datetime ,electronics_software_image as image from " + tablename + "  ORDER  BY electronics_software_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                message_label.Text = ex.Message;
            }
        }

        /*~~~~~~~~~~~~~~method for education~~~~~~~~~~~~~~~~~*/
        public void education_computer_institute_data(string tablename)
        {

            string query = "select education_computer_institutes_title as title,education_computer_institutes_id as id ,education_computer_institutes_price  as price,education_computer_institutes_content as content,education_computer_institutes_city as city ,education_computer_institutes_datetime as datetime ,education_computer_institutes_image as image from " + tablename + "  ORDER  BY education_computer_institutes_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_cooking_classes_data(string tablename)
        {

            string query = "select education_cooking_classes_title as title ,education_cooking_classes_id as id,education_cooking_classes_price as price,education_cooking_classes_content as content,education_cooking_classes_city as city,education_cooking_classes_datetime as datetime ,education_cooking_classes_image as image from " + tablename + "  ORDER  BY education_cooking_classes_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_home_tution_data(string tablename)
        {

            string query = "select education_home_tution_title as title,education_home_tution_id as id,education_home_tution_price as price,education_home_tution_content as content,education_home_tution_city as city,education_home_tution_datetime as datetime,education_home_tution_image as image from " + tablename + "  ORDER  BY education_home_tution_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_launage_academies_data(string tablename)
        {

            string query = "select education_launage_academies_title as title,education_launage_academies_id as id ,education_launage_academies_price as price,education_launage_academies_content as content,education_launage_academies_city as city ,education_launage_academies_datetime as datetime ,education_launage_academies_image as image from " + tablename + "  ORDER  BY education_launage_academies_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_montessori_data(string tablename)
        {

            string query = "select education_montessori_title as title,education_montessori_id as id , education_montessori_price as price, education_montessori_content as content, education_montessori_city as city , education_montessori_datetime as datetime , education_montessori_image as image from " + tablename + "  ORDER  BY  education_montessori_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_private_tutors_data(string tablename)
        {

            string query = "select education_private_tutors_title as title,education_private_tutors_id as id , education_private_tutors_price as price, education_private_tutors_content as content, education_private_tutors_city as city , education_private_tutors_datetime as datetime , education_private_tutors_image as image from " + tablename + "  ORDER  BY  education_private_tutors_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_schools_data(string tablename)
        {

            string query = "select education_schools_title as title ,education_schools_id as id, education_schools_price as price, education_schools_content as content, education_schools_city as city, education_schools_datetime as datetime , education_schools_image as image from " + tablename + "  ORDER  BY  education_schools_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_short_courses_data(string tablename)
        {

            string query = "select education_short_courses_title as title,education_short_courses_id as id , education_short_courses_price as price, education_short_courses_content as content, education_short_courses_city as city , education_short_courses_datetime as datetime , education_short_courses_image as image from " + tablename + "  ORDER  BY  education_short_courses_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void education_technical_institute_data(string tablename)
        {

            string query = "select education_technical_institute_title as title,education_technical_institute_id as id , education_technical_institute_price as price, education_technical_institute_content as content, education_technical_institute_city as city , education_technical_institute_datetime as datetime , education_technical_institute_image as image from " + tablename + "  ORDER  BY  education_technical_institute_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /*~~~~~~~~~~~~~~method for Miscellaneous~~~~~~~~~~~~~~~~~*/

        public void miscellaneous_art_crafts_data(string tablename)
        {

            string query = "select miscellaneous_art_crafts_title as title,miscellaneous_art_crafts_id as id , miscellaneous_art_crafts_price as price, miscellaneous_art_crafts_content as content, miscellaneous_art_crafts_city as city , miscellaneous_art_crafts_datetime as datetime, miscellaneous_art_crafts_image as image from " + tablename + "  ORDER  BY  miscellaneous_art_crafts_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_book_magazines_data(string tablename)
        {

            string query = "select miscellaneous_book_magazines_title as title,miscellaneous_book_magazines_id as id , miscellaneous_book_magazines_price as price, miscellaneous_book_magazines_content as content, miscellaneous_book_magazines_city as city , miscellaneous_book_magazines_datetime as datetime , miscellaneous_book_magazines_image as image from " + tablename + "  ORDER  BY  miscellaneous_book_magazines_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_clothing_data(string tablename)
        {

            string query = "select miscellaneous_clothing_title as title ,miscellaneous_clothing_id as id , miscellaneous_clothing_price as price, miscellaneous_clothing_content as content, miscellaneous_clothing_city as city , miscellaneous_clothing_datetime  as datetime, miscellaneous_clothing_image as image from " + tablename + "  ORDER  BY  miscellaneous_clothing_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_eating_outlets_data(string tablename)
        {

            string query = "select miscellaneous_eating_outlets_title as title, miscellaneous_eating_outlets_id as id, miscellaneous_eating_outlets_price as price, miscellaneous_eating_outlets_content as content, miscellaneous_eating_outlets_city as city , miscellaneous_eating_outlets_datetime as datetime , miscellaneous_eating_outlets_image  as image from " + tablename + "  ORDER  BY  miscellaneous_eating_outlets_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_guns_data(string tablename)
        {

            string query = "select miscellaneous_guns_title as title,miscellaneous_guns_id as id , miscellaneous_guns_price as price, miscellaneous_guns_content as content, miscellaneous_guns_city as city , miscellaneous_guns_datetime as datetime , miscellaneous_guns_image as image from " + tablename + "  ORDER  BY  miscellaneous_guns_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_pets_data(string tablename)
        {

            string query = "select miscellaneous_pets_title as title,miscellaneous_pets_id as id , miscellaneous_pets_price as price, miscellaneous_pets_content as content, miscellaneous_pets_city as city , miscellaneous_pets_datetime as datetime , miscellaneous_pets_image as image from " + tablename + "  ORDER  BY  miscellaneous_pets_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void miscellaneous_jewelery_data(string tablename)
        {

            string query = "select miscellaneous_jewelery_title as title,miscellaneous_jewelery_id as id , miscellaneous_jewelery_price as price, miscellaneous_jewelery_content as content, miscellaneous_jewelery_city as city , miscellaneous_jewelery_datetime as datetime , miscellaneous_jewelery_image as image from " + tablename + "  ORDER  BY  miscellaneous_jewelery_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /*~~~~~~~~~~~~~~method for events~~~~~~~~~~~~~~~~~*/
        public void events_announcements_data(string tablename)
        {

            string query = "select events_announcements_title as title,events_announcements_id as id , events_announcements_price as price, events_announcements_content as content, events_announcements_city as city , events_announcements_datetime as datetime , events_announcements_image as image from " + tablename + "  ORDER  BY  events_announcements_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void events_auctions_data(string tablename)
        {

            string query = "select events_auctions_title as title ,events_auctions_id as id, events_auctions_price as price, events_auctions_content as content, events_auctions_city as city , events_auctions_datetime as datetime , events_auctions_image as image from " + tablename + "  ORDER  BY  events_auctions_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void events_lots_funds_data(string tablename)
        {

            string query = "select events_lots_funds_title as title,events_lots_funds_id as id , events_lots_funds_price as price, events_lots_funds_content as content, events_lots_funds_city as city , events_lots_funds_datetime as datetime , events_lots_funds_image as image from " + tablename + "  ORDER  BY  events_lots_funds_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void events_personals_data(string tablename)
        {

            string query = "select events_personals_title as title,events_personals_id as id , events_personals_price as price, events_personals_content as content, events_personals_city as city , events_personals_datetime as datetime , events_personals_image as image from " + tablename + "  ORDER  BY  events_personals_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void events_special_events_occasions_data(string tablename)
        {

            string query = "select events_special_events_occasions_title as title,events_special_events_occasions_id as id , events_special_events_occasions_price as price, events_special_events_occasions_content as content, events_special_events_occasions_city as city , events_special_events_occasions_datetime as datetime , events_special_events_occasions_image as image from " + tablename + "  ORDER  BY  events_special_events_occasions_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void events_special_tender_notice_data(string tablename)
        {

            string query = "select events_special_tender_notice_title as title,events_special_tender_notice_id as id , events_special_tender_notice_price as price, events_special_tender_notice_content as content, events_special_tender_notice_city  as city, events_special_tender_notice_datetime as datetime , events_special_tender_notice_image as image from " + tablename + "  ORDER  BY  events_special_tender_notice_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /*~~~~~~~~~~~~~~method for Real Estate~~~~~~~~~~~~~~~~~*/
        public void real_estate_appartment_data(string tablename)
        {

            string query = "select real_estate_appartment_title as title,real_estate_appartment_id as id , real_estate_appartment_price as price, real_estate_appartment_content as content, real_estate_appartment_city as city , real_estate_appartment_datetime as datetime , real_estate_appartment_image as image from " + tablename + "  ORDER  BY  real_estate_appartment_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void real_estate_houses_data(string tablename)
        {

            string query = "select real_estate_houses_title as title,real_estate_houses_id as id , real_estate_houses_price as price, real_estate_houses_content as content, real_estate_houses_city as city , real_estate_houses_datetime as datetime , real_estate_houses_image as image from " + tablename + "  ORDER  BY  real_estate_houses_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void real_estate_offices_data(string tablename)
        {

            string query = "select real_estate_offices_title as title,real_estate_offices_id as id , real_estate_offices_price as price, real_estate_offices_content as content, real_estate_offices_city as city , real_estate_offices_datetime as datetime , real_estate_offices_image as image from " + tablename + "  ORDER  BY  real_estate_offices_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void real_estate_plots_lands_data(string tablename)
        {

            string query = "select real_estate_plots_lands_title as title,real_estate_plots_lands_id as id , real_estate_plots_lands_price as price, real_estate_plots_lands_content as content, real_estate_plots_lands_city as city , real_estate_plots_lands_datetime as datetime , real_estate_plots_lands_image as image from " + tablename + "  ORDER  BY  real_estate_plots_lands_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void real_estate_shops_data(string tablename)
        {

            string query = "select real_estate_shops_title as title,real_estate_shops_id as id , real_estate_shops_price as price, real_estate_shops_content as content, real_estate_shops_city as city , real_estate_shops_datetime as datetime , real_estate_shops_image as image from " + tablename + "  ORDER  BY  real_estate_shops_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /*~~~~~~~~~~~~~~method for Services~~~~~~~~~~~~~~~~~*/
        public void services_data(string tablename)
        {

            string query = "select services_title as title,services_id as id , services_price as price, services_content as content, services_city as city , services_datetime as datetime , services_image as image from " + tablename + "  ORDER  BY  services_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /*~~~~~~~~~~~~~~method for Matrimonial ~~~~~~~~~~~~~~~~~*/
        public void matrimonial_brides_data(string tablename)
        {

            string query = "select matrimonial_brides_title as title,matrimonial_brides_id as id ,  matrimonial_brides_content as content,matrimonial_brides_location as price, matrimonial_brides_city as city , matrimonial_brides_datetime as datetime , matrimonial_brides_image as image from " + tablename + "  ORDER  BY  matrimonial_brides_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void matrimonial_grooms_data(string tablename)
        {

            string query = "select Matrimonial_grooms_title as title,Matrimonial_grooms_id as id ,  Matrimonial_grooms_content as content, Matrimonial_grooms_city as city , Matrimonial_grooms_datetime as datetime,Matrimonial_grooms_location as price , Matrimonial_grooms_image as image from " + tablename + "  ORDER  BY  matrimonial_grooms_id DESC   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);
                ListView1.DataSource = ds;
                ListView1.DataBind();
                message_label.Text = "your  results";

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{


                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "show_details")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Details.aspx?id="+id+"&tablename="+tablename);
            }
        }
    }

}