using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CRUDApplication
{
    public partial class AddProduct : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("insert into Product(name) values('" + txtProduct.Text + "')", con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("<script>alert('Data Added Success..!')</script>");
                txtProduct.Text = string.Empty;
            }
            else
            {
                Response.Write("<script>alert('Data not Added ..!')</script>");

            }
            con.Close();
        }
     }
}