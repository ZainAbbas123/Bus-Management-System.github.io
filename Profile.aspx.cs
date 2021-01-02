using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        { 
            DB obj = new DB();
            if (Request.Cookies["Username1"] != null)  
            {

            Label1.Text = (Request.Cookies["Username1"].Value.ToString());
            }
            bool flag = obj.update_profile(Label1.Text, Textoldpassword.Text, TextNewpassword.Text);
            if (Textoldpassword.Text != "" && TextNewpassword.Text != "")
            {
                if (flag)
                {
                    Label1.Text = "Your Password has been updated successfully";
                    Response.Redirect("Functions.aspx");
                }
                else
                {
                    Label1.Text = "Your Old Password is incorrect";
                }
            }
            else
            {
                Label1.Text = "Please fill each text box to update Profile";
            }
        }
    }
}