using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class GridViewDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> names = new List<string>();
            for (int i = 0; i < 99; i++)
            {
                names.Add("John Doe" + i.ToString());
            }
            //CustomersGridView.DataSource = names;
            //CustomersGridView.DataBind();
            CustomersList.DataSource = names;
            CustomersList.DataBind();
        }
    }
}