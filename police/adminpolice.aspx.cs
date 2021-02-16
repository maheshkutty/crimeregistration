using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.police
{
    public partial class adminpolice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] != null)
            {
                string pid = Session["pid"].ToString();
                Session["pid"] = pid;

                // Response.Redirect(url);
                Label1.Text = pid;
            }
            else
            {
                Response.Redirect("~/police/policelogin.aspx");
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/police/NOCmaking/NOCprocess.aspx");
        //}
    }
}