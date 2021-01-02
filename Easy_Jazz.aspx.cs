using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Easy_Jazz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Payment_Click(object sender, EventArgs e)
        {
            if (TextPhoneNo1.Text != "" && TextPassword1.Text != "")
            {
                Label1.Text = "Your Ticket has been generated Successfully";
                Response.Redirect("Tickets_easy_Jazz.aspx");
            }
        }
    }
}