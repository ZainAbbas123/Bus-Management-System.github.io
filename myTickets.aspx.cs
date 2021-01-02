using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class myTickets : System.Web.UI.Page
    {
        bool check = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username1"] != null)
            {
                Label1.Text = (Request.Cookies["Username1"].Value.ToString()); //CNIC
            }
            DB obj = new DB();
            MyTickets.DataSource = obj.MyTickets(Label1.Text);
            if (MyTickets.DataSource == null)
            {
                Label123.Text = "Sorry! There are currently no Tickets available";
                check = false;
            }
            else
            {
                MyTickets.DataBind();
                check = true;
            }
        }

        protected void MyTickets_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}