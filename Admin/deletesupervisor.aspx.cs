using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class deletesupervisor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        Label2.Text = GridView1.SelectedRow.Cells[1].Text;
        Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        Label4.Text = GridView1.SelectedRow.Cells[3].Text;
        String selectdata = "select * from supervisorlogin where [EmpId]=" + int.Parse(Label1.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand(selectdata, con);
        cmd.CommandText = selectdata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            string stat = "";
            while (dr.Read())
            {
                stat = dr[3].ToString();
              
            }

            Label5.Text = stat;
        }
        Session["pid"] = Label1.Text;
        ModalPopupExtender1.Show();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String selectdata = "select * from supervisorlogin where [EmpId]=" + int.Parse(Label1.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand(selectdata, con);
        cmd.CommandText = selectdata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            string stat="";
            while (dr.Read())
            {
                stat = dr[3].ToString();
                
            }
            dr.Close();
            if (stat.ToString() == "active")
            {
                String updata = "update  supervisorlogin set status='denied' where [EmpId]=" + int.Parse(Label1.Text);
               
                SqlCommand cmd1 = new SqlCommand(updata, con);
                cmd1.CommandText = updata;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                Response.Write("<script type='text/javascript'>alert('Login Denied');window.location.href='Adminsupervisor.aspx'; </script>");
                
            }
            else
            {
                String updata1 = "update  supervisorlogin set status='active' where [EmpId]=" + int.Parse(Label1.Text);
                
                SqlCommand cmd2 = new SqlCommand(updata1, con);
                cmd2.CommandText = updata1;
                cmd2.Connection = con;
                cmd2.ExecuteNonQuery();
                Response.Write("<script type='text/javascript'>alert('Login Activated');window.location.href='Adminsupervisor.aspx'; </script>");
                
            }
        }
    }
}