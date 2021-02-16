using System;
using System.IO;
using System.Text;    
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


namespace police_and_automation.police
{
    public partial class nocdoc : System.Web.UI.Page
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
                int a = Convert.ToInt32(Session["id"]);
                int b = Convert.ToInt32(Session["pid"]);
                // HttpCookie cookie1 = Request.Cookies["police"];
                //int pid = Convert.ToInt32(cookie1["pid"]);
                // HttpCookie cookie = Request.Cookies["per"];
                //int rid = Convert.ToInt32(cookie["id"]);
               // Label1.Text = b.ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-dispostion","attachment:filename=Panel1.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            pnlnoc.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            string type = "pdf";
            string name1 = string.Format(@"{0}." + type, DateTime.Now.Ticks);
            System.IO.FileStream fs = new FileStream(Server.MapPath("~/assets/civilian/evidence/") + name1, FileMode.Create);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, fs);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";

            SqlCommand cmd = new SqlCommand();
            int a = Convert.ToInt32(Session["id"]);
            cmd.Connection = con;
            cmd.CommandText = "update rletter set rloc=@rloc where rid=@rid";
            cmd.Parameters.AddWithValue("@rid", a);
            cmd.Parameters.AddWithValue("@rloc", Server.MapPath("~/assets/civilian/evidence/") + name1);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            /*pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}