using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();
        }
        private void loadData()
        {
            DB obj = new DB();
            GridView1.DataSource = obj.selectItem();
            GridView1.DataBind();
           
        }
    }
}