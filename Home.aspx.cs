using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Order.aspx");

        }

        protected void btn_order_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderList.aspx");

        }
    }
}