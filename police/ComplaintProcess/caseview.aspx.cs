using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace police_and_automation.police.ComplaintProcess
{
    public partial class caseview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                //check session 
                Response.Redirect("../policelogin.aspx");
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                
                SqlDataAdapter adapter = new SqlDataAdapter();
                DataSet ds = new DataSet();
                cmd.Connection = con;

                cmd.CommandText = "select cid,ctype,cdate,pstation,cstatus from complaint where cid=@cid or ctype=@ctype or cdate=@cdate";
                cmd.Parameters.AddWithValue("@cid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@ctype", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@cdate", TextBox3.Text);
                adapter.SelectCommand = cmd;
                con.Open();
                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void date_changed(object sender, EventArgs e)
        {
            string a = TextBox3.Text;
            //Label2.Visible = true;
            //Label2.Text = "fi";
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c < 0 || c == 0)
            {
                Label4.Visible = false;
            }
            else
            {
                TextBox3.Text = null;
                Label4.Visible = true;
                Label4.Text = "date should not exceed current date";
            }
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            rptTable.Visible = false;
            int cid;
            GridViewRow row = GridView1.SelectedRow;
            int a =Convert.ToInt32 (row.Cells[0].Text);
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter adapter = new SqlDataAdapter();
               
                DataSet ds = new DataSet();
                cmd.Connection = con;
                cmd.CommandText = "select c.cid,c.cbuild,c.ctype,c.cstreet,c.clocal,c.id,c.cdate1,c.cstation,c.cdate,c.desc1,ce.cedetail,ce.psname,c.cstatus from complaint as c inner join  case1 as ce on c.cid=ce.cid where c.cid=@cid";
                cmd.Parameters.AddWithValue("@cid", a);
                adapter.SelectCommand = cmd;
                con.Open();
             
                adapter.Fill(ds);

                if (ds.Tables[0] != null)
                {
                    Label2.Visible = true;
                    FormView1.Visible = true;
                    FormView1.DataSource = ds;
                    FormView1.DataBind();
                }else
                {
                    Label1.Text = "no data exists";
                }
                con.Close();
                cmd.CommandText = "select prfname,prlname,pstation from prisoner where cid=@cid";
                cmd.Connection = con;
                adapter.SelectCommand = cmd;
                con.Open();
                //populating prisoner data to repeater table 
                adapter.Fill(ds);
                if (ds.Tables[0].Rows[0]!=null)
                {
                    Label3.Visible = true;
                    rptTable.Visible = true;
                    rptTable.DataSource = ds;
                    rptTable.DataBind();
                }
                
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}