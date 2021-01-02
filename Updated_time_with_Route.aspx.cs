using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Updated_time_with_Route : System.Web.UI.Page
    {
        bool check = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username2"] != null)
            {
                Label21.Text = (Request.Cookies["Username2"].Value.ToString());// dep
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label22.Text = (Request.Cookies["Username3"].Value.ToString());// arrival
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label23.Text = (Request.Cookies["Username4"].Value.ToString());// bus date
            }

            if (Request.Cookies["Current_Time"] != null)
            {
                Label24.Text = (Request.Cookies["Current_Time"].Value.ToString());// current time
            }
            if (Request.Cookies["Updated_Time"] != null)
            {
                Label25.Text = (Request.Cookies["Updated_Time"].Value.ToString());// updated time
            }
            if (Request.Cookies["get_Bus_No"] != null)
            {
                Label26.Text = (Request.Cookies["get_Bus_No"].Value.ToString());// bus No
            }
            DB obj = new DB();
            DateTime dateTime10 = Convert.ToDateTime(Label23.Text);
            RootsGrid.DataSource = obj.update_routes_with_time(Label21.Text, Label22.Text, dateTime10, Label26.Text, Label24.Text, Label25.Text);
            if (RootsGrid.DataSource == null)
            {
                Label27.Text = "Sorry! There are currently no Tickets available";
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