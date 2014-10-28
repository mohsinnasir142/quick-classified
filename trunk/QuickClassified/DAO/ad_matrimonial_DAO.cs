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
    public class ad_matrimonial_DAO
    {
        public void insert_ad_matrimonial_brides(string title, string city, string location, string content, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_Matrimonial_brides values('" + title + "','" + city + "','" + location + "','" + content + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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

        public void insert_ad_matrimonial_grooms(string title, string city, string location, string content, string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_Matrimonial_grooms values('" + title + "','" + city + "','" + location + "','" + content + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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

        //........................methods for counter ........................

        public int brides_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_Matrimonial_brides";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }
        public int groom_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_Matrimonial_grooms";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }





    }
}