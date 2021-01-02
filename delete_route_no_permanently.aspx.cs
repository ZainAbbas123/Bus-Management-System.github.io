using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class delete_route_no_permanently : System.Web.UI.Page
    {
        bool check = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username2"] != null)
            {
                Label41.Text = (Request.Cookies["Username2"].Value.ToString());// dep
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label42.Text = (Request.Cookies["Username3"].Value.ToString());// arrival
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label43.Text = (Request.Cookies["Username4"].Value.ToString());// bus date
            }
            if (Request.Cookies["get_route_No"] != null)
            {
                Label46.Text = (Request.Cookies["get_route_No"].Value.ToString());// bus No
            }
            DB obj = new DB();
            DateTime dateTime10 = Convert.ToDateTime(Label43.Text);
            RootsGrid.DataSource = obj.delete_route(Label41.Text, Label42.Text, dateTime10,Label46.Text);
            if (RootsGrid.DataSource == null)
            {
                Label47.Text = "Sorry! There are currently no Tickets available";
                check = false;
            }
            else
            {
                RootsGrid.DataBind();
                check = true;
            }
        }
    }
}