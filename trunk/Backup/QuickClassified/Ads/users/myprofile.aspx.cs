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
    public partial class myprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            exception_lb.Text = null;
            message_lb.Text = null;
            MembershipUser newUser = Membership.GetUser(true);
            string ali1 = newUser.UserName.ToString();
           //  MessageBox.Show(ali1);
            Guid newUserId = (Guid)newUser.ProviderUserKey;

            string firstname = User.Identity.Name.ToString();
           // MessageBox.Show(ali);
            welcome.Text = "Welcome" + "   " + firstname + " ,";
            this.address(newUserId.ToString());
            this.city_country(newUserId.ToString());
            this.mobile(newUserId.ToString());
        
        }

        public void address(string userid) {
            
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
                      
                        address_lb.Text = reader["address".ToString()].ToString();
                    }
                }
                else {
                        message_lb.Text = "some record(s) not found";
                
                
                }
            }
            catch (Exception ex) {
                exception_lb.Text = ex.Message;
            }
            
        }
        public void city_country(string userid)
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select city,country from custom_profile where userid='" + userid + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        city_country_lb.Text = reader["city".ToString()].ToString()+" ,"+reader["country".ToString()].ToString();
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

                        mobile_no.Text = reader["mobile".ToString()].ToString();
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("editprofile.aspx");
        }
    }
}