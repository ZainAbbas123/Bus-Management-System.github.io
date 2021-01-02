using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class AllocatedBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username2"] != null)
            {
                Label1.Text = (Request.Cookies["Username2"].Value.ToString());//departure city
            }

            if (Request.Cookies["Username3"] != null)
            {
                Label2.Text = (Request.Cookies["Username3"].Value.ToString()); //arrival city
            }
           
            if (Request.Cookies["Username6"] != null)
            {
                Label4.Text = (Request.Cookies["Username6"].Value.ToString()); //ID 
            }        
            if (Request.Cookies["SeatNo"] != null)
            {
                Label5.Text = (Request.Cookies["SeatNo"].Value.ToString()); // Seat No
            }
            if (Request.Cookies["Username1"] != null)//  CNIC
            {

                Label6.Text = (Request.Cookies["Username1"].Value.ToString());
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label3.Text = (Request.Cookies["Username4"].Value.ToString());  //date not needed
            }

            DB obj = new DB();
            bool flag = obj.selection_of_seats(Label6.Text, Label1.Text, Label2.Text, Label5.Text, Label4.Text, Label3.Text);
            if (flag)
            {
                Label5.Text = "Your Seat has been reserved successfully";
                AllocateSeats.DataSource = obj.booking(Label4.Text, Label1.Text, Label2.Text, Label3.Text);
                AllocateSeats.DataBind();
            }
            else
            {
                Label5.Text = "Seat already Allocated";
            }
        }

        protected void AllocateSeats_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void BuyTickets_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}