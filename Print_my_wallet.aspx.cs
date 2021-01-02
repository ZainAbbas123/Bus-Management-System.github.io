using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Print_my_wallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username1"] != null)//CNIC
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
            DB obj = new DB();
            Check_Wallet.DataSource = obj.Check_Wallet1(Label1.Text, Label2.Text, Label3.Text);
            Check_Wallet.DataBind();
        }

        protected void Check_Wallet_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}