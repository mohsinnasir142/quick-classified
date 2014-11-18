using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using QuickClassified.DAO;
using System.Windows.Forms;



namespace QuickClassified.Ads.users
{
    public partial class myads : System.Web.UI.Page
    {
        
        myprofile profile = new myprofile();
        protected void Page_Load(object sender, EventArgs e)
        {
            message_lb.Text = null;
            exception_lb.Text = null;
            adexception.Text = null;
            admessage.Text = null;
              MembershipUser newUser = Membership.GetUser(true);
            Guid newUserId = (Guid)newUser.ProviderUserKey;          
            this.address(newUserId.ToString());
            this.fname(newUserId.ToString());
            this.mobile(newUserId.ToString());
            this.email(newUserId.ToString());
            this.myad(newUserId.ToString());



            
        }
        public void address(string userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select address from custom_profile where userid='"+ userid +"'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        address_lb.Text = reader["address".ToString()].ToString();
                    }
                }
                else
                {
                    message_lb.Text = "some record(s) not found";
                    

                }
            }
            catch (Exception ex)
            {
                
                exception_lb.Text = ex.Message;
            }

        }
        public void fname(string userid)
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

                       welcome_lb.Text = reader["firstname".ToString()].ToString();
                    }
                }
                else
                {
                    message_lb.Text = "some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                exception_lb.Text = ex.Message;
            }

        }
        public void mobile(string userid)
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

                        mobile_lb.Text = reader["mobile".ToString()].ToString();
                    }
                }
                else
                {
                    message_lb.Text = "some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                exception_lb.Text = ex.Message;
            }

        }
        public void email(string userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select Email from aspnet_Membership where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        email_lb.Text = reader["Email".ToString()].ToString();
                    }
                }
                else
                {
                    message_lb.Text = "some record(s) not found";

                }
            }
            catch (Exception ex)
            {
                exception_lb.Text = ex.Message;
            }

        }
        public void myad(string userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select temp_title as Title,temp_id as Id,temp_city as City,temp_price as Price,temp_datetime as Date,temp_category as Category from  temp  where temp_userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
               
                    myads_gv.DataSource = reader;
                    myads_gv.DataBind();
                }
                else
                {
                    admessage.Text = "no ad is posted by you";

                }
            }
            catch (Exception ex)
            {
                adexception.Text = ex.Message;
            }

        }

        
    }
}