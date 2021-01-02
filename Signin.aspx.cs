using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DB obj = new DB();
            bool flag = obj.checklogin(Textusername.Text, Textpasword.Text);
            if (Textusername.Text != "" && Textpasword.Text != "")
            {
                if (flag)
                {
                    Label2.Text = "Sign in Successfully";

                    HttpCookie Cookie1 = new HttpCookie("Username1");
                    Cookie1.Value = Textusername.Text;
                    Response.Cookies.Add(Cookie1);
                    Response.Redirect("Functions.aspx");
                }
                else
                {
                    Label2.Text = "Username or password is incorrect";
                }
            }
            else
            {
                Label2.Text = " Please fill each text box to go ahead";
            }
        }
    }
}