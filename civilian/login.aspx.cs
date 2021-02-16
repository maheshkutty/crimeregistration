using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace police_and_automation
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;
                //to establish connection with database
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                cmd.CommandText = "select * from jass where email='" + TextBox1.Text + "'and pass='" + TextBox2.Text + "'";
                cmd.Connection = con;
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    //make session for other page
                    Session["name"] = reader["cfname"].ToString();
                    Session["id"] = Convert.ToInt32(reader["Id"]);
                    Response.Redirect("admin1.aspx");
                    Label1.Text = "hi";
                    Label2.Text = reader["cfname"].ToString();
                }
                else
                {
                    //informing user for wrong information 
                    Label1.Text = "you entered wrong email and password";
                    HyperLink1.Visible = true;

                }
                reader.Close();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}