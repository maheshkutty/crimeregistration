using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace police_and_automation.police.ComplaintProcess
{
    public partial class complaintprocess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
        }
        

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string a = row.Cells[0].Text;
            Session["cid"] = Convert.ToInt32(a);
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                int cid;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                SqlDataAdapter dataAdapter = new SqlDataAdapter();
                string img;
                DataSet ds = new DataSet();
                cmd.CommandText = "select * from complaint where cid=@cid";
                cmd.Parameters.AddWithValue("@cid", Convert.ToInt32(a));
                dataAdapter.SelectCommand = cmd;
                con.Open();
                dataAdapter.Fill(ds, "complaint");
                cid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
                img = ds.Tables[0].Rows[0]["cevd1"].ToString();
                labelcase.Visible = true;
                FormView1.Visible = true;
                FormView1.DataSource = ds;
                FormView1.DataBind();
                con.Close();
                
                if(img.Equals("null"))
                {
                    imagelink.Visible = false;
                    labelimginfo.Text = "No evidence for complaint";
                }
                else
                {
                        imagelink.Visible = true;
                        string range = @"\";
                        int lastindex = img.LastIndexOf(range);
                        string imgloc = img.Substring(lastindex + 1);
                        Image1.Visible = true;
                        labelimginfo.Text = "Evidence Found";
                        Image1.ImageUrl = "~/assets/civilian/evidence/" + imgloc;
                }
                cmd.CommandText = "select cfname,clname,gender,phone from jass where Id=@clid";
                cmd.Parameters.AddWithValue("@clid", cid);
                DataSet ds1 = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter();
                ad.SelectCommand = cmd;
                con.Open();
                ad.Fill(ds1);
                LabelCivilian.Visible = true;
                FormView2.DataSource = ds1;
                FormView2.DataBind();
                con.Close();
              
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}