using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickClassified
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MailSender ms = new MailSender();
            MailSender.SendMailMessage("mohsinnasir142@gmail.com", "mohsinnasir142@gmail.com", "", "mohsinnasir142@gmail.com", "abc", "abcdefghijklmno");
        }
    }
}