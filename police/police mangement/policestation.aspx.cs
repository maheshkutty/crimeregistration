using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace police_and_automation.police.police_mangement
{
    public partial class policestation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into pstation (psname,pstype,psstaff,psjail,psadd,psstreet,pslocal,pspin,pstation1)" +
                    "values(@psname,@pstype,@psstaff,@psjail,@psadd,@psstreet,@pslocal,@pspin,@pstation1)";
                cmd.Parameters.AddWithValue("@psname", txtName.Text);
                cmd.Parameters.AddWithValue("@pstype", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@psstaff",Convert.ToInt32 (txtStaff.Text));
                cmd.Parameters.AddWithValue("@psjail", Convert.ToInt32( txtJail.Text));
                cmd.Parameters.AddWithValue("@psadd", txtAdd.Text);
               // cmd.Parameters.AddWithValue("@psadd", txtAdd.Text);
                cmd.Parameters.AddWithValue("@psstreet", txtStreet.Text);
                cmd.Parameters.AddWithValue("@pslocal", txtLocal.Text);
                cmd.Parameters.AddWithValue("@pspin", Convert.ToInt32(txtPin.Text));
                cmd.Parameters.AddWithValue("@pstation1", txtSta.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
            }
            catch (Exception ex)
            {
                Label2.Text =  ex.Message;
            }
        }
    }
}