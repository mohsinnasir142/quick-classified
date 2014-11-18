using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using QuickClassified.DAO;
using System.Windows.Forms;




namespace QuickClassified.Ads.users
{
    public partial class editprofile : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {
            exception_lb.Text = null;
            message_lb.Text = null;
            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
           

           // string name = User.Identity.Name.ToString();
            this.updateaddress(newUserId);
            this.update_city(newUserId);
            this.update_country(newUserId);
            this.updatemobile(newUserId);
            this.updatefname(newUserId);
            this.updatelname(newUserId);
     
           

        }
        public void updateaddress(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select address from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        address_tb.Text = reader["address".ToString()].ToString();
                    }
                }
                else
                {
                    message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                 exception_lb.Text = ex.Message;
            }

        }
        public void update_city(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select city from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        city_tb.Text = reader["city".ToString()].ToString();
                    }
                }
                else
                {
                     message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                exception_lb.Text = ex.Message;
                
            }

        }
        public void update_country(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select country from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        country_tb.Text = reader["country".ToString()].ToString();
                    }
                }
                else
                {
                     message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                 exception_lb.Text = ex.Message;
            }

        }
        public void updatemobile(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select mobile from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        mobile_tb.Text = reader["mobile".ToString()].ToString();
                    }
                }
                else
                {
                     message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                 exception_lb.Text = ex.Message;
            }

        }
        public void updatefname(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select firstname from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        first_name_tb.Text = reader["firstname".ToString()].ToString();
                    }
                }
                else
                {
                     message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                 exception_lb.Text = ex.Message;
            }

        }
        public void updatelname(Guid userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select lastname from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        last_name_tb.Text = reader["lastname".ToString()].ToString();
                    }
                }
                else
                {
                     message_lb.Text="some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                 exception_lb.Text = ex.Message;
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;   
           this.updateprofile(first_name_tb.Text, last_name_tb.Text, mobile_tb.Text, country_tb.Text, city_tb.Text, address_tb.Text, newUserId);
            Response.Redirect("myprofile.aspx");
        }

        public void updateprofile(string firstname, string lastname, string mobile, string country, string city, string address, Guid userid)
        {


            SqlConnection connection = Connection_Manger.getConnection();
            string query = "update custom_profile set firstname='" + firstname + "',lastname='" + lastname + "',mobile='" + mobile + "',country='" + country + "',city='" + city + "',address='" + address + "' where userid='" + userid + "'";

            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
                update_lb.Text = "profile updated";

            }
            catch (Exception ex)
            {

                 exception_lb.Text = ex.Message;

            }
            connection.Close();

        }
     
    }
}