using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class salesman_productsalesman : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
        
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox5.Text = Convert.ToString(Session["id"]);
        TextBox6.Text = Convert.ToString(Session["sid"]);
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox6.Enabled = false;
        TextBox5.Enabled = false;
        ModalPopupExtender1.Show();
    }
    protected void Save(object sender, EventArgs e)
    {
        String updatedata12 = "INSERT INTO productorder(pid,pname,sid,superid,quantity,date) VALUES(@pid,@name,@sid,@superid,@quantity,@orderdate)";
        con.Open();
        
        
        SqlCommand cmd = new SqlCommand(updatedata12,con);
        cmd.CommandText = updatedata12;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pid", int.Parse(TextBox2.Text));
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@sid", int.Parse(Session["id"].ToString()));
        cmd.Parameters.AddWithValue("@superid", int.Parse(Session["sid"].ToString()));
        cmd.Parameters.AddWithValue("@quantity", int.Parse(TextBox4.Text));
        cmd.Parameters.AddWithValue("@orderdate", DateTime.Now.Date.ToShortDateString()); 
        cmd.ExecuteNonQuery();
        Response.Write("<script type='text/javascript'>alert('Order Placed');window.location.href='http://localhost:2043/sales/salesman/productsalesman.aspx'; </script>");
    }

}