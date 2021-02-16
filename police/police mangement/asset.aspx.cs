using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace police_and_automation.police
{
    public partial class asset : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] == null)
            {
                Response.Redirect("../policelogin.aspx");
            }
        }
       public static string psid = "1";
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;
                cmd.CommandText = "select ID from pstation where psname=@psname";
                cmd.Parameters.AddWithValue("@psname", DropDownList2.Text);
                cmd.Connection = con;
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                   psid = reader["ID"].ToString();

                }

                con.Close();
                Label1.Visible = true;
                //Label1.Text = psid;
            }
            catch (Exception ex)
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
                Label1.Text = psid;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into assets1 (asname,ascat,ascount,asreq,psid) values (@asname,@ascat,@asco,@asreq,@psid)";
                int ascount, asreq;
                ascount = Convert.ToInt32(txtUnit.Text);
                asreq = Convert.ToInt32(txtReq.Text);
                cmd.Parameters.AddWithValue("@asname", txtName.Text);
                cmd.Parameters.AddWithValue("@ascat", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@asco", ascount);
                cmd.Parameters.AddWithValue("@asreq", asreq);

                cmd.Parameters.AddWithValue("@psid", Convert.ToInt32(psid));
                con.Open();
                cmd.ExecuteNonQuery();
               // Label1.Text = "record sucessfully updated";
                con.Close();
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

       
    }
}