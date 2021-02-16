using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace police_and_automation
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "hi";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            try
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                //to estblish connection with database
                con.ConnectionString = @"Data Source=DESKTOP-R083DVH\SQLEXPRESS;Initial Catalog=police;Integrated Security=True";
                con.Open();
                cmd.Connection = con;
                //Query to database
                cmd.CommandText = "select email from jass where email=@email1";
                SqlDataReader reader;
                cmd.Parameters.AddWithValue("@email1", TextBox8.Text);
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    //Checking for existing user
                    Label1.Visible = true;
                    Label1.Text = "you already registered";
                }
                else
                {
                    con.Close();
                    con.Open();
                    cmd.CommandText = "insert into jass (cfname,clname,gender,email,pass,bname,local,street,pincode,station,dob,phone)" +
                        "values(@cfname,@clname,@gender,@email,@pass,@bname,@local,@street,@pincode,@station,@dob,@phone)";
                    cmd.Parameters.AddWithValue("@cfname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@clname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
                    cmd.Parameters.AddWithValue("@bname", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@street", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@local", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@station", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@pincode", Convert.ToInt32(TextBox7.Text));
                    cmd.Parameters.AddWithValue("@email", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@pass", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@dob", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@phone",TextBox11.Text);
                    cmd.ExecuteNonQuery();
                    //HyperLink1.Visible = true;
                    con.Close();
                    Label1.Visible = true;
                    Label1.Text = "you are registered";
                }
            }
            catch (Exception ex)
            {
                Label2.Text =ex.Message;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        
        protected void date_changed(object sender, EventArgs e)
        {
            string a = TextBox10.Text;
            
            DateTime d = new DateTime();
            d = Convert.ToDateTime(a);
            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            //comapre current date with civilian date of birth
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

        protected void phone_checked(object sender, EventArgs e)
        {
            string a = TextBox11.Text;
            char[] b = a.ToCharArray();
            //  int c = Convert.ToInt32(b[0]);
            if (b[0].Equals('0'))
            {
                TextBox11.Text = null;
                Label4.Visible = true;
                Label4.Text = "Number Should not start with zero";

            }
            Label4.Visible = false;
        }
    }
}