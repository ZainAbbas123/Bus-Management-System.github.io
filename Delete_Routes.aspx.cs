using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Delete_Routes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DB obj = new DB();
            if (Request.Cookies["Username2"] != null)
            {
                Label31.Text = (Request.Cookies["Username2"].Value.ToString());// dep
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label32.Text = (Request.Cookies["Username3"].Value.ToString());// arrival
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label33.Text = (Request.Cookies["Username4"].Value.ToString());// bus date
            }
            DateTime dateTime10 = Convert.ToDateTime(Label33.Text);
            RootsGrid.DataSource = obj.SelectRoots(Label31.Text, Label32.Text, dateTime10);
            RootsGrid.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            HttpCookie Cookie75 = new HttpCookie("get_route_No");

            Cookie75.Value = get_route_No.Text;
            Response.Cookies.Add(Cookie75);
           
            Response.Redirect("delete_route_no_permanently.aspx");
        }
    }
}