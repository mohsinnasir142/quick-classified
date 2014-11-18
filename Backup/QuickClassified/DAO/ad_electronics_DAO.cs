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
    public class ad_electronics_DAO
    {

        public void insert_ad_electronics_computer_accessories(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_elecronics_computer_accessories values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_computer(string title, string city, string location, string content, string user_type, int price,string brand,string model, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_computer values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'"+brand+"','"+model+"','" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_laptops(string title, string city, string location, string content, string user_type, int price, string brand, string model, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_laptops values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + brand + "','" + model + "','" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_mobile(string title, string city, string location, string content, string user_type, int price, string brand, string model, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_mobile values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + brand + "','" + model + "','" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_mobile_accessories(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_mobile_accessories values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_other_electronics(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_other_electronics values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
              //  MessageBox.Show(ex.Message);
            }


        }
        public void insert_ad_electronics_software(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_electronics_software values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }


        }

        //......................methods for counter ....................

        public int computer_accessories_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_elecronics_computer_accessories";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int computer_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_computer";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int labtop_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_laptops";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int mobile_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_mobile";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int mobile_accessories_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_mobile_accessories";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int other_electronics_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_other_electronics";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int software_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_electronics_software";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }



    }
}