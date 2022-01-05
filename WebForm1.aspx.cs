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

    public partial class WebForm1 : System.Web.UI.Page
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
            cmd = new SqlCommand("insert into Customer(first_name,last_name,contact_no,pincode) values('" + txtFname.Text + "','" + txtLname.Text + "','" + txtContact.Text + "','" + txtPin.Text + "')", con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("<script>alert('Data Added Success..!')</script>");
                txtFname.Text = string.Empty;
                txtLname.Text = string.Empty;
                txtContact.Text = string.Empty;
                txtPin.Text = string.Empty;
            }
            else
            {
                Response.Write("<script>alert('Data not Added ..!')</script>");

            }
            con.Close();
        }
    }
}