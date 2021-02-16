using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace police_and_automation.police.police_mangement
{
    public partial class updateassets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["assetID"] != null)
                TextBox1.Text = Session["assetID"].ToString();
            else
                TextBox1.Text = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update assets1 set ascount=@ascount,asreq=@asreq where Id=@asid";
            cmd.Parameters.AddWithValue("@asid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@asreq", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ascount", TextBox3.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}