using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.police.police_mangement
{
    public partial class viewasset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                //check Session
                Response.Redirect("../policelogin.aspx");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string a = row.Cells[0].Text;
            Session["assetID"] = a;
        }
    }
}