using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;

namespace CRUDApplication
{
    public partial class Add_Order : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            GetCustomer();
            GetProduct();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Order(ccustomer_id,product_id,remarks) values('" + DropDownList1.SelectedItem.Value.ToString() + "','" + DropDownList2.SelectedItem.Value.ToString() + "','" + txtRemark.Text + "')", con);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("<script>alert('Data Added Success..!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data not Added ..!')</script>");

            }
            con.Close();
        }

        protected void GetCustomer()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select id,first_name,last_name from Customer", con);
            SqlDataReader reader = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(reader);

            
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "first_name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();

            con.Close();
        }
        protected void GetProduct()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select id,name from Product", con);
            SqlDataReader reader = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(reader);


            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();

            con.Close();
        }

    }
}