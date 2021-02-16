using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.civilian
{
    public partial class NOCstatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    int a = Convert.ToInt32(Session["id"].ToString());
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "select rid,rtype,rdate,rstatus from rletter where id=@id ";
                    cmd.Parameters.AddWithValue("@id", a);
                    adapter.SelectCommand = cmd;
                    con.Open();
                    adapter.Fill(ds);
                    //populating data to gridview
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    con.Close();
                }else
                {
                    Response.Write("session exipred");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);

            }
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string a = row.Cells[0].Text;
            string b = row.Cells[3].Text;
            try
            {
                if (b.Equals("approved"))
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                    SqlDataReader reader;
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "select pid from rletter where rid=@rid";
                    cmd.Parameters.AddWithValue("@rid", Convert.ToInt32(a));
                    con.Open();
                    reader = cmd.ExecuteReader();
                    //rediecting to page after selecting NOC which is approved by Police
                    if (reader.Read())
                    {
                        Session["pid"] = reader["pid"].ToString();
                        Session["rid"] = a;
                        Response.Redirect("nocdoc1.aspx");
                    }

                    con.Close();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Only Select Approved NOC";

                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}