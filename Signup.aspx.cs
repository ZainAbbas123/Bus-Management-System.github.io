using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication12
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btnregiter_Click(object sender, EventArgs e)
        {
            DB obj = new DB();
            bool flag = obj.executeInsert(TextCNIC.Text, Textname.Text, TextPhoneNo.Text, Textemail.Text, Textpassword.Text);
            if (TextCNIC.Text != "" && Textname.Text != "")
            {
                if (TextPhoneNo.Text != "" && Textemail.Text != "")
                {
                    if (Textpassword.Text != "")
                    {
                        if (flag)
                        {
                            Label1.Text = "You have been Registered Successfully";
                            bool flag1 = obj.insert_into_wallet1(TextCNIC.Text);
                            Response.Redirect("Signin.aspx");
                        }
                        else
                        {
                            Label1.Text = "User already Exsist";
                        }
                    }
                }
            }
            else
            {
                Label1.Text = "Please fill each text box to go ahead";
            }
        }

        protected void Confirm_Payment_Click(object sender, EventArgs e)
        {

        }
    }
}