using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace police_and_automation.police.police_mangement
{
    public partial class missingobject : System.Web.UI.Page
    {
        public static string psid = "1";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into mobject (mname,mcat,mdate,psid) values(@mname,@mcat,@mdate,@psid)";
                cmd.Parameters.AddWithValue("@mname",TextBox1.Text);
                cmd.Parameters.AddWithValue("@mcat",DropDownList3.Text);
                cmd.Parameters.AddWithValue("@mdate",TextBox3.Text);
                cmd.Parameters.AddWithValue("@psid",Convert.ToInt32(psid));
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "record sucessfully";
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void date_changed(object sender, EventArgs e)
        {
            // string a = e.ToString();
            string a = TextBox3.Text;
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c<0 || c==0)
            {
                Label2.Visible = false;

            }
            else
            {
                TextBox3.Text = null;
                Label2.Visible = true;
                Label2.Text = "date should be less than current year";
            }


        }
    }
}