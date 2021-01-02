using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Wallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["Username2"] != null)
            {
                Label2.Text = (Request.Cookies["Username2"].Value.ToString());//departure city
            }
            if (Request.Cookies["Username3"] != null)
            {
                Label3.Text = (Request.Cookies["Username3"].Value.ToString()); //arrival city
            }
            if (Request.Cookies["Username1"] != null)//CNIC
            {
                Label1.Text = (Request.Cookies["Username1"].Value.ToString()); //CNIC
            }
            DB obj = new DB();
            GridView1.DataSource = obj.CheckWallet123(Label1.Text);
            GridView1.DataBind();
        }
    }
}