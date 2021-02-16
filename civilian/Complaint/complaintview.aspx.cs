using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace police_and_automation.civilian.Complaint
{
    public partial class complaintview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] != null)
            {
                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    SqlDataAdapter dataAdapter = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    int id =Convert.ToInt32 ( Session["id"]);
                    cmd.CommandText = "select cid,cdate,ctype,cstatus from complaint where id=@cid";
                    cmd.Parameters.AddWithValue("@cid",id);
                    dataAdapter.SelectCommand = cmd;
                    
                    dataAdapter.Fill(ds,"complaint");
                    //populating data to gridview
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Label1.Text = "Session Expired";
                Response.Redirect("../login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Button1.Visible = true;
            string a=row.Cells[0].Text;
            Session["cmpid"] = a;
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                SqlDataAdapter dataAdapter = new SqlDataAdapter();
                DataSet ds = new DataSet();
                cmd.CommandText = "select * from complaint where cid=@cid";
                cmd.Parameters.AddWithValue("@cid",Convert.ToInt32(a));
                dataAdapter.SelectCommand = cmd;
                
                dataAdapter.Fill(ds,"complaint");
                string cstatus = ds.Tables[0].Rows[0]["cstatus"].ToString();
                if (cstatus.Equals("Not Approved"))
                {
                    Button1.Enabled = true;
                    Session["cstatus"] = cstatus;
                }
                else
                {
                    Button1.Enabled = false;
                }
                //populating data to form view based on user selection
                FormView1.Visible = true;
                FormView1.DataSource = ds;
                FormView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cmp = Convert.ToInt32(Session["cmpid"]);
            string cstatus = Session["cstatus"].ToString();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Delete from complaint where cid=@cmpid and cstatus=@cstatus";
                
                cmd.Parameters.AddWithValue("@cmpid", cmp);
                cmd.Parameters.AddWithValue("@cstatus", cstatus);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Sucessfully Deleted')", true);
                Response.Redirect(Request.RawUrl);
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}