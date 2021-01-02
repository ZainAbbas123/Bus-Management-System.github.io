using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Book_seats : System.Web.UI.Page
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
            if (Request.Cookies["Username4"] != null)
            {
                Label3.Text = (Request.Cookies["Username4"].Value.ToString());  //date not needed
            }
            if (Request.Cookies["Username6"] != null)
            {
                Label4.Text = (Request.Cookies["Username6"].Value.ToString()); //ID 
            }           
            DB obj = new DB();
            BookGrid.DataSource = obj.booking(Label4.Text, Label1.Text, Label2.Text, Label3.Text);
            BookGrid.DataBind();
        }



        protected void BookGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void BookSeats_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("SeatNo"); // Route ID
            Cookie.Value = TextSeatNo.Text;
            Response.Cookies.Add(Cookie);
           Response.Redirect("AllocatedBook.aspx");
        }
    }
}