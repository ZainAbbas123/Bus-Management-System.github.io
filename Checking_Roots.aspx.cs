using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication12
{
    public partial class Checking_Roots : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connstring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(connstring);
                SqlCommand cmd = new SqlCommand("select * from dates", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Departure_Date.DataSource = dt;
                Departure_Date.DataBind();
            } 
        }  

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("Username2");
            HttpCookie Cookie1 = new HttpCookie("Username3");
            HttpCookie Cookie2 = new HttpCookie("Username4");
            Cookie.Value = DepartureCity.Text;
            Cookie1.Value = ArrivalTime.Text;
            Cookie2.Value = Departure_Date.Text;
            Response.Cookies.Add(Cookie);
            Response.Cookies.Add(Cookie1);
            Response.Cookies.Add(Cookie2);
            if (DepartureCity.Text == ArrivalTime.Text)
            {
                Label89.Text = "Departure and Arrival City can not be same";
                Response.Redirect("Checking_Roots.aspx");
            }
            else
            {
                Response.Redirect("Show_Roots.aspx");
            }
        }

        protected void Departure_Date_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}