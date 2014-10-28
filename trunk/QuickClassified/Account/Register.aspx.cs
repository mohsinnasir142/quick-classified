using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using QuickClassified.DAO;



namespace QuickClassified.Account
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void NewUserWizard_CreatedUser(object sender, EventArgs e)
        {
            // Get the UserId of the just-added user
            MembershipUser newUser = Membership.GetUser(NewUserWizard.UserName);
            Guid newUserId = (Guid)newUser.ProviderUserKey;

            Console.WriteLine(newUserId);

            // Insert a new record into UserProfiles
            //string connectionString = ConfigurationManager.ConnectionStrings["SecurityTutorialsConnectionString"].ConnectionString;
            string insertSql = "INSERT INTO custom_profile(Userid, firstname,lastname,mobile,country,city,address,picture) VALUES(@UserId, @firstname,@lastname,@mobile,@country,@City,@address,@picture)";

            using (SqlConnection conn = Connection_Manger.getConnection())
            {
                conn.Open();
                SqlCommand myCommand = new SqlCommand(insertSql, conn);
                myCommand.Parameters.AddWithValue("@UserId", newUserId);
                myCommand.Parameters.AddWithValue("@firstname", DBNull.Value);
                myCommand.Parameters.AddWithValue("@lastname", DBNull.Value);
                myCommand.Parameters.AddWithValue("@mobile", DBNull.Value);
                myCommand.Parameters.AddWithValue("@country", DBNull.Value);
                myCommand.Parameters.AddWithValue("@city", DBNull.Value);
                myCommand.Parameters.AddWithValue("@address", DBNull.Value);
                myCommand.Parameters.AddWithValue("@picture", DBNull.Value);
                myCommand.ExecuteNonQuery();
                conn.Close();
            }
        }


        protected void NewUserWizard_ActiveStepChanged(object sender, EventArgs e)
        {
            // Have we JUST reached the Complete step?
            if (NewUserWizard.ActiveStep.Title == "Complete")
            {
                WizardStep UserSettings = NewUserWizard.FindControl("UserSettings") as WizardStep;

                // Programmatically reference the TextBox controls
                //TextBox HomeTown = UserSettings.FindControl("HomeTown") as TextBox;
                //TextBox HomepageUrl = UserSettings.FindControl("HomepageUrl") as TextBox;
                //TextBox Signature = UserSettings.FindControl("Signature") as TextBox;

                ///////////////////////////////////////////////////////////////////////////////
                TextBox FirstName = UserSettings.FindControl("FirstName") as TextBox;
                TextBox LastName = UserSettings.FindControl("LastName") as TextBox;
                TextBox Mobile = UserSettings.FindControl("Mobile") as TextBox;
                TextBox Country = UserSettings.FindControl("Country") as TextBox;
                TextBox City = UserSettings.FindControl("City") as TextBox;
                TextBox Address = UserSettings.FindControl("Address") as TextBox;
                //TextBox picture = UserSettings.FindControl("picture") as TextBox;

                

                ///////////////////////////////////////////////////////////////////////////////


                // Update the UserProfiles record for this user
                // Get the UserId of the just-added user
                MembershipUser newUser = Membership.GetUser(NewUserWizard.UserName);
                Guid newUserId = (Guid)newUser.ProviderUserKey;

                // Insert a new record into UserProfiles
//                string connectionString = ConfigurationManager.ConnectionStrings["SecurityTutorialsConnectionString"].ConnectionString;
                string updateSql = "UPDATE custom_profile SET firstname=@firstname,lastname=@lastname,mobile=@mobile,country=@country,city=@city,address=@address,picture=@picture where userid='"+newUserId+"'";

                using (SqlConnection conn = Connection_Manger.getConnection())
                {
                    conn.Open();
                    SqlCommand myCommand = new SqlCommand(updateSql, conn);
                    myCommand.Parameters.AddWithValue("@firstname", FirstName.Text.Trim());
                    myCommand.Parameters.AddWithValue("@lastname", LastName.Text.Trim());
                    myCommand.Parameters.AddWithValue("@mobile", Mobile.Text.Trim());
                    myCommand.Parameters.AddWithValue("@country", Country.Text.Trim());
                    myCommand.Parameters.AddWithValue("@city", City.Text.Trim());
                    myCommand.Parameters.AddWithValue("@address", Address.Text.Trim());
                    myCommand.Parameters.AddWithValue("@picture", DBNull.Value);
                    myCommand.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        
    }
}