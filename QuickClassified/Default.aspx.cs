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
    public partial class _Default : System.Web.UI.Page 
    {
      //  bean beanobj = new bean();
        ads_autos_DAO autoobj = new ads_autos_DAO();
        ad_home_appliances_DAO homeapplianceobj = new ad_home_appliances_DAO();
        ad_education_DAO educattionobj = new ad_education_DAO();
        ad_miscllaneous_DAO miscllaneousobj = new ad_miscllaneous_DAO();
        ad_matrimonial_DAO matrimonialobj = new ad_matrimonial_DAO();
        ad_services_DAO servicesobj = new ad_services_DAO();
        ad_real_estate_DAO realestateobj = new ad_real_estate_DAO();
        ad_events_DAO eventsobj = new ad_events_DAO();
        ad_electronics_DAO electronicobj = new ad_electronics_DAO();
        protected void Page_Load(object sender, EventArgs e)
        {
           
//  this.getdata();
        //   this.previousdata();    
         
         //this.mainBodyDiv(); 
            computerinstitute_counter_lb.Text = educattionobj.computer_institute_counter().ToString();
            cookingclasses_counter_lb.Text = educattionobj.cooking_classses_counter().ToString();
            hometuction_counter_lb.Text = educattionobj.home_tuction_counter().ToString();
            languages_academes_counter_lb.Text = educattionobj.languages_academies_counter().ToString();
            montessori_counter_lb.Text = educattionobj.montessori_counter().ToString();
            private_tutors_counter_lb.Text = educattionobj.private_tutors_counter().ToString();
            schools_counter_lb.Text = educattionobj.schools_counter().ToString();
            shorts_courses_counter_lb.Text = educattionobj.short_courses_counter().ToString();
            technical_institutes_counter_lb.Text = educattionobj.technical_institutes_counter().ToString();

            computer_accessories_counter_lb.Text = electronicobj.computer_accessories_counter().ToString();
            computers_counter_lb.Text = electronicobj.computer_counter().ToString();
            laptop_counter_lb.Text = electronicobj.labtop_counter().ToString();
            mobile_counter_lb.Text = electronicobj.mobile_counter().ToString();
            mobile_accessories_counter_lb.Text = electronicobj.mobile_accessories_counter().ToString();
            otherelectronic_counter_lb.Text = electronicobj.other_electronics_counter().ToString();
            software_counter_lb.Text = electronicobj.software_counter().ToString();

            announcement_counter_lb.Text = eventsobj.event_announcement_counter().ToString();
            acution_counter_lb.Text = eventsobj.auction_counter().ToString();
            lotsfunds_counter_lb.Text = eventsobj.lots_fund_counter().ToString();
            personal_counter_lb.Text = eventsobj.personals_counter().ToString();
            special_events_counter_lb.Text = eventsobj.special_events_counter().ToString();
            tendernotice_counter_lb.Text = eventsobj.tender_notice_counter().ToString();

            airconditioner_counter_lb.Text = homeapplianceobj.airconditioner_counter().ToString();
            fridge_counter_lb.Text = homeapplianceobj.fridge_counter().ToString();
            furniture_counter_lb.Text = homeapplianceobj.furniture_counter().ToString();
            otherhomeappliences_counter_lb.Text = homeapplianceobj.other_home_appliences_counter().ToString();
            tv_counter_lb.Text = homeapplianceobj.tv_counter().ToString();
            vacumecleaner_counter_lb.Text = homeapplianceobj.vacume_cleaner_counter().ToString();
            waterchiller_counter_lb.Text = homeapplianceobj.water_chiller_counter().ToString();

            brides_counter_lb.Text = matrimonialobj.brides_counter().ToString();
            groom_counter_lb.Text = matrimonialobj.groom_counter().ToString();

            art_craft_counter_lb.Text = miscllaneousobj.art_craft_counter().ToString();
            books_magazines_counter_lb.Text = miscllaneousobj.book_magazines_counter().ToString();
            clothing_counter_lb.Text = miscllaneousobj.clothing_counter().ToString();
            eatingoutlets_counter_lb.Text = miscllaneousobj.eating_outlets_counter().ToString();
            gun_counter_lb.Text = miscllaneousobj.guns_counter().ToString();
            jewelery_counter_lb.Text = miscllaneousobj.jewelery_counter().ToString();
            pets_counter_lb.Text = miscllaneousobj.pets_counter().ToString();

            appartments_counter_lb.Text = realestateobj.appartments_counter().ToString();
            houses_counter_lb.Text = realestateobj.houses_counter().ToString();
            offices_counter_lb.Text = realestateobj.offices_counter().ToString();
            plots_lands_counter_lb.Text = realestateobj.plots_land_counter().ToString();
            shops_counter_lb.Text = realestateobj.shop_counter().ToString();

            otherservices_counter_lb.Text = servicesobj.services_counter().ToString();

            car_counter_lb.Text = autoobj.car_counter().ToString();
            autosparts_counter_lb.Text = autoobj.Auto_parts_counter().ToString();
            boat_counter_lb.Text = autoobj.Boats_ships_counter().ToString();
            heavyvehicles_counter_lb.Text = autoobj.heavy_vehcile_counter().ToString();
            motercycles_counter_lb.Text = autoobj.motor_vehcile_counter().ToString();
            othersvehicle_counter_lb.Text = autoobj.other_vehcile_counter().ToString();
            

        }


 

        public HtmlGenericControl leftbody(SqlDataReader reader)
        {

            // + + +  + + 
            HtmlGenericControl wrapper = new HtmlGenericControl("DIV");
            
            
            int i = 0;
            while (reader.Read())
            {
                HtmlGenericControl freeads = new HtmlGenericControl("DIV");    
                i++;
                //div created for free ads 
                HtmlGenericControl dynDiv = new HtmlGenericControl("DIV");

                freeads.ID = i.ToString();
                //          freeads.Attributes["Style"] = "border-radius:5px;";
                freeads.Style.Add(HtmlTextWriterStyle.BackgroundColor, "#4b6c9e");
                freeads.Style.Add(HtmlTextWriterStyle.Height, "90px");
                freeads.Style.Add(HtmlTextWriterStyle.Width, "550px");
                freeads.Style.Add(HtmlTextWriterStyle.Left, "200px");


                //body_ph.Controls.Add(freeads);


                /* For Province  */
                HtmlGenericControl innerdiv = new HtmlGenericControl("DIV");

                innerdiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
                innerdiv.Attributes["style"] = "float:Left;";
                innerdiv.Style.Add(HtmlTextWriterStyle.Height, "70px");
                innerdiv.Style.Add(HtmlTextWriterStyle.Width, "50px");
                innerdiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
                innerdiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
                innerdiv.InnerHtml = reader["temp_datetime"].ToString();// province;
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
                header.InnerHtml = reader["temp_title"].ToString();//setting the title
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
                detaildiv.InnerHtml = reader["temp_description"].ToString();//description;
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
                citydiv.InnerHtml = reader["temp_city"].ToString();// city;
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
                datediv.InnerHtml = reader["temp_category"].ToString();// date;
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
                pricediv.InnerHtml = reader["temp_price"].ToString();// price;
                pricediv.Style.Add(HtmlTextWriterStyle.Left, "100px");
                freeads.Controls.Add(pricediv);

                wrapper.Controls.Add(freeads);
            }//end while
          //  return freeads;
            body_ph.Controls.Add(wrapper);
            return wrapper;

        }
   
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
        //            while (reader.Read())
        //            {

        //                this.leftbody(reader["temp_title"].ToString(), reader["temp_price"].ToString(), reader["temp_description"].ToString(), reader["temp_city"].ToString(), reader["temp_datetime"].ToString(), reader["temp_category"].ToString(), i++);
        //            }

        //        }
        //        else
        //        {
        //            MessageBox.Show("data not found");


        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}
        
        public  void previousdata()
        {

           // string query = "SELECT        temp_id, temp_category, temp_title, temp_description, temp_datetime, temp_price, temp_city     FROM     (SELECT        TOP (6) temp_id, temp_category, temp_title, temp_description, temp_datetime, temp_price, temp_city  FROM    (SELECT        TOP (10) temp_id, temp_category, temp_title, temp_description, temp_datetime, temp_price, temp_city     FROM    temp    ORDER BY temp_id) AS newtbl    ORDER BY temp_id DESC) AS newtbl2    ORDER BY temp_id";
          string query = "select  temp_title ,temp_price,temp_description,temp_city ,temp_datetime ,temp_category from temp where  temp_id = 1  ORDER  BY temp_datetime ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                int i = 0;

                if (reader.HasRows)
                {
                   
                    //while (reader.Read())
                    //{
                    //    i++;
                    //   // MessageBox.Show(reader["temp_title"].ToString() + reader["temp_price"].ToString()+ reader["temp_description"].ToString()+ reader["temp_city"].ToString() + reader["temp_datetime"].ToString()+ reader["temp_category"].ToString());
                    //   // this.leftbody(reader["temp_title"].ToString(), reader["temp_price"].ToString(), reader["temp_description"].ToString(), reader["temp_city"].ToString(), reader["temp_datetime"].ToString(), reader["temp_category"].ToString(), i++);
                    //}
                    
                    this.leftbody(reader);

                }
                else
                {
                    MessageBox.Show("data not found");


                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        /*           parse a string method           */
       //public  void Main(string text)
       // {
       //     char[] delimiterChars = { ' ', '/', ':' }; 
       //     string[] words = text.Split(delimiterChars);
       //     foreach (string s in words)
       //     {
       //      MessageBox.Show(s);
       //     }
       // }




       public void mainBodyDiv()
       {



           HtmlGenericControl leftBodyDiv = new HtmlGenericControl("DIV");

           leftBodyDiv.Style.Add(HtmlTextWriterStyle.Width, "650px");
           leftBodyDiv.Style.Add(HtmlTextWriterStyle.Height, "0px");
           leftBodyDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Brown");
           //leftBodyDiv.Style.Add(HtmlTextWriterStyle.MarginTop, "400px");

           body_ph.Controls.Add(leftBodyDiv);


           HtmlGenericControl rightBodyDiv = new HtmlGenericControl("DIV");

           rightBodyDiv.Attributes["style"] = "float:right;";
           rightBodyDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "gray");
           rightBodyDiv.Style.Add(HtmlTextWriterStyle.Width, "125px");
           rightBodyDiv.Style.Add(HtmlTextWriterStyle.Height, "700px");
           rightBodyDiv.Style.Add(HtmlTextWriterStyle.MarginTop, "-700px");


           //rightBodyDiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "-460px");

           body_ph.Controls.Add(rightBodyDiv);

       }

    

       

       protected void autos_car_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_car";
           Response.Redirect("showdata.aspx?attr=ad_autos_car");
       }

       protected void autos_Parts_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_auto_parts";
           Response.Redirect("showdata.aspx?attr=ad_autos_auto_parts");
       }

       protected void autos_Boats_Ships_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_boats_ships";
           Response.Redirect("showdata.aspx?attr=ad_autos_boats_ships");
       }

       protected void autos_Heavy_Vehicles_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_heavy_vehicle";
           Response.Redirect("showdata.aspx?attr=ad_autos_heavy_vehicle");
       }

       protected void autos_Motorcycles_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_motor_vehicle";
           Response.Redirect("showdata.aspx?attr=ad_autos_motor_vehicle");
       }

       //protected void combineclick(object sender, EventArgs e) {
       //    //MessageBox.Show("In Combine Click");
       //    MessageBox.Show(Request.QueryString.Count.ToString() + this.Context.Request["catName"]);
          
       //}

       protected void autos_Other_Vehicles_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_autos_other_vehicle";
           Response.Redirect("showdata.aspx?attr=ad_autos_other_vehicle");
       }

       protected void Home_Appliances_Air_conditioner_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_air_conditioner";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_air_conditioner");
       }

       protected void Home_Appliances_Fridge_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_fridge";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_fridge");
       }

       protected void Home_Appliances_Furniture_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_furniture";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_furniture");
       }

       protected void Home_Appliances_Other_Home_Appliances_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_other_home_appliances";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_other_home_appliances");
       }

       protected void Home_Appliances_tv_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_tv";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_tv");
       }

       protected void Home_Appliances_Vacume_cleaner_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_vacume_cleaner";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_vacume_cleaner");
       }

       protected void Home_Appliances_Water_Chiller_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_home_appliances_water_chiller";
           Response.Redirect("showdata.aspx?attr=ad_home_appliances_water_chiller");
       }

       protected void Electronics_Computer_Acessories_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_elecronics_computer_accessories";
           Response.Redirect("showdata.aspx?attr=ad_elecronics_computer_accessories");
       }

       protected void Electronics_Computers_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_computer";
           Response.Redirect("showdata.aspx?attr=ad_electronics_computer");
       }

       protected void Electronics_Laptops_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_laptops";
           Response.Redirect("showdata.aspx?attr=ad_electronics_laptops");
       }

       protected void Electronics_Mobile_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_mobile";
           Response.Redirect("showdata.aspx?attr=ad_electronics_mobile");
       }

       protected void Electronics_Mobile_Accessories_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_mobile_accessories";
           Response.Redirect("showdata.aspx?attr=ad_electronics_mobile_accessories");
       }

       protected void Electronics_Other_Electronics_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_other_electronics";
           Response.Redirect("showdata.aspx?attr=ad_electronics_other_electronics");
       }

       protected void Electronics_Softwares_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_electronics_software";
           Response.Redirect("showdata.aspx?attr=ad_electronics_software");
       }

       protected void Education_Computer_Insitutes_lb_Click(object sender, EventArgs e)
       {// name of table
           //autosBean.autos_category_bean = "ad_education_computer_institutes";
           Response.Redirect("showdata.aspx?attr=ad_education_computer_institutes");
       }

       protected void Education_Cooking_Classes_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_cooking_classes";
           Response.Redirect("showdata.aspx?attr=ad_education_cooking_classes");
       }

       protected void Education_Home_Tutions_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_home_tution";
           Response.Redirect("showdata.aspx?attr=ad_education_home_tution");
       }

       protected void Education_Launage_Academies_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_launage_academies";
           Response.Redirect("showdata.aspx?attr=ad_education_launage_academies");
       }

       protected void Education_Montessori_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_montessori";
           Response.Redirect("showdata.aspx?attr=ad_education_montessori");
       }

       protected void Education_Private_Tutors_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_private_tutors";
           Response.Redirect("showdata.aspx?attr=ad_education_private_tutors");
       }

       protected void Education_Schools_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_schools";
           Response.Redirect("showdata.aspx?attr=ad_education_schools");
       }

       protected void Education_Short_Courses_lb_Click(object sender, EventArgs e)
       {

           //autosBean.autos_category_bean = "ad_education_short_courses";
           Response.Redirect("showdata.aspx?attr=ad_education_short_courses");
       }

       protected void Education_Technical_Insitutes_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_education_short_courses";
           Response.Redirect("showdata.aspx?attr=ad_education_technical_institute");
       }

       protected void Miscellaneous_Arts_Crafts_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_art_crafts";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_art_crafts");
       }

       protected void Miscellaneous_Books_Magazines_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_book_magazines";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_book_magazines");
       }

       protected void Miscellaneous_Clothing_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_clothing";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_clothing");
       }

       protected void Miscellaneous_Eating_Outlets_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_eating_outlets";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_eating_outlets");
       }

       protected void Miscellaneous_Guns_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_guns";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_guns");
       }

       protected void Miscellaneous_Pets_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_pets";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_pets");
       }

       protected void Miscellaneous_Jewelery_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_miscellaneous_jewelery";
           Response.Redirect("showdata.aspx?attr=ad_miscellaneous_jewelery");
       }

       protected void Events_Annoucements_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_announcements";
           Response.Redirect("showdata.aspx?attr=ad_events_announcements");
       }

       protected void Events_Auctions_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_auctions";
           Response.Redirect("showdata.aspx?attr=ad_events_auctions");
       }

       protected void Events_Lots_funds_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_lots_funds";
           Response.Redirect("showdata.aspx?attr=ad_events_lots_funds");
       }

       protected void Events_Personals_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_personals";
           Response.Redirect("showdata.aspx?attr=ad_events_personals");
       }

       protected void Events_Special_Events_Ocassions_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_special_events_occasions";
           Response.Redirect("showdata.aspx?attr=ad_events_special_events_occasions");
       }

       protected void Events_Tender_Notice_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_events_special_tender_notice";
           Response.Redirect("showdata.aspx?attr=ad_events_special_tender_notice");
       }

       protected void Real_Estates_Appartments_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_real_estate_appartment";
           Response.Redirect("showdata.aspx?attr=ad_real_estate_appartment");
       }

       protected void Real_Estates_Houses_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_real_estate_houses";
           Response.Redirect("showdata.aspx?attr=ad_real_estate_houses");
       }

       protected void Real_Estates_Offices_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_real_estate_offices";
           Response.Redirect("showdata.aspx?attr=ad_real_estate_offices");
       }

       protected void Real_Estates_Plots_Lands_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_real_estate_plots_lands";
           Response.Redirect("showdata.aspx?attr=ad_real_estate_plots_lands");
       }

       protected void Real_Estates_Shops_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_real_estate_shops";
           Response.Redirect("showdata.aspx?attr=ad_real_estate_shops");
       }

       protected void Services_Other_Services_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_services";
           Response.Redirect("showdata.aspx?attr=ad_services");
       }

       protected void Matrimonial_Brides_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_matrimonial_brides";
           Response.Redirect("showdata.aspx?attr=ad_matrimonial_brides");
       }

       protected void Matrimonial_Grooms_lb_Click(object sender, EventArgs e)
       {
           //autosBean.autos_category_bean = "ad_matrimonial_grooms";
           Response.Redirect("showdata.aspx?attr=ad_matrimonial_grooms");
       }
       



    }
}

    
