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
    public class ad_education_DAO
    {
        public void insert_ad_education_computer_institutes(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_computer_institutes values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_cooking_classes(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_cooking_classes values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_home_tution(string title, string city, string location, string content, string user_type, int price, string images, DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_home_tution values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_launage_academies(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_launage_academies values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_montessori(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_montessori values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_private_tutors(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_private_tutors values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_education_schools(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_schools values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_short_courses(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_short_courses values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_technical_institutes(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_education_technical_institute values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        //....................methods for counter .................................
        public int computer_institute_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_computer_institutes";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int cooking_classses_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_cooking_classes";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int home_tuction_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_home_tution";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int languages_academies_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_launage_academies";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int montessori_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_montessori";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int private_tutors_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_private_tutors";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int schools_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_schools";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int short_courses_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_short_courses";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int technical_institutes_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_education_technical_institute";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
    
    
    
    
    }
}