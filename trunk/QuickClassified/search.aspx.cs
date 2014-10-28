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
using System.Web.UI.HtmlControls;
using QuickClassified.Bean;

namespace QuickClassified
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.getdata(searchBean.title,searchBean.minprice,searchBean.maxprice,searchBean.city,searchBean.tablename);
        }

        public void leftbody(string title, string price, string description, string city, string date, string province, int i)
        {

            //MessageBox.Show("i reached in leftbody div");

            HtmlGenericControl freeads = new HtmlGenericControl("DIV");




            //div created for free ads 
            HtmlGenericControl dynDiv = new HtmlGenericControl("DIV");

            freeads.ID = i.ToString();
            //          freeads.Attributes["Style"] = "border-radius:5px;";
            freeads.Style.Add(HtmlTextWriterStyle.BackgroundColor, "#4b6c9e");
            freeads.Style.Add(HtmlTextWriterStyle.Height, "90px");
            freeads.Style.Add(HtmlTextWriterStyle.Width, "550px");
            freeads.Style.Add(HtmlTextWriterStyle.Left, "200px");


            search_ph.Controls.Add(freeads);


            /* For Province  */
            HtmlGenericControl innerdiv = new HtmlGenericControl("DIV");

            innerdiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            innerdiv.Attributes["style"] = "float:Left;";
            innerdiv.Style.Add(HtmlTextWriterStyle.Height, "70px");
            innerdiv.Style.Add(HtmlTextWriterStyle.Width, "50px");
            innerdiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            innerdiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            innerdiv.InnerHtml = province;
            innerdiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(innerdiv);


            /* For Title */
            HtmlGenericControl header = new HtmlGenericControl("DIV");

            header.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            header.Style.Add(HtmlTextWriterStyle.Height, "20px");
            header.Style.Add(HtmlTextWriterStyle.Width, "350px");
            header.Attributes["style"] = "float:left;";
            header.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            header.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            header.InnerHtml = title;
            header.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(header);

            /*For Desciption */
            HtmlGenericControl detaildiv = new HtmlGenericControl("DIV");

            detaildiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            detaildiv.Style.Add(HtmlTextWriterStyle.Height, "45px");
            detaildiv.Style.Add(HtmlTextWriterStyle.Width, "350px");
            detaildiv.Attributes["style"] = "float:left;";
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            detaildiv.Style.Add(HtmlTextWriterStyle.MarginLeft, "5px");
            detaildiv.InnerHtml = description;
            detaildiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(detaildiv);


            /*FOR CITY DIV*/
            HtmlGenericControl citydiv = new HtmlGenericControl("DIV");

            citydiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            citydiv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            citydiv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            citydiv.Attributes["style"] = "float:right;";
            citydiv.Style.Add(HtmlTextWriterStyle.MarginTop, "-20px");
            citydiv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            citydiv.InnerHtml = city;
            citydiv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(citydiv);


            /*FOR DATE TIME DIV*/
            HtmlGenericControl datediv = new HtmlGenericControl("DIV");

            datediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            datediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            datediv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            datediv.Attributes["style"] = "float:right;";
            datediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            datediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            datediv.InnerHtml = date;
            datediv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(datediv);


            /*            FOR PRICE DIV      */
            HtmlGenericControl pricediv = new HtmlGenericControl("DIV");

            pricediv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "white");
            pricediv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            pricediv.Style.Add(HtmlTextWriterStyle.Width, "130px");
            pricediv.Attributes["style"] = "float:right;";
            pricediv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");
            pricediv.Style.Add(HtmlTextWriterStyle.MarginRight, "5px");
            pricediv.InnerHtml = price;
            pricediv.Style.Add(HtmlTextWriterStyle.Left, "100px");
            freeads.Controls.Add(pricediv);





        }
        public void getdata(string title,int minprice,int maxprice,string city,string category)
        {

            string query = "select temp_title ,temp_price,temp_description,temp_city ,temp_datetime ,temp_category from temp where temp_title like '%"+title+"%' and temp_price between "+minprice+" and "+maxprice+" and temp_city='"+city+"' and temp_category='"+category+"'   ";
            SqlConnection connection = Connection_Manger.getConnection();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                int i = 0;

                if (reader.HasRows)
                {
                    message_label.Text = "Your Search Results";
                    while (reader.Read())
                    {

                        this.leftbody(reader["temp_title"].ToString(), reader["temp_price"].ToString(), reader["temp_description"].ToString(), reader["temp_city"].ToString(), reader["temp_datetime"].ToString(), reader["temp_category"].ToString(), i++);
                    }

                }
                else
                {

                    message_label.Text = "No Record found";


                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}