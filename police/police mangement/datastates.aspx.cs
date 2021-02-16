using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.police.police_mangement
{
    public partial class datastates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
            string[] str = File.ReadAllLines(Server.MapPath("cluster.csv"));

            // create new datatable
            DataTable dt = new DataTable();

            // get the column header means first line
            string[] temp = str[0].Split(',');

            // creates columns of gridview as per the header name
            foreach (string t in temp)
            {
                dt.Columns.Add(t, typeof(string));
            }

            // now retrive the record from second line and add it to datatable
            for (int i = 1; i < str.Length; i++)
            {
                string[] t = str[i].Split(',');
                dt.Rows.Add(t);

            }

            // assign gridview datasource property by datatable
            GridView1.DataSource = dt;

            // bind the gridview
            GridView1.DataBind();


        }
    }
}