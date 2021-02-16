using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace police_and_automation.civilian
{
    public partial class nocdoc1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;
                cmd.Connection = con;
                int a = Convert.ToInt32(Session["rid"]);
                int b = Convert.ToInt32(Session["pid"]);
                // HttpCookie cookie1 = Request.Cookies["police"];
                //int pid = Convert.ToInt32(cookie1["pid"]);
                // HttpCookie cookie = Request.Cookies["per"];
                //int rid = Convert.ToInt32(cookie["id"]);
                Label1.Text = b.ToString();
                cmd.CommandText = "select pslocal,psstreet,pstation1,psname,pspin from pstation where pstation.ID =(select POLICE.psid from rletter, POLICE where POLICE.pid=@pid and rletter.rid=@rid)";

                cmd.Parameters.AddWithValue("@rid", a);
                cmd.Parameters.AddWithValue("@pid", b);
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    psname.InnerText = reader["psname"].ToString();
                    pslocal.InnerText = reader["pslocal"].ToString();
                    pstation1.InnerText = reader["pstation1"].ToString();

                }
                con.Close();



                con.Open();
                cmd.CommandText = "select * from jass where jass.id=(select rletter.id from rletter where rid=@rid)";

                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // rpdec.InnerText = reader["rletter.rpdesc"].ToString();
                    cfname.InnerText = reader["cfname"].ToString();
                    clname.InnerText = reader["clname"].ToString();
                    bname.InnerText = reader["bname"].ToString();
                    local.InnerText = reader["local"].ToString();
                    street.InnerText = reader["street"].ToString();
                    station.InnerText = reader["station"].ToString();
                    pincode.InnerText = reader["pincode"].ToString();
                    // rsubject.InnerText = reader["rletter.rtype"].ToString();
                }
                con.Close();
                con.Open();
                cmd.CommandText = "select rpdesc,rtype from rletter where rid=@rid";
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    rpdec.InnerText = reader["rpdesc"].ToString();
                    rsubject.InnerText = reader["rtype"].ToString();
                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}