using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using QuickClassified.DAO;
using System.Windows.Forms;

namespace QuickClassified
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = Connection_Manger.getConnection();
            MessageBox.Show(Request.QueryString["id"]);
            MessageBox.Show(Request.QueryString["tablename"]);
            if(Request.QueryString["id"]!=null && Request.QueryString["tablename"]!=null){
           
            connection.Open();
            string viewquery = "update  ad_" + Request.QueryString["tablename"] + " set  " + Request.QueryString["tablename"] + "_views=" + Request.QueryString["tablename"] + "_views+1  where " + Request.QueryString["tablename"] + "_id =  " + Request.QueryString["id"];
            string query = "select custom.firstname as firstname,custom.lastname as lastname,custom.mobile as mobile ,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_title as title,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_content as content,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_id as id,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_price as price,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_city as city,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_datetime as datetime,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_views as views,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_image as image from  ad_" + Request.QueryString["tablename"] + " ad_" + Request.QueryString["tablename"] + "    left join custom_profile custom on ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_userid =custom.userid where ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_id = " + Request.QueryString["id"] + "";

            //string query = "select " + Request.QueryString["tablename"] + "_title as title," + Request.QueryString["tablename"] + "_content as content," + Request.QueryString["tablename"] + "_price as price," + Request.QueryString["tablename"] + "_city as city," + Request.QueryString["tablename"] + "_datetime as datetime," + Request.QueryString["tablename"] + "_views as views," + Request.QueryString["tablename"] + "_image as image  from  ad_" + Request.QueryString["tablename"] + " where " + Request.QueryString["tablename"] + "_id =  " + Request.QueryString["id"];
            SqlCommand command = new SqlCommand(query, connection);
            SqlCommand viewcommand = new SqlCommand(viewquery, connection);
            
            viewcommand.ExecuteNonQuery();
            
                SqlDataAdapter dp = new SqlDataAdapter(command);
            
                DataSet ds = new DataSet();
            dp.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
            connection.Close();
          
            }

            //string userinfoquery = "select firstname as firstname ,lastname as lastname,mobile as mobile from custom_profile where userid=(select " + Request.QueryString["tablename"] + "_userid from ad_" + Request.QueryString["tablename"] + " where " + Request.QueryString["tablename"] + "_id =  " + Request.QueryString["id"] + " )";
            //SqlCommand userinfocommand = new SqlCommand(userinfoquery, connection);
            //SqlDataAdapter userdp = new SqlDataAdapter(userinfocommand);
            //DataSet userds = new DataSet();
            //userdp.Fill(userds);
            //ListView1.DataSource = userds;
            //ListView1.DataBind();
            //connection.Close();

            //string abc = "select custom.firstname as firstname,custom.lastname as lastname,custom.mobile as mobile ,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_title,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_content as content,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_price as price,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_city as city,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_datetime as datetime,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_views as views,ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_image as image from table ad_" + Request.QueryString["tablename"] + "   left join table custom on ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_userid =custom.userid where ad_" + Request.QueryString["tablename"] + "." + Request.QueryString["tablename"] + "_id = " + Request.QueryString["id"]+"";

        }
    }
}