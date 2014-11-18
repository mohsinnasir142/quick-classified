using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;


namespace QuickClassified.Ads
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            searchlabel.Visible = false;

            string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand sqlCommand;
            SqlConnection sqlConnection = new SqlConnection(connection);
            sqlCommand = new SqlCommand("select title,author_name,price,description ,date , city from adbook", sqlConnection);
            sqlConnection.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();
            GridView4.DataSource = reader;
            GridView4.DataBind();

            string connection1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand sqlCommand1;
            SqlConnection sqlConnection1 = new SqlConnection(connection1);
            sqlCommand1 = new SqlCommand("select title,description , price ,date ,city from admobile", sqlConnection1);
            sqlConnection1.Open();
            SqlDataReader reader1 = sqlCommand1.ExecuteReader();
            GridView5.DataSource = reader1;
            GridView5.DataBind();

            string connection2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlconnection2 = new SqlConnection(connection);
            SqlCommand sqlcommand2 = new SqlCommand("Select title , description , date , city from adjob", sqlconnection2);
            sqlconnection2.Open();
            SqlDataReader reader2 = sqlcommand2.ExecuteReader();
            GridView6.DataSource = reader2;
            GridView6.DataBind();

            sqlConnection.Close();
            sqlConnection1.Close();
            sqlconnection2.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
            booklabel.Visible = false;
            mobilelabel.Visible = false;
            Featureadslabel.Visible = false;
            joblabel.Visible = false;
            searchlabel.Visible = true;

            //         string strSQLconnection = "Data Source=(local);Initial Catalog=Northwind;Integrated Security=True";
            //string strSQLconnection = "Data Source=F:\QuickClassified\QuickClassified\App_Data\ASPNETDB.MDF";
            if (DropDownList2.SelectedValue.Equals("Books"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand sqlCommand;
                

                SqlConnection sqlConnection = new SqlConnection(connection);
               

                if (TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text != null && DropDownList1.SelectedValue != null)
                {
                    sqlCommand = new SqlCommand("select * from adbook WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                    sqlConnection.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                else if (TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text != null) 
                {
                    sqlCommand = new SqlCommand("select * from adbook WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "'", sqlConnection);
                    sqlConnection.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                else if (TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text == null)
                {
                    sqlCommand = new SqlCommand("select * from adbook WHERE title ='" + TextBox1.Text + "' and price ='" + TextBox2.Text + "'", sqlConnection);
                    sqlConnection.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                else if (TextBox1.Text != null && TextBox2.Text == null && TextBox3.Text == null)
                {
                    sqlCommand = new SqlCommand("select * from adbook WHERE title ='" + TextBox1.Text + "'", sqlConnection);
                    sqlConnection.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    
                }
                else 
                {
                    MessageBox.Show("Please Enter Appropriate text  !!");
                }
                sqlConnection.Close();

            }

            else if (DropDownList2.SelectedValue.Equals("Cameras"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlConnection sqlConnection = new SqlConnection(connection);

                SqlCommand sqlCommand = new SqlCommand("select * from adcamera WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);

                sqlConnection.Open();



                SqlDataReader reader = sqlCommand.ExecuteReader();



                GridView1.DataSource = reader;

                GridView1.DataBind();

            }

            else if (DropDownList2.SelectedValue.Equals("Eating Outlets"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlConnection sqlConnection = new SqlConnection(connection);

                SqlCommand sqlCommand = new SqlCommand("select * from adEatingOutlet WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);

                sqlConnection.Open();



                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;

                GridView1.DataBind();

            }
            else if (DropDownList2.SelectedValue.Equals("Events"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlConnection sqlConnection = new SqlConnection(connection);

                SqlCommand sqlCommand = new SqlCommand("select * from adevent WHERE title ='" + TextBox1.Text + "'  and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);

                sqlConnection.Open();



                SqlDataReader reader = sqlCommand.ExecuteReader();



                GridView1.DataSource = reader;

                GridView1.DataBind();

            }
            else if (DropDownList2.SelectedValue.Equals("Home Appliances"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlConnection sqlConnection = new SqlConnection(connection);

                SqlCommand sqlCommand = new SqlCommand("select * from adhomeappliences WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);

                sqlConnection.Open();



                SqlDataReader reader = sqlCommand.ExecuteReader();



                GridView1.DataSource = reader;

                GridView1.DataBind();

            }
            else if (DropDownList2.SelectedValue.Equals("Jobs"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlConnection sqlConnection = new SqlConnection(connection);

                SqlCommand sqlCommand = new SqlCommand("select * from adjob WHERE title ='" + TextBox1.Text + "'  and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);

                sqlConnection.Open();



                SqlDataReader reader = sqlCommand.ExecuteReader();



                GridView1.DataSource = reader;

                GridView1.DataBind();

            }

            else if (DropDownList2.SelectedValue.Equals("LapTops"))

            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from adlaptop WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            else if (DropDownList2.SelectedValue.Equals("Mobiles"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from admobile WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            else if (DropDownList2.SelectedValue.Equals("News"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from adnews WHERE title ='" + TextBox1.Text + "'", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            else if (DropDownList2.SelectedValue.Equals("Pcs"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from adpc WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            else if (DropDownList2.SelectedValue.Equals("Real Estates"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from adRealEastate WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            else if (DropDownList2.SelectedValue.Equals("Services"))
            {
                string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                SqlCommand sqlCommand = new SqlCommand("select * from adService WHERE type ='" + TextBox1.Text + "'  and city='" + DropDownList1.SelectedValue + "' ", sqlConnection);
                sqlConnection.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
            else {
                MessageBox.Show("Please Choose the item From Dropdown List .. !!");
            
            }
        
        }

    }
}