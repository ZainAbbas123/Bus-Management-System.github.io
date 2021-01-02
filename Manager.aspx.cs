using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                DB obj = new DB();
                if (Textusername.Text != "" && Textpasword.Text != "")
                {

                    Label2.Text = "Sign in Successfully";
                    Response.Redirect("Mang_Port.aspx");
                }
                else
                {
                    Label2.Text = "Username or password is incorrect";
                }
        }
    }
}