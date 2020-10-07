using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.PerformanceData;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BILLTRACKERPROJECT
{
    public partial class registrationpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ruchidb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("insert into bill (@a,@b,@c,@d,@f,@g,@h,@i,@j)", con);
            //cmd.Parameters.AddWithValue("@a", TextBox8.Text);
            //cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@d", TextBox7.Text);
            //cmd.Parameters.AddWithValue("@f", TextBox4.Text);
            //cmd.Parameters.AddWithValue("@g", DropDownList1.Text);
            //cmd.Parameters.AddWithValue("@h", DropDownList2.Text);
            //cmd.Parameters.AddWithValue("@i", TextBox5.Text);
            //cmd.Parameters.AddWithValue("@j", TextBox6.Text);
            //cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data saved in database');</script>");
            //Response.Redirect("billingpage.aspx");
            }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ruchidb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into bill (@a,@b,@c,@d,@f,@g,@h,@i,@j)", con);
            cmd.Parameters.AddWithValue("@a", TextBox8.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox7.Text);
            cmd.Parameters.AddWithValue("@f", TextBox4.Text);
            cmd.Parameters.AddWithValue("@g", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@h", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@i", TextBox5.Text);
            cmd.Parameters.AddWithValue("@j", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data saved in database');</script>");
           
        }
    }
}