using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS31
{
    public partial class ProductMaintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}