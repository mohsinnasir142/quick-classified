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
    public class ad_services_DAO
    {

        public void insert_ad_services(string title, string city, string location, string content, string user_type, int price, string services_type,string images,DateTime datetime,Guid userid,int views)
        {
            string query = "insert into ad_services values('" + title + "','" + city + "','" + location + "','" + content + "','" + user_type + "'," + price + ",'" + services_type + "','" + images + "','" + datetime + "','"+userid+"',"+views+")";
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

        //.....................methods for couner .....................

        public int services_counter()
        {

            SqlConnection conn = Connection_Manger.getConnection();
            string query = "select count(*) from ad_services";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return count;
        }

    }
}