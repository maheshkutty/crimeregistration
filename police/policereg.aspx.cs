using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation.police
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True"; 
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select pemail from police where pemail=@pemail";
            cmd.Parameters.AddWithValue("@pemail", TextBox7.Text);
            SqlDataReader reader;
            con.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Label1.Text = "The Police is already registered";
            }
            else
            {
                con.Close();
                try {
                    // SqlDataReader reader = new SqlDataReader();
                    if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
                    {
                        cmd.CommandText = "insert into POLICE (pfname,plname,phone,padd,pdate,ptype,pemail,pass1)" +
                                "values(@pfname,@plname,@phone,@padd,@pdate,@ptype,@pemail1,@pass1)";
                        cmd.Parameters.AddWithValue("@pfname", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@plname", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@padd", TextBox4.Text);
                        //Label1.Text = TextBox5.Text;
                        cmd.Parameters.AddWithValue("@pdate", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@ptype", DropDownList1.Text);
                        cmd.Parameters.AddWithValue("@pemail1", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@pass1", TextBox8.Text);
                        con.Open();
                        int a;
                        a = cmd.ExecuteNonQuery();

                        if (a > 0)
                        {
                            Label1.Text = "your registration is sucessfully done";
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";   
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                        }
                    }
                    else
                    {
                        Label1.Text = "data is not added";
                    }
                    con.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("" + ex.Message);
                }

            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = args.Value;
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c<0||c==0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
        
        }
        protected void TextBox5_TextChanged1(object sender, EventArgs e)
        {
            string a = TextBox5.Text;
            //to checck the date of birth
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int c = DateTime.Compare(d, d1);
            if (c < 0 || c == 0)
            {
                Label2.Visible = false;
            }
            else
            {
                TextBox5.Text = null;
                Label2.Visible = true;
                Label2.Text = "date should not exceed current date";
            }
        }

        protected void phone_checked(object sender, EventArgs e)
        {
            string a = TextBox3.Text;
            char[] b = a.ToCharArray();
            //to check the valid number
                if (b[0].Equals('0') && b.Length!=10)
                {

                    TextBox3.Text = null;
                    Label3.Visible = true;
                    Label3.Text = "Number Should not start with zero";
                    TextBox3.Focus();

                }
                if(b.Length!=10)
            {
                TextBox3.Text = null;
                Label3.Visible = true;
                Label3.Text = "enter 10 digit number";
                TextBox3.Focus();
            }
            
            Label2.Visible = false;
        }
    }
}