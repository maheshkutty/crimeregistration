using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace police_and_automation.police.ComplaintProcess
{
    public partial class investigation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["pid"] != null && Session["cid"] != null)
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                    SqlCommand cmd = new SqlCommand();
                    int cid, prid, pid;
                    cid = Convert.ToInt32(Session["cid"]);
                    prid = Convert.ToInt32(Session["prid"]);
                    pid = Convert.ToInt32(Session["pid"]);
                    
                    cmd.Connection = con;

                    cmd.CommandText = "insert into case1 (cid,prid,cedate,cedetail,pid,psname)values(@cid2,@prid,@cedate,@cedetail,@pid,@psname)";
                
                    cmd.Parameters.AddWithValue("@cid2", cid);
                    if (Session["prid"] != null)
                    {
                        cmd.Parameters.AddWithValue("@prid", prid);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@prid", null);
                    }
                    cmd.Parameters.AddWithValue("@pid", pid);
                    cmd.Parameters.AddWithValue("@cedate", DateTime.Now.ToShortDateString());
                    cmd.Parameters.AddWithValue("@cedetail", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@psname", DropDownList1.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    SqlDataAdapter d=new SqlDataAdapter();
                    cmd.Connection = con;
                    DataSet ds = new DataSet();
                    cmd.CommandText = "select c.cid,ce.ceid,c.ctype,c.desc1,c.cbuild,c.clocal,c.cstation,pr.prfname,pr.prlname," +
                        "ce.cedetail,ce.cedate,ce.psname from complaint as c, prisoner as pr,case1 as ce where c.cid=@cid" +
                        " and pr.prid=@prid1 and ce.ceid in (select top 1 ceid from case1 order by ceid desc)";
                    cmd.Parameters.AddWithValue("@cid", cid);
                    cmd.Parameters.AddWithValue("@prid1", prid);
                    
                    d.SelectCommand = cmd;
                    con.Open();
                    d.Fill(ds);
                    labelcase.Visible = true;
                    FormView1.Visible = true;
                    FormView1.DataSource = ds;
                    FormView1.DataBind();
                    con.Close();
                    cmd.CommandText = "update complaint set cstatus=@cstatus where cid=@cid1";
                    cmd.Parameters.AddWithValue("@cstatus", "Complete");
                    cmd.Parameters.AddWithValue("@cid1", cid);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.CommandText = "select prfname,prlname,pstation from prisoner where cid=@cid";
                    //DataTable dt = new DataTable();
                    SqlDataAdapter d1 = new SqlDataAdapter();
                    DataSet ds1 = new DataSet();
                    d1.SelectCommand = cmd;
                    con.Open();
                    d1.Fill(ds1);
                    rptTable.DataSource = ds1;
                    rptTable.DataBind();
                    con.Close();
                }
                else
                {
                    Response.Write("session has expired");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}