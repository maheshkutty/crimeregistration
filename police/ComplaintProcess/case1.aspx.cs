using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.police.ComplaintProcess
{
    public partial class case1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
        }
    }
}