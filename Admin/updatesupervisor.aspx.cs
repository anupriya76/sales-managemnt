using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class updatesupervisor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox1.Enabled = false;
        ModalPopupExtender1.Show();
    }
    protected void Save(object sender, EventArgs e)
    {

        String updatedata = "Update supervisor set name='" + TextBox5.Text + "', phone_number='" + Convert.ToString(TextBox6.Text) + "',salesman ='" + int.Parse(TextBox7.Text) + "' where EmpId=" + int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        int res = cmd.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataSource = null;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.SelectedIndex = -1;
        if (res == 1)
        {
            String updatedata1 = "Update supervisorlogin set username='" + Convert.ToString(TextBox5.Text) + "' where EmpId=" + int.Parse(TextBox1.Text);

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatedata1;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            Response.Write("<script type='text/javascript'>alert('Updated');window.location.href='updatesupervisor.aspx'; </script>");
            
        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('No changes occured. Please try again later.');window.location.href='updatesupervisor.aspx'; </script>");
         

        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session.Contents.RemoveAll();
        Response.Write("<script type='text/javascript'>alert('Logged out successfully');window.location.href='http://localhost:2043/sales/login.aspx'; </script>");
    }
}