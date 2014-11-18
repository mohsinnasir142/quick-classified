using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace QuickClassified.DAO
{
    public class Connection_Manger
    {
        public static SqlConnection getConnection()
        {
            return new SqlConnection(GetConnectionString());
        }

        private static string GetConnectionString()
        {

            //Where MYDBConnection is the connetion string that was set up in the web config file
            return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
      
    }
   
}