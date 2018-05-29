using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS31
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductMaintenance.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }
}