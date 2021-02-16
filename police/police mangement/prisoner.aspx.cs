using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace police_and_automation.police.police_mangement
{
    public partial class prisoner : System.Web.UI.Page
    {
        public static int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (Session["pid"] != null)
            {    
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into prisoner (prfname,prlname,pstation,pid,prdate,cid)values(@prfname,@prlname,@pstation,@pid,@prdate,@cid)";
                    cmd.Parameters.AddWithValue("@prfname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@prlname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@pstation", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@prdate", DateTime.Now.ToShortDateString());
                    cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(Session["pid"]));
                    if (Session["cid"] != null)
                    {
                        cmd.Parameters.AddWithValue("@cid", Convert.ToInt32(Session["cid"]));
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@cid", null);
                    }
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.CommandText = "SELECT TOP 1 prid FROM prisoner ORDER BY prid DESC";
                    SqlDataReader reader;
                    cmd.Connection = con;
                    con.Open();
                    reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Session["prid"] = reader["prid"].ToString();

                    }
                    con.Close();
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    DropDownList1.SelectedIndex = 0;
                
                    Label1.Text = a.ToString();
                if (a == 1)
                {
                   
                        Response.Redirect("~/police/ComplaintProcess/investigation.aspx");      
                }
                a--;
            }
            else
            {
                //Label1.Text = DateTime.Now.ToShortDateString();
                Response.Write("session Expired");
            }
        }
        

        protected void criminal_number(object sender, EventArgs e)
        {
            a = Convert.ToInt32 (TextBox3.Text);
            div1.Visible = true;
            Label1.Text = a.ToString();
            labelpr.Visible = false;
            TextBox3.Visible = false;
            Button2.Visible = false;
        }
    }

}