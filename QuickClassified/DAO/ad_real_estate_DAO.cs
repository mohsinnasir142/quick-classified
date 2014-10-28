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
    public class ad_real_estate_DAO
    {
        public void insert_ad_real_estate_appartment(string title, string city, string location, string content, string user_type, int price,string address,string area,string area_unit,string aggrement_type,string property_type,string facing,string year_built,string floor,int no_of_bedrooms,int no_of_rooms,int no_of_bathrooms,string drawing_room,string dining_room,string furnished,string kitchen,string pool,string servent_quater,string lawn,string parking,string terrace,string corner_location,string balcony,string elevator, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_real_estate_appartment values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + address + "','" + area + "','" + area_unit + "','" + aggrement_type + "','" + property_type + "','" + facing + "','" + year_built + "','" + floor + "'," + no_of_bedrooms + "," + no_of_rooms + "," + no_of_bathrooms + ",'" + drawing_room + "','" + dining_room + "','" + furnished + "','" + kitchen + "','" + pool + "','" + servent_quater + "','" + lawn + "','" + parking + "','" + terrace + "','" + corner_location + "','" + balcony + "','" + elevator + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_real_estate_houses(string title, string city, string location, string content, string user_type, int price, string address, string area, string area_unit, string aggrement_type, string property_type, string facing, string year_built, string floor, int no_of_rooms, int no_of_bedrooms, int no_of_bathrooms, string drawing_room, string dining_room, string furnished, string kitchen, string pool, string servent_quater, string lawn, string parking, string terrace, string corner_location, string balcony, string elevator, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_real_estate_houses values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + address + "','" + area + "','" + area_unit + "','" + aggrement_type + "','" + property_type + "','" + facing + "','" + year_built + "','" + floor + "'," + no_of_rooms + "," + no_of_bedrooms + "," + no_of_bathrooms + ",'" + drawing_room + "','" + dining_room + "','" + furnished + "','" + kitchen + "','" + pool + "','" + servent_quater + "','" + lawn + "','" + parking + "','" + terrace + "','" + corner_location + "','" + balcony + "','" + elevator + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_real_estate_offices(string title, string city, string location, string content, string user_type, int price, string address, string area, string area_unit, string aggrement_type,string facing, string property_type , string year_built, string floor, int no_of_bedrooms, int no_of_rooms, int no_of_bathrooms, string drawing_room, string dining_room, string furnished, string kitchen, string pool, string servent_quater, string lawn, string parking, string terrace, string corner_location, string balcony, string elevator, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_real_estate_offices values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + address + "','" + area + "','" + area_unit + "','" + aggrement_type + "','" + facing + "','" + property_type + "','" + year_built + "','" + floor + "'," + no_of_bedrooms + "," + no_of_rooms + "," + no_of_bathrooms + ",'" + drawing_room + "','" + dining_room + "','" + furnished + "','" + kitchen + "','" + pool + "','" + servent_quater + "','" + lawn + "','" + parking + "','" + terrace + "','" + corner_location + "','" + balcony + "','" + elevator + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_real_estate_shops(string title, string location, string user_type, int price, string address, string area, string area_unit, string aggrement_type,  string property_type,  string images, string city, string content,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_real_estate_shops values('" + title + "','" + location + "','" + user_type + "'," + price + ",'" + address + "','" + area + "','" + area_unit + "','" + aggrement_type + "','" + property_type + "','" + images + "','" + city + "','" + content + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_real_estate_plots_lands(string title, string city, string location, string user_type, int price, string address, string area, string area_unit, string aggrement_type, string property_type, string images, string content,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_real_estate_plots_lands values('" + title + "','" + city + "','" + location + "','" + user_type + "'," + price + ",'" + address + "','" + area + "','" + area_unit + "','" + aggrement_type + "','" + property_type + "','" + images + "','" + content + "','" + datetime + "','"+userid+"',"+views+")";
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

        //......................methods for counter .....................

        public int appartments_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_real_estate_appartment";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int houses_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_real_estate_houses";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int offices_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_real_estate_offices";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int plots_land_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_real_estate_plots_lands";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int shop_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_real_estate_shops";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
    }
}