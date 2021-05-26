using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addproduct : System.Web.UI.Page
{
    
    string Sql = "INSERT INTO product(name,price,mdate) VALUES (@name, @price, @mdate)";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        if (IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand oSqlCommand = new SqlCommand(Sql, con);
        con.Open();
        
        SqlCommand cmd = new SqlCommand(Sql, con);
        oSqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
        oSqlCommand.Parameters.AddWithValue("@price", int.Parse(textbox3.Text));
        oSqlCommand.Parameters.AddWithValue("@mdate", Convert.ToDateTime(TextBox2.Text));
        oSqlCommand.ExecuteNonQuery();
        Response.Write("<script type='text/javascript'>alert('Your Order is notified to Supervisor');window.location.href='Adminproduct.aspx'; </script>");
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        }

    
}