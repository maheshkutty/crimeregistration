using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace police_and_automation.civilian
{
    public partial class NOCreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checking for session
            if (Session["id"] == null)
            {
                Response.Redirect("~/civilian/login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into rletter (rtype,rdesc,rdate,rtime,rstatus,id) values" +
                        "(@rtype,@rdesc,@rdate,@rtime,@rstatus,@id)";
                    cmd.Parameters.AddWithValue("@rtype", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@rdesc", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@rdate", DateTime.Now);
                    cmd.Parameters.AddWithValue("@rtime", DateTime.Now.ToString("HH:mm"));

                    cmd.Parameters.AddWithValue("@rstatus", "pending");
                    int a = Convert.ToInt32(Session["id"]);
                    cmd.Parameters.AddWithValue("@id", a);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Visible = false;
                    Label1.Text = "Noc Is Registered";
                }
                else
                {
                    Response.Write("Session Expired");
                }
            }catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}