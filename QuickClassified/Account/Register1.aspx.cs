using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using QuickClassified.DAO;
using System.Windows.Forms;




namespace QuickClassified.Account
{
    public partial class Register : System.Web.UI.Page
    {
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
          
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {

            /*************************************************************************************/

             // Get the UserId of the just-added user
     MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
     Guid newUserId = (Guid)newUser.ProviderUserKey;
 
     // Insert a new record into UserProfiles
     //string connectionString = Connection_Manger.getConnection();
     //SqlConnection conn = Connection_Manger.getConnection();
          //ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
     MessageBox.Show(newUserId.ToString());
     //int a = Convert.ToInt32(newUserId.ToString());
     //string insertSql = "INSERT INTO custom_profile values('"+newUserId+"','firstname','lastname','mobile','address','city')";
            string insertSql = "INSERT INTO custom_profile(Userid, firstname,lastname,mobile,country,city,address,picture) VALUES(@UserId, @firstname,@lastname,@mobile,@country,@City,@address,@picture)";
     /*try
     {
         conn.Open();
         SqlCommand command = new SqlCommand(insertSql, conn);

         command.ExecuteNonQuery();
     }
     catch (Exception sqe)
     {

         MessageBox.Show(sqe.Message);

     }
     conn.Close();
 */
            
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


           

     /*************************************************************************************/


            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }

      

    }
}
