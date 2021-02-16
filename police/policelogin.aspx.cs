using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace police_and_automation.police
{
    public partial class policelogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "hi";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                //int flag = 0;


                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                cmd.CommandText = "select * from POLICE where pemail=@pemail and pass1=@pass1";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@pemail", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass1", TextBox2.Text);
                con.Open();
                reader = cmd.ExecuteReader();
                Label1.Visible = true;
                Label1.Text = "hi";
                if (reader.Read())
                {
                    // if (reader["email"].ToString() == TextBox1.Text && reader["pass"].ToString() == TextBox2.Text)
                    //{
                    Session["name"] = reader["pfname"].ToString();
                 //   HttpCookie cookie = new HttpCookie("police");
               //     cookie["pid"] =reader["pid"].ToString();
                    Session["pid"] = Convert.ToInt32(reader["pid"]);
                   // Response.Cookies.Add(cookie);
                    Response.Redirect("adminpolice.aspx");

                    Label1.Text = "hi";
                   //0 Label2.Text = reader["cfname"].ToString();



                    //break
                    //Session.RemoveAll();
                }

                //}
                else
                {
                    Label1.Text = "you entered wrong email and password";
                 //   HyperLink1.Visible = true;

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