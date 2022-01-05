using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CRUDApplication
{
    public partial class OrderList : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            //GetOrder_Data();
        }

        protected void GetOrder_Data()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select from Order", con);
            SqlDataReader reader = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(reader);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}