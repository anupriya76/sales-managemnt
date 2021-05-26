using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class viewproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox5.Enabled = false;
        ModalPopupExtender1.Show();
    }
    protected void Save(object sender, EventArgs e)
    {

        
        String updatedata = "Update product set name='" + TextBox1.Text + "', price='" + TextBox6.Text + "', mdate='" + TextBox7.Text + "' where id=" + TextBox5.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        int res= cmd.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataSource = null;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.SelectedIndex = -1;
        if (res==1)
        {
            Response.Write("<script type='text/javascript'>alert('Details are  Updated.');window.location.href='allproduct.aspx'; </script>");
            
        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('No changes occoured Please try again.');window.location.href='allproduct.aspx'; </script>");
            

        }
        

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button_Click(object sender, EventArgs e)
    {

    }
    protected void Panel1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }
}