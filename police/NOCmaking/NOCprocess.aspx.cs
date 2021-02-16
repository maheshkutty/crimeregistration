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
    public partial class NOCprocess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] != null)
            {
                Label1.Text = Session["pid"].ToString();
            }
            else
            {
                Response.Redirect("../policelogin.aspx");
            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string a = row.Cells[0].Text;
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlDataReader rd;
                SqlCommand cmd = new SqlCommand();
                SqlCommand cmd1 = new SqlCommand();
                cmd.Connection = con;
                DataTable ds = new DataTable();
                cmd1.Connection = con;
                cmd.CommandText = "select id from rletter where rid=@rid";
                cmd.Parameters.AddWithValue("@rid", a);
                con.Open();
                rd=cmd.ExecuteReader();
                string id1=null;
                if(rd.Read())
                {
                    id1 = rd["id"].ToString();
                }
                con.Close();
                cmd1.CommandText = "select rid,rtype,cfname,clname,rdesc,rdate,rtime from rletter as r inner join jass as c on r.id = c.Id where c.Id = @id1 and rid = @rid1";
                Session["id"] = a;
                // string pid = Session["pid"].ToString();
                Label1.Text = a;
                cmd1.Parameters.AddWithValue("@rid1",Convert.ToInt32( a));
                cmd1.Parameters.AddWithValue("@id1", Convert.ToInt32 (id1));

                SqlDataAdapter adapter = new SqlDataAdapter();
     
                adapter.SelectCommand = cmd1;
                con.Open();
                adapter.Fill(ds);
               //populating data to form view
                FormView1.DataSource = ds;
                FormView1.DataBind();
                con.Close();
            }catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}