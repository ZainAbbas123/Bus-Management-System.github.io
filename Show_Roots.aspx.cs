using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Show_Roots : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DB obj = new DB();
            if (Request.Cookies["Username2"] != null)
            {
                Label1.Text = (Request.Cookies["Username2"].Value.ToString());
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label2.Text = (Request.Cookies["Username3"].Value.ToString());
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label3.Text = (Request.Cookies["Username4"].Value.ToString());
            }
            DateTime dateTime10 = Convert.ToDateTime(Label3.Text);
            RootsGrid.DataSource = obj.SelectRoots(Label1.Text, Label2.Text, dateTime10);
            RootsGrid.DataBind();
        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
               HttpCookie Cookie = new HttpCookie("Username6"); // Route ID
             Cookie.Value = TextID.Text;
            Response.Cookies.Add(Cookie);
            Response.Redirect("Book_seats.aspx");
        }
        protected void BooksView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RootsGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
    }
}