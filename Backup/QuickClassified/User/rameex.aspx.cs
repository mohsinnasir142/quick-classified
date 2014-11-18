using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using QuickClassified.DAO;

namespace QuickClassified.User
{
    public partial class rameex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ass_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = Connection_Manger.getConnection();
            conn.Open();
            string query = "insert into ram values('"+tb.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }
    }
}