using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data;
using QuickClassified.DAO;
using QuickClassified.Ads;
namespace QuickClassified
{
   
    public class ads_autos_DAO
    {

        
      
     
       
        public Boolean insert_ad_autos_auto_parts(string title,string city,string location,string content,string user_type,int price,string images,DateTime datetime,Guid userid,int views) {
            string query = "insert into ad_autos_auto_parts values('"+title+"','"+city+"','"+location+"','"+content+"','"+user_type+"',"+price+",'"+images+"','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try { 
            connection.Open();
                command.ExecuteNonQuery();

            
            }
            catch(Exception ex){
                //MessageBox.Show(ex.Message);
                return false;
            }
            return true;
        }
        public void insert_ad_autos_boats_ships(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_autos_boats_ships values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','" + userid + "'," + views + ")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_autos_car(string title, string city, string location, string content, string user_type, int price, string images,string maker,string model,string year,string condition,string transmission,string engine_type,string mileage,string colour,int engine_capacity,string power_steering,string power_locks,string power_windows,string fm_radio,string cd_Player,string drive_air_bags,string sun_roofs,string abs,string tracker,string air_conditioning,string pessenger_air_bags,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_autos_car values('"+ title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+maker+"','"+model+"','"+year+"','"+condition+"','"+transmission+"','"+engine_type+"','"+mileage+"','"+colour+"',"+engine_capacity+",'"+power_steering+"','"+power_locks+"','"+power_windows+"','"+fm_radio+"','"+cd_Player+"','"+drive_air_bags+"','"+sun_roofs+"','"+abs+"','"+tracker+"','"+air_conditioning+"','"+pessenger_air_bags+"','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
           

        }
        public void insert_ad_autos_heavy_vehicle(string title, string city, string location, string content, string user_type, int price, string images,string maker,string model,string year,string condition,string mileage,string colour,string engine_capacity,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_autos_heavy_vehicle values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+maker+"','"+model+"','"+year+"','"+condition+"','"+mileage+"','"+colour+"','"+engine_capacity+"','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_autos_motor_vehicle(string title, string city, string location, string content, string user_type, int price, string images, string maker, string model, string year, string condition, string mileage, string colour, string engine_capacity,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_autos_motor_vehicle values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + maker + "','" + model + "','" + year + "','" + condition + "','" + mileage + "','" + colour + "','" + engine_capacity + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_autos_other_vehicle(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_autos_other_vehicle values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }


        }

        public void selectlocation(string city) {
            string query = "select ad_location from ad_city_location where ad_city='" + city + "'";
            SqlConnection conn = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, conn);
            try
            {

                conn.Open();
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);

               

            }

            catch (Exception ex) {

                //MessageBox.Show(ex.Message);
            }
       
        
        }

        // method for counter
        public int car_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_car";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int Auto_parts_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_auto_parts";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int Boats_ships_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_boats_ships";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int heavy_vehcile_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_heavy_vehicle";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int motor_vehcile_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_motor_vehicle";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int other_vehcile_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_autos_other_vehicle";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }

    }
}