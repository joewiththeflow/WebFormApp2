using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Helpers
    {
        //method to set accept language settings to cache
        public static void SetLanguageCache()
        {
            string[] requestLanguages = HttpContext.Current.Request.UserLanguages;
            if (HttpContext.Current.Application["Language"] != null)
            {
                bool areLanguageHeadersTheSame;
                string[] appLanguages = (string[])HttpContext.Current.Application["Language"];
                if ((appLanguages).SequenceEqual(requestLanguages))
                {
                    areLanguageHeadersTheSame = true;
                }
                else
                {
                    HttpContext.Current.Application["Language"] = requestLanguages;
                }
            }
            else
            {

                
                HttpContext.Current.Application["Language"] = requestLanguages;
            }

        }
    }
}