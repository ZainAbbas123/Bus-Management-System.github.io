using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Payment_Button_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("Payment_Type"); // Route ID
            Cookie.Value = Payment_Method.SelectedItem.Text;
            if (Payment_Method.SelectedItem.Text == "Wallet")
            {
                Response.Redirect("Deduct_Wallet.aspx");
            }
            Response.Cookies.Add(Cookie);
            Response.Redirect("Easy_Jazz.aspx");
        }
        protected void Payment_Method_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}