using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.civilian
{
    public partial class complaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]==null)
            {
                //checking for session
               Response.Redirect("../login.aspx");
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
                Label1.Visible = true;
                Label1.Text = "connection";
                //con.Open();
                    string type1 = FileUpload1.PostedFile.ContentType;

                    cmd.CommandText = "insert into complaint(desc1,cbuild,cstreet,clocal,cstation,cdistrict,ctype,cdate,cdate1,ctime,cevd1,cpin,id,cstatus,pstation)values(@desc1,@cbuild,@cstreet,@clocal,@cstation,@cdistrict,@ctype,@cdate,@cdate1,@ctime,@cevd1,@cpin,@id,@cstatus,@pstation)";

                    cmd.Parameters.AddWithValue("@desc1", TextBox1.Text);

                    cmd.Parameters.AddWithValue("@cbuild", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@cstreet", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@clocal", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@cstation", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@cdistrict", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@cpin",Convert.ToInt32 (TextBox7.Text));
                    cmd.Parameters.AddWithValue("@cdate1", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@ctime", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@ctype", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@cdate", DateTime.Now);
                    int a;
                    a = Convert.ToInt32(Session["id"]);
                    cmd.Parameters.AddWithValue("@id",Convert.ToInt32( a));
                    cmd.Parameters.AddWithValue("@cstatus","Not Approved");
                    cmd.Parameters.AddWithValue("@pstation",DropDownList2.Text);
                //a++;
                //checking for file is empty or not
                if (FileUpload1.HasFile==true)
                {
                    //string name;
                    string type = FileUpload1.PostedFile.ContentType;

                    if (type == "image/jpeg" || type == "image/jpg")
                    {
                        type = "jpeg";
                        string name1 = string.Format(@"{0}." + type, DateTime.Now.Ticks);
                        Label1.Text = name1;
                        FileUpload1.SaveAs(Server.MapPath("~/assets/civilian/evidence/") + name1);
                        //string name = Server.MapPath("~/assets/civilian/evidence/") + FileUpload1.FileName;
                        cmd.Parameters.AddWithValue("@cevd1", Server.MapPath("~/assets/civilian/evidence/") + name1);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@cevd1", null);

                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@cevd1", "null");
                }
                    con.Open();
                    int s = cmd.ExecuteNonQuery();
                    con.Close();
                    if (s > 0)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Complaint is registered";

                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "complaint is not registered";
                    }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox7.Text = "";
            }
           
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "" + ex.Message;
            }
        }


        protected void date_check(object sender, EventArgs e)
        {
            string a = TextBox8.Text;
            //Label2.Visible = true;
            //Label2.Text = "fi";
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c < 0 || c == 0)
            {
                Label3.Visible = false;
            }
            else
            {
                TextBox5.Text = null;
                Label3.Visible = true;
                Label3.Text = "date should not exceed current date";
            }
        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = FileUpload1.PostedFile.ContentType;
            Label1.Text = a;
           // if (FileUpload1.PostedFile.ContentType == "jpeg" || FileUpload1.PostedFile.ContentType=="jpg")
            //{
                if(FileUpload1.PostedFile.ContentLength<=10245000)
                {
                    args.IsValid = true;
                }
            //}
            else
            {
                args.IsValid = false;
            }
        }

    }
}