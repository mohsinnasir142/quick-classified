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
    public class ad_miscllaneous_DAO
    {
        public void insert_ad_miscellaneous_art_crafts(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_art_crafts values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_book_magazines(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_book_magazines values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_clothing(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_clothing values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_eating_outlets(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_eating_outlets values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_guns(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_guns values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_jewelery(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_jewelery values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_miscellaneous_pets(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_miscellaneous_pets values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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

        //..................methods for counter..................

        public int art_craft_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_art_crafts";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int book_magazines_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_book_magazines";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int clothing_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_clothing";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int eating_outlets_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_eating_outlets";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int guns_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_guns";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int jewelery_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_jewelery";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int pets_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_miscellaneous_pets";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }




    }
}