using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace police_and_automation.police
{
    public partial class NOCmaking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] != null)
            {
                Label1.Text = Session["pid"].ToString();

            }
            else
            {
                Label1.Text = "session lost";
                Response.Redirect("../policelogin.aspx");
            }
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                int a = Convert.ToInt32(Session["id"]);
                cmd.CommandText = "select rtype, rdesc from rletter where rid=@rid";
                cmd.Parameters.AddWithValue("@rid", a);
                SqlDataReader reader;
                //HttpCookie cookie = Request.Cookies["police"];
                //string b=cookie["pid"];
                //HttpCookie cookie1 = new HttpCookie("per");
                //cookie1["id"] = a;
               // Response.Cookies.Add(cookie1);
               // Label1.Text = b;
                con.Open();
                reader = cmd.ExecuteReader();
                if(reader.Read())
                {
                    rletter1.InnerText = reader["rtype"].ToString();
                    rletter2.InnerText = reader["rdesc"].ToString();
                }
                con.Close();
                
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                // HttpCookie cookie = Request.Cookies["police"];
                int b = Convert.ToInt32 (Session["pid"]);
                cmd.CommandText = "UPDATE rletter SET pid=@pid,rdate1=@rdate1,rstatus=@rstatus,rpdesc=@rpdesc where rid=@rid";
                Label1.Text = Session["id"].ToString();
                int a = Convert.ToInt32(Session["id"]);
                cmd.Parameters.AddWithValue("@rid", a);
                cmd.Parameters.AddWithValue("@pid", b);
                cmd.Parameters.AddWithValue("@rdate1", DateTime.Now.Date);
                cmd.Parameters.AddWithValue("@rstatus", "approved");
                cmd.Parameters.AddWithValue("@rpdesc", TextBox1.Text);

               // SqlDataReader reader;
                con.Open();
                int c;
                c=cmd.ExecuteNonQuery();
                if(c>0)
                {
                    Label1.Text = c.ToString();
                    HyperLink1.Visible = true;
                }
                // Response.Redirect();
                con.Close();
            }catch(Exception ex)
            {
               Label1.Text=ex.Message;
            }
            
        }

       
    }
}