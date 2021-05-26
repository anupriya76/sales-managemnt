using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Deleteproductaspx : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        ModalPopupExtender2.Show();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        Label2.Text = GridView1.SelectedRow.Cells[1].Text;
        Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        Label4.Text = GridView1.SelectedRow.Cells[3].Text;
        Session["pid"] = Label1.Text;
        ModalPopupExtender1.Show();
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        String deletedata = "Delete from  product  where [id]=" + int.Parse(Label1.Text);
        Response.Write(deletedata);
        con.Open();
        SqlCommand cmd = new SqlCommand(deletedata,con);
        
        cmd.CommandText = deletedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Product : " + "'" + Label2.Text + "'" + " Has Been Deleted Successfully";
        SqlDataSource1.DataBind();
        GridView1.DataSource = null;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.SelectedIndex = -1;
    }
}