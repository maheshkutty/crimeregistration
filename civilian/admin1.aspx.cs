using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name"]==null)
            {
                Label1.Text = "incorrect direction";
                Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "welcome "+Session["name"].ToString();

            }

        }
    }
}