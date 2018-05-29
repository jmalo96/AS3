using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAssess;

namespace AS31
{
    public partial class AddRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)sqlCustomer.Select(DataSourceSelectArguments.Empty);
            int custID = (int)dv.Table.Rows[ddlCustName.SelectedIndex][0];

            DataView Proddv = (DataView)sqlProducts.Select(DataSourceSelectArguments.Empty);
            string prodID = (string)Proddv.Table.Rows[ddlProdName.SelectedIndex][0];

            try
            {
                RegDB Reg = new RegDB();
                Reg.InsertReg(custID, prodID, txtBoxDate.Text);

                Response.Write("Success");
                GridView1.DataBind();
            }
            catch (SqlException)
            {
                Response.Write("Error, Product already registered");
            }
        }
    }
}