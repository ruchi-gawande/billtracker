using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BILLTRACKERPROJECT
{
    public partial class billingpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ruchidb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from billu where billstatus='unpaid'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ruchidb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into billu values(@billtitle , @billcategory , @billamount , @dateofentry , @billduedate , @billpaymentmethod ,@billstatus)", con);
            cmd.Parameters.AddWithValue("@billtitle", TextBox2.Text);
            cmd.Parameters.AddWithValue("@billcategory", DropDownList1.Text);

            cmd.Parameters.AddWithValue("@billamount", TextBox3.Text);
            cmd.Parameters.AddWithValue("@dateofentry", TextBox4.Text);
            cmd.Parameters.AddWithValue("@billduedate", TextBox5.Text);

            cmd.Parameters.AddWithValue("@billpaymentmethod", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@billstatus", DropDownList3.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('data saved successfully');</script>");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        

        }
    }
}