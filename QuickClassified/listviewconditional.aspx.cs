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

namespace QuickClassified
{
    public partial class listviewconditional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.myad();
        }
        public void myad()
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select temp_title as Title,temp_id as Id,temp_city as City,temp_price as Price,temp_datetime as Date,temp_category as Category from  temp  ";
            SqlCommand command = new SqlCommand(query, connection);

           
            
            try
            {
                
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {

                    ListView1.DataSource = reader;
                    ListView1.DataBind();
                }
                else
                {
                    //admessage.Text = "no ad is posted by you";
                    MessageBox.Show("no ad is posted by you");

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    
    
    
    }

}