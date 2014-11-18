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
    public class ad_home_appliances_DAO
    {
        public void insert_ad_home_appliances_air_conditioner(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_air_conditioner values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "','" + images + "'," + price + ",'" + datetime + "','" + userid + "',"+views+")";
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
        public void insert_ad_home_appliances_fridge(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_fridge values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_home_appliances_furniture(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_furniture values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_home_appliances_other_home_appliances(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_other_home_appliances values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_home_appliances_tv(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_tv values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_home_appliances_vacume_cleaner(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_vacume_cleaner values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_home_appliances_water_chiller(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_home_appliances_water_chiller values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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


        //...........methods for counter...................
        public int airconditioner_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_air_conditioner";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int fridge_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_fridge";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int furniture_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_furniture";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int other_home_appliences_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_other_home_appliances";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int tv_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_tv";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int vacume_cleaner_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_vacume_cleaner";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int water_chiller_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_home_appliances_water_chiller";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }










    }
}