using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class myBooking : System.Web.UI.Page
    {
        bool check = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username1"] != null)
            {
                Label4.Text = (Request.Cookies["Username1"].Value.ToString()); //CNIC
            }
            DB obj = new DB();
            MyBookings.DataSource = obj.MyBookings(Label4.Text);
            if (MyBookings.DataSource == null)
            {
                Label12.Text = "Sorry! There are currently no bookings available";
                check = false;
            }
            else
            {
                MyBookings.DataBind();
                check = true;
            }
        }

        protected void MyBookings_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Go_to_Ticket_Click(object sender, EventArgs e)
        {
            if(check == true)
            Response.Redirect("Payment.aspx");
            //else
            //Response.Redirect("functions.aspx");
        }
    }
}