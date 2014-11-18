using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuickClassified.Bean
{
    public class searchBean
    {

        //for searching 
        public static string title
        {
            get;
            set;
        }
        public static int minprice
        {
            get;
            set;
        }
        public static int maxprice
        {
            get;
            set;
        }
        public static string city
        {
            get;
            set;
        }
        public static string tablename
        {
            get;
            set;
        }

    }
}