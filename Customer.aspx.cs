using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication12
{
    public partial class Customer : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            // For Sign up
            if (this.IsPostBack)
            {
                Textpassword.Attributes["value"] = Textpassword.Text;
            }

            // For Sign
            if (this.IsPostBack)
            {
                Textpasword.Attributes["value"] = Textpasword.Text;
            }
             
        }
        protected void Btnregiter_Click(object sender, EventArgs e)
        {
            DB obj = new DB();
            if (Regex.IsMatch(Textname.Text, @"^[a-zA-Z0-9\s.\?\,\'\;\:\!\-]+$"))
            {
                Label1.Text = "Ok Fine!";
            }
            bool flag = obj.executeInsert(TextCNIC.Text,Textname.Text,TextPhoneNo.Text,Textemail.Text,Textpassword.Text);
           if (flag)
           {
               Label1.Text = "inserted";
           }
           else
           {
               Label1.Text = "User already Exsist";
           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DB obj = new DB();
            bool flag = obj.checklogin(Textusername.Text, Textpasword.Text);
            if (flag)
            {
                Label2.Text = "Sign in Successfully";

                HttpCookie Cookie1 = new HttpCookie("Username1");
                Cookie1.Value = Textusername.Text;
                Response.Cookies.Add(Cookie1);
                Response.Redirect("Checking_Roots.aspx");
            }
            else
            {
                Label2.Text = "Username or password is incorrect";
            }
        }
    }
}