using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Updates_Routes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DB obj = new DB();
            if (Request.Cookies["Username2"] != null)
            {
                Label18.Text = (Request.Cookies["Username2"].Value.ToString());// dep
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label19.Text = (Request.Cookies["Username3"].Value.ToString());// arrival
            }
            if (Request.Cookies["Username4"] != null)
            {
                Label20.Text = (Request.Cookies["Username4"].Value.ToString());// bus date
            }
            DateTime dateTime10 = Convert.ToDateTime(Label20.Text);
            RootsGrid.DataSource = obj.SelectRoots(Label18.Text, Label19.Text, dateTime10);
            RootsGrid.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie5 = new HttpCookie("Current_Time");
            HttpCookie Cookie6 = new HttpCookie("Updated_Time");
            HttpCookie Cookie7 = new HttpCookie("get_Bus_No");
            Cookie5.Value = Current_Time.Text;
            Cookie6.Value = Updated_Time.Text;
            Cookie7.Value = get_Bus_No.Text;
            Response.Cookies.Add(Cookie5);
            Response.Cookies.Add(Cookie6);
            Response.Cookies.Add(Cookie7);
            
            Response.Redirect("Updated_time_with_Route.aspx");
        }
    }
}