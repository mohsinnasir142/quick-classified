using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data;
using System.Web.UI.HtmlControls;
using QuickClassified.DAO;
namespace QuickClassified.Ads
{
    public partial class div_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            result_message.Visible = true;
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "";
            if (DropDownList2.SelectedValue.Equals("Books")) {
            query = "select title ,description,city ,date ,province,price from adbook WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }
            else if (DropDownList2.SelectedValue.Equals("Cameras")) {
                query = "select title ,description,city ,date ,province,price from adcamera WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";           
           }
            else if (DropDownList2.SelectedValue.Equals("Home Appliances")) {
                query = "select title ,description,city ,date ,province,price from adhomeappliences WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }
            else if (DropDownList2.SelectedValue.Equals("LapTops")) {
                query = "select title ,description,city ,date ,province,price from adlaptop WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }
            else if (DropDownList2.SelectedValue.Equals("Mobiles")) {
                query = "select title ,description,city ,date ,province,price from admobile WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }
            else if (DropDownList2.SelectedValue.Equals("Pcs")) {
                query = "select title ,description,city ,date ,province,price from adpc WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }
            else if (DropDownList2.SelectedValue.Equals("Real Estates")) {
                query = "select title ,description,city ,date ,province,price from adRealEastate WHERE title ='" + TextBox1.Text + "' and price between '" + TextBox2.Text + "' and '" + TextBox3.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
            }

                SqlConnection connection = Connection_Manger.getConnection();
                SqlCommand cmd = new SqlCommand(query, connection);



                try
                {
                    //to call a SP from SqlCommand use this
                    //cmd.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    int i = 0;
                    //we'll check if there is any data in reader? if so then proceed otherwise terminate
                    //and inform user

                    if (reader.HasRows)
                    {
                        result_message.Text = "Search Results";
                        //looping through the fetched result set 
                        while (reader.Read())
                        {

                            //for each record/touple/row we'll call a procedure
                            //that will load data dynamically into the Div Controls....
                            this.divz(reader["title"].ToString(), reader["price"].ToString(), reader["description"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                        }
                    }

                    else
                    {
                        result_message.Text = "No Record Found";
                    }

                }

                catch (Exception ex)
                {
                    result_message.Text = "Can not open connection !" + ex.Message;

                }


             if (DropDownList2.SelectedValue.Equals("Eating Outlets"))
            {
                query = "select title ,description,city ,date ,province,user_name from adEatingOutlet WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ";
               



                SqlConnection conn = Connection_Manger.getConnection();
                SqlCommand command = new SqlCommand(query, connection);



                try
                {
                    //to call a SP from SqlCommand use this
                    //cmd.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    int i = 0;
                    //we'll check if there is any data in reader? if so then proceed otherwise terminate
                    //and inform user

                    if (reader.HasRows)
                    {
                        result_message.Text = "Search Results";
                        //looping through the fetched result set 
                        while (reader.Read())
                        {

                            //for each record/touple/row we'll call a procedure
                            //that will load data dynamically into the Div Controls....
                            this.divz(reader["title"].ToString(), reader["user_name"].ToString(), reader["description"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                        }
                    }

                    else
                    {
                        result_message.Text = "No Record Found";
                    }

                }

                catch (Exception ex)
                {
                    result_message.Text = "Can not open connection !" + ex.Message;

                }
            }


             if (DropDownList2.SelectedValue.Equals("Eating Outlets"))
             {
                 query = "select title ,description,city ,date ,province,user_name from adEatingOutlet WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ";




                 SqlConnection conn = Connection_Manger.getConnection();
                 SqlCommand command = new SqlCommand(query, connection);



                 try
                 {
                     //to call a SP from SqlCommand use this
                     //cmd.CommandType = CommandType.StoredProcedure;
                     connection.Open();
                     SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                     int i = 0;
                     //we'll check if there is any data in reader? if so then proceed otherwise terminate
                     //and inform user

                     if (reader.HasRows)
                     {
                         result_message.Text = "Search Results";
                         //looping through the fetched result set 
                         while (reader.Read())
                         {

                             //for each record/touple/row we'll call a procedure
                             //that will load data dynamically into the Div Controls....
                             this.divz(reader["title"].ToString(), reader["user_name"].ToString(), reader["description"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                         }
                     }

                     else
                     {
                         result_message.Text = "No Record Found";
                     }

                 }

                 catch (Exception ex)
                 {
                     result_message.Text = "Can not open connection !" + ex.Message;

                 }
             }
            
            
             else  if (DropDownList2.SelectedValue.Equals("Events"))
             {
                 query = "select title ,location,city ,date ,province,event_datetime from adevent WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ";




                 SqlConnection conn = Connection_Manger.getConnection();
                 SqlCommand command = new SqlCommand(query, connection);



                 try
                 {
                     //to call a SP from SqlCommand use this
                     //cmd.CommandType = CommandType.StoredProcedure;
                     connection.Open();
                     SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                     int i = 0;
                     //we'll check if there is any data in reader? if so then proceed otherwise terminate
                     //and inform user

                     if (reader.HasRows)
                     {
                         result_message.Text = "Search Results";
                         //looping through the fetched result set 
                         while (reader.Read())
                         {

                             //for each record/touple/row we'll call a procedure
                             //that will load data dynamically into the Div Controls....
                             this.divz(reader["title"].ToString(), reader["location"].ToString(), reader["event_datetime"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                         }
                     }

                     else
                     {
                         result_message.Text = "No Record Found";
                     }

                 }

                 catch (Exception ex)
                 {
                     result_message.Text = "Can not open connection !" + ex.Message;

                 }
             }



             else if (DropDownList2.SelectedValue.Equals("Jobs"))
             {
                 query = "select title ,description,city ,date ,province,company_id from adjob WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ";




                 SqlConnection conn = Connection_Manger.getConnection();
                 SqlCommand command = new SqlCommand(query, connection);



                 try
                 {
                     //to call a SP from SqlCommand use this
                     //cmd.CommandType = CommandType.StoredProcedure;
                     connection.Open();
                     SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                     int i = 0;
                     //we'll check if there is any data in reader? if so then proceed otherwise terminate
                     //and inform user

                     if (reader.HasRows)
                     {
                         result_message.Text = "Search Results";
                         //looping through the fetched result set 
                         while (reader.Read())
                         {

                             //for each record/touple/row we'll call a procedure
                             //that will load data dynamically into the Div Controls....
                             this.divz(reader["title"].ToString(), reader["company_id"].ToString(), reader["description"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                         }
                     }

                     else
                     {
                         result_message.Text = "No Record Found";
                     }

                 }

                 catch (Exception ex)
                 {
                     result_message.Text = "Can not open connection !" + ex.Message;

                 }
             }
             else if (DropDownList2.SelectedValue.Equals("Services"))
             {
                 query = "select type ,description,city ,date ,province from adService WHERE title ='" + TextBox1.Text + "' and city='" + DropDownList1.SelectedValue + "' ";




                 SqlConnection conn = Connection_Manger.getConnection();
                 SqlCommand command = new SqlCommand(query, connection);



                 try
                 {
                     //to call a SP from SqlCommand use this
                     //cmd.CommandType = CommandType.StoredProcedure;
                     connection.Open();
                     SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                     int i = 0;
                     //we'll check if there is any data in reader? if so then proceed otherwise terminate
                     //and inform user

                     if (reader.HasRows)
                     {
                         result_message.Text = "Search Results";
                         //looping through the fetched result set 
                         while (reader.Read())
                         {

                             //for each record/touple/row we'll call a procedure
                             //that will load data dynamically into the Div Controls....
                             this.divz(reader["type"].ToString(), "", reader["description"].ToString(), reader["date"].ToString(), reader["city"].ToString(), reader["province"].ToString(), i++);
                         }
                     }

                     else
                     {
                         result_message.Text = "No Record Found";
                     }

                 }

                 catch (Exception ex)
                 {
                     result_message.Text = "Can not open connection !" + ex.Message;

                 }
             }
        }

        private void divz(string title, string price, string description, string city, string date,string province, int i)
        {
            // brake in div
            plcDiv.Controls.Add(new LiteralControl("</br>"));
            //div created
            HtmlGenericControl dynDiv = new HtmlGenericControl("DIV");
            dynDiv.ID = i.ToString();

            dynDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            dynDiv.Style.Add(HtmlTextWriterStyle.Height, "80px");
            dynDiv.Style.Add(HtmlTextWriterStyle.Width, "775px");
            // dynDiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            //    dynDiv.InnerHtml = "Label of a product will b there" + i.ToString();

            // dynDiv.Style.Add(HtmlTextWriterStyle.Position, "absolute");
            dynDiv.Style.Add(HtmlTextWriterStyle.Left, "200px");

            // this.Controls.Add(dynDiv);
            plcDiv.Controls.Add(dynDiv);
            //for braek in div
            // plcDiv.Controls.Add(new LiteralControl("</br>"));
            //Panel1.Controls.Add(new LiteralControl(“<table><tr>”));

            HtmlGenericControl innerdiv = new HtmlGenericControl("DIV");

            //inner div

            innerdiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            // innerdiv.Attributes.Add("Style","float:LeftRightAlignment");
            innerdiv.Attributes["style"] = "float:Left;";
            innerdiv.Style.Add(HtmlTextWriterStyle.Height, "70px");

            innerdiv.Style.Add(HtmlTextWriterStyle.Width, "50px");

            innerdiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            innerdiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            innerdiv.InnerHtml = province;


            // dynDiv.Style.Add(HtmlTextWriterStyle.Position, "absolute");
            innerdiv.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(innerdiv);
            // for header div
            HtmlGenericControl header = new HtmlGenericControl("DIV");


            header.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            header.Style.Add(HtmlTextWriterStyle.Height, "20px");
            header.Style.Add(HtmlTextWriterStyle.Width, "500px");
            //header.Attributes.Add("Style", "float:LeftRightAlignment");
            header.Attributes["style"] = "float:left;";
            // header.Style.Add(HtmlTextWriterStyle.PaddingTop, "7px");
            // header.Style.Add(HtmlTextWriterStyle.PaddingLeft, "100px");
            header.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            header.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            header.InnerHtml = title;


            //  header.Style.Add(HtmlTextWriterStyle.Position, "absolute");
            header.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(header);





            //for detail div
            HtmlGenericControl detaildiv = new HtmlGenericControl("DIV");


            detaildiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            detaildiv.Style.Add(HtmlTextWriterStyle.Height, "45px");
            detaildiv.Style.Add(HtmlTextWriterStyle.Width, "500px");
            //detaildiv.Attributes.Add("Style", "float:LeftRightAlignment");
            detaildiv.Attributes["style"] = "float:left;";
            // detaildiv.Style.Add(HtmlTextWriterStyle.PaddingTop, "7px");
            // detaildiv.Style.Add(HtmlTextWriterStyle.PaddingLeft, "100px");
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            detaildiv.InnerHtml = description;


            //  detaildiv.Style.Add(HtmlTextWriterStyle.Position, "absolute");
            detaildiv.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(detaildiv);


            /*            FOR CITY DIV      */

            HtmlGenericControl citydiv = new HtmlGenericControl("DIV");
            //float:right;background-color:green;height:20px;width:200px;margin-top:-20px;margin-right:5px;left:100px;

            citydiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            citydiv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            citydiv.Style.Add(HtmlTextWriterStyle.Width, "200px");
            // citydiv.Attributes.Add("Style", "float:LeftRightAlignment");
            citydiv.Attributes["style"] = "float:right;";
            // citydiv.Style.Add(HtmlTextWriterStyle.PaddingTop, "7px");
            //  citydiv.Style.Add(HtmlTextWriterStyle.PaddingLeft, "10px");
            citydiv.Style.Add(HtmlTextWriterStyle.MarginTop, "-20px");
            citydiv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            citydiv.InnerHtml = city;


            //  citydiv.Style.Add(HtmlTextWriterStyle.Position, "relative");
            citydiv.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(citydiv);

            /*            FOR DATE TIME DIV      */

            HtmlGenericControl datediv = new HtmlGenericControl("DIV");

            //float:right;background-color:green;height:20px;width:200px;margin-top:-20px;margin-right:5px;left:100px;
            datediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            datediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            datediv.Style.Add(HtmlTextWriterStyle.Width, "200px");
            // datediv.Attributes.Add("Style", "float:LeftRightAlignment");
            datediv.Attributes["style"] = "float:right;";
            // datediv.Style.Add(HtmlTextWriterStyle.PaddingTop, "7px");
            //  datediv.Style.Add(HtmlTextWriterStyle.PaddingLeft, "10px");
            datediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            datediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            datediv.InnerHtml = date;


            //  datediv.Style.Add(HtmlTextWriterStyle.Position, "relative");
            datediv.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(datediv);


            /*            FOR PRICE DIV      */

            HtmlGenericControl pricediv = new HtmlGenericControl("DIV");
            //float:right;background-color:green;height:20px;width:200px;margin-top:-20px;margin-right:5px;left:100px;

            pricediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            pricediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            pricediv.Style.Add(HtmlTextWriterStyle.Width, "200px");
            // pricediv.Attributes.Add("Style", "float:LeftRightAlignment");
            pricediv.Attributes["style"] = "float:right;";
            // pricediv.Style.Add(HtmlTextWriterStyle.PaddingTop, "7px");
            // pricediv.Style.Add(HtmlTextWriterStyle.PaddingLeft, "10px");
            pricediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            pricediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            pricediv.InnerHtml = price;


            //  pricediv.Style.Add(HtmlTextWriterStyle.Position, "relative");
            pricediv.Style.Add(HtmlTextWriterStyle.Left, "100px");

            dynDiv.Controls.Add(pricediv);
        }




        
     

        
        
        }
    }
