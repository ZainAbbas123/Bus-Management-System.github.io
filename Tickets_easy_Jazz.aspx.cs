using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Tickets_easy_Jazz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username1"] != null)
            {
                Label1.Text = (Request.Cookies["Username1"].Value.ToString()); //CNIC
            }

            if (Request.Cookies["Username2"] != null)
            {
                Label2.Text = (Request.Cookies["Username2"].Value.ToString());//departure city
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label3.Text = (Request.Cookies["Username3"].Value.ToString()); //arrival city
            }

            if (Request.Cookies["Username6"] != null)
            {
                Label4.Text = (Request.Cookies["Username6"].Value.ToString()); //ID 
            }
            if (Request.Cookies["SeatNo"] != null)
            {
                Label5.Text = (Request.Cookies["SeatNo"].Value.ToString()); // Seat No
            }
            if (Request.Cookies["Payment_Type"] != null)
            {
                Label6.Text = (Request.Cookies["Payment_Type"].Value.ToString()); // Payment type
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label7.Text = (Request.Cookies["Username4"].Value.ToString());  //date not needed
            }
            DB obj = new DB();
            bool flag = obj.Generate_Tickets(Label1.Text, Label2.Text, Label3.Text, Label4.Text, Label5.Text, Label6.Text, Label7.Text);
            if (flag)
            {
                Label8.Text = "true";
                Response.Redirect("Functions.aspx");
            }
            else
            {
                Label8.Text = "Not true";
            }
        }

        protected void TicketGenenate_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}