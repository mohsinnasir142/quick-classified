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
    public partial class listsajid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataPager1.Page = Page;
            this.myad();
        }
        public void myad()
        {

            SqlConnection connection = Connection_Manger.getConnection();
            string query = "select temp_title ,temp_id ,temp_city ,temp_price ,temp_datetime ,temp_category from  temp  ";
            SqlCommand command = new SqlCommand(query, connection);



            try
            {

                connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                dp.Fill(ds);

                //SqlDataReader reader = command.ExecuteReader();
                //if (reader.HasRows)
                //{

                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                   
                //}
                //else
                //{
                //    //admessage.Text = "no ad is posted by you";
                //    MessageBox.Show("no ad is posted by you");

                //}
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "show_details")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Details.aspx?id=" + id);
            }
        }
    
    
    }
}