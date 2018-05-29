using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebAssess
{
    public class RegDB
    {
        public void InsertReg(int custID, string prodID, string date)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechSupportConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Registrations(CustomerID,ProductCode,RegistrationDate)values (@custID,@productCode,@regDate)";

            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@custID", custID);
            cmd.Parameters.AddWithValue("@productCode", prodID);
            cmd.Parameters.AddWithValue("@regDate", date);
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}