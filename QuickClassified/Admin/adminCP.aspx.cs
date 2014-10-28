using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using QuickClassified.DAO;
using System.Windows.Forms;

namespace QuickClassified.Admin
{
    public partial class adminCP : System.Web.UI.Page
    {
        public static string userid;
        public static string useridforads;
        protected void Page_Load(object sender, EventArgs e)
        {
           //userup.Visible = false;
         
        }
        public DataTable showuser(string query)
        {


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
                SqlDataAdapter dp = new SqlDataAdapter(command);
                DataTable ds = new DataTable();
                
                dp.Fill(ds);

                return ds;
        
        }
        public void user(string query)
        {


            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
          command.ExecuteNonQuery();

        }
        protected void userimgbtn_Click(object sender, ImageClickEventArgs e)
        {
           
           userup.Visible = true;
      //     string query = "select userid as userid ,username as username from aspnet_users";
           Listmohsiin.DataSource = showuser("select userid as userid ,username as username from aspnet_users");
           Listmohsiin.DataBind();
           //SqlConnection connection = Connection_Manger.getConnection();
           //SqlCommand command = new SqlCommand(query, connection);
           //try
           //{
           //    connection.Open();
           //    SqlDataAdapter dp = new SqlDataAdapter(command);
           //    DataSet ds = new DataSet();
           //    dp.Fill(ds);
           //    Listmohsiin.DataSource = ds;
           //    Listmohsiin.DataBind();
              
               

           //    //SqlDataReader reader = command.ExecuteReader();
           //    //if (reader.HasRows)
           //    //{


           //    //}
           //    //else
           //    //{
           //    //    //admessage.Text = "no ad is posted by you";
           //    //    MessageBox.Show("no ad is posted by you");

           //    //}
           //}
           //catch (Exception ex)
           //{
               
           //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          //  this.GridView1.Columns[0].Visible = false;
        }

   

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "show_details")
            {
                string id =e.CommandArgument.ToString();
                MessageBox.Show(id);
                //Response.Redirect("Details.aspx?id=" + id + "&tablename=" + tablename);
            }
            else if (e.CommandName == "delete") {

                MessageBox.Show(e.CommandArgument.ToString() + "  is deleted");
                this.user("delete from aspnet_Membership where UserId= '" + e.CommandArgument.ToString() + "'  ");
                this.user("delete from aspnet_users where UserId= '" + e.CommandArgument.ToString() + "'  ");


            }
            else if (e.CommandName == "profile")
            {
                
               // MessageBox.Show(e.CommandArgument.ToString() );
              profilelistview.DataSource=this.showuser("select firstname,lastname,mobile,city,address,country from custom_profile where userid='" + e.CommandArgument.ToString() + "' ");
              profilelistview.DataBind();
             // adsup.Visible = false;
              assignroleup.Visible = false;
                profileup.Visible = true;
            }
               
            else if (e.CommandName == "role")
            {
               // adsup.Visible = false;
                profileup.Visible = false;
                assignroleup.Visible = true;
                userid = e.CommandArgument.ToString()+"is added";
  
            }
            else if (e.CommandName == "ads")
            {
                Response.Redirect("myads.aspx?userid=" + e.CommandArgument.ToString() + "");
                //profileup.Visible = false;
                //assignroleup.Visible = false;
                //adsup.Visible = true;
                //MessageBox.Show(e.CommandArgument.ToString() );
                //adslistview.DataSource = this.showuser("select autos_boats_ships_title as title ,autos_auto_parts_title as title from ad_autos_auto_parts ,ad_autos_boats_ships where ad_autos_auto_parts.autos_auto_parts_userid='" + e.CommandArgument.ToString() + "' or  ad_autos_boats_ships.autos_boats_ships_userid='" + e.CommandArgument.ToString() + "'");
                //adslistview.DataBind();
                //useridforads = e.CommandArgument.ToString();
             

            }
            else if (e.CommandName == "logindetail")
            {

                MessageBox.Show(e.CommandArgument.ToString());
            }
        }
        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            Listmohsiin.DataSource = showuser("select userid as userid ,username as username from aspnet_users");
            Listmohsiin.DataBind();
        }

        //protected void adlistview_PreRender(object sender, EventArgs e)
        //{
        //    adslistview.DataSource = showuser("select autos_boats_ships_title as title ,autos_auto_parts_title as title from ad_autos_auto_parts ,ad_autos_boats_ships where ad_autos_auto_parts.autos_auto_parts_userid='" + useridforads + "' or  ad_autos_boats_ships.autos_boats_ships_userid='" + useridforads+ "' ");
        //    adslistview.DataBind();
        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (assignrolerb.SelectedValue.ToString().Equals("admin"))
            {
                
                MessageBox.Show("admin selected"+userid);
                this.user("insert into aspnet_UsersInRoles values('" + userid + "','faca0db2-83c7-4010-8c3c-aa4f767227f7')   ;");


            }
            else if (assignrolerb.SelectedValue.ToString().Equals("feature"))
            {

                MessageBox.Show("feature selected"+userid);
                this.user("delete from aspnet_UsersInRoles where userid='"+userid+"'   ;");
            }
        }

        //protected void ad_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "adscommandtitle")
        //    {
        //       // string id = e.CommandArgument.ToString();
        //        MessageBox.Show("this is adscommandtitle command");
        //        //Response.Redirect("Details.aspx?id=" + id + "&tablename=" + tablename);
        //    }
        //    else if (e.CommandName == "adscommanddelete")
        //    {

        //        MessageBox.Show("delete command is selected");
        //       // this.user("delete from aspnet_Membership where UserId= '" + e.CommandArgument.ToString() + "'  ");
        //        //this.user("delete from aspnet_users where UserId= '" + e.CommandArgument.ToString() + "'  ");


        //    }
        //    else if (e.CommandName == "adscommandedit")
        //    {

        //         MessageBox.Show("edit command is selected" );
        //        //profilelistview.DataSource = this.showuser("select firstname,lastname,mobile,city,address,country from custom_profile where userid='" + e.CommandArgument.ToString() + "' ");
        //        //profilelistview.DataBind();
        //        //assignroleup.Visible = false;
        //        //profileup.Visible = true;
        //    }

        //    else if (e.CommandName == "adscommandview")
        //    {

        //       // profileup.Visible = false;
        //        //assignroleup.Visible = true;
        //        //userid = e.CommandArgument.ToString() + "is added";
        //        MessageBox.Show("view command is selected");
        //    }
        //}

        
        
    }
}