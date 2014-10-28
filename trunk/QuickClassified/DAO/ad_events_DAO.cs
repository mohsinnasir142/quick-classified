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
    public class ad_events_DAO
    {
        public void insert_ad_events_announcements(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_events_announcements values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_events_auctions(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_events_auctions values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_events_losts_funds(string title, string city, string location, string content, string user_type, int price, string images, DateTime datetime, Guid userid,int views)
        {
            string query = "insert into ad_events_lots_funds values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','"+datetime+"','"+userid+"',"+views+")";
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
        public void insert_ad_events_personals(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_events_personals values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_events_special_events_occasions(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_events_special_events_occasions values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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
        public void insert_ad_events_special_tender_notice(string title, string city, string location, string content, string user_type, int price, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_events_special_tender_notice values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + images + "','" + datetime + "','"+userid+"',"+views+")";
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


        //..................methods for counter..........................

        public int event_announcement_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_announcements";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int auction_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_auctions";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int lots_fund_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_lots_funds";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int personals_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_personals";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int special_events_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_special_events_occasions";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int tender_notice_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_events_special_tender_notice";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }












    }
}