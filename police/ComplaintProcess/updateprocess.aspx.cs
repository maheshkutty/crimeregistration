using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace police_and_automation.police.ComplaintProcess
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender,EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            a =Convert.ToInt32 (row.Cells[0].Text);
            DropDownList1.Visible = true;
            lbldrop.Visible = true;

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id =Convert.ToInt32 (GridView1.Rows[e.RowIndex].Cells[0].Text);
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete case1 where cid=@cid";
                cmd.Parameters.AddWithValue("cid",id);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update complaint set ctype=@ctype where cid=@cid";
                cmd.Parameters.AddWithValue("@ctype", "Rejected");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update case1 set cedetail=@cedetail where cid=@cid";
                cmd.Parameters.AddWithValue("@cedetail",TextBox1.Text);
                cmd.Parameters.AddWithValue("@cid", a);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex==1)
            {
                Label1.Visible = true;
                TextBox1.Visible = true;
                Button1.Visible = true;
                fname1.Visible = false;
                lname1.Visible = false;
                pstation1.Visible = false;
                Button3.Visible = false;
            }
            if(DropDownList1.SelectedIndex==2)
            {
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
                fname1.Visible = true;
                lname1.Visible = true;
                pstation1.Visible = true;
                Button3.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                DropDownList2.Visible = true;
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
                cmd.CommandText = "update prisoner set prfname=@fname,prlname=@lname,pstation=@pstation where cid=@cid";
                cmd.Parameters.AddWithValue("@fname",fname1.Text);
                cmd.Parameters.AddWithValue("@lname", lname1.Text);
                cmd.Parameters.AddWithValue("@pstation", pstation1.Text);
                cmd.Parameters.AddWithValue("@cid", a);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                fname1.Visible = false;
                lname1.Visible = false;
                pstation1.Visible = false;
                Button3.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                DropDownList2.Visible = false;

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
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
                cmd.CommandText = "select cid,cbuild,ctype,cstreet,pstation from complaint where cdate1=@cdate1 or cid IN" +
                    " (select cid from case1 where cid=@cid) ";
                cmd.Parameters.AddWithValue("@cid", TextBox4.Text);
                cmd.Parameters.AddWithValue("@ctype", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@cdate1", TextBox6.Text);
                //cmd.Parameters.AddWithValue("@ctype", "Rejected");

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
        protected void date_checked(object sender, EventArgs e)
        {
            string a = TextBox6.Text;
            //Label2.Visible = true;
            //Label2.Text = "fi";
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c < 0 || c == 0)
            {
                labeldate.Visible = false;
            }
            else
            {
                TextBox6.Text = null;
                labeldate.Visible = true;
                labeldate.Text = "date should not exceed current date";
            }
        }

    }
}