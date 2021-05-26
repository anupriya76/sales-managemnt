using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\saledb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(role.SelectedItem.Value) == Convert.ToString("Admin"))
        {
            String logindata =("select * from adminlogin where Username = @username and Password=@password");            
            SqlCommand cmd = new SqlCommand(logindata,con);
            con.Open();
            cmd.CommandText = logindata;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {                
                Response.Write("Admin login");
                Response.Redirect("Dashboardadmin.aspx");
            }
            else
            {
                Response.Write("Denied");
            }
        }
        if (Convert.ToString(role.SelectedItem.Value) == Convert.ToString("Supervisor"))
        {
            String logindata = ("select * from supervisorlogin where username = @username and password=@password ");            
            SqlCommand cmd = new SqlCommand(logindata, con);
            con.Open();
            cmd.CommandText = logindata;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write(logindata);
            if (dr.HasRows)
            {
                string stat="";
                while (dr.Read())
                {
                    stat = dr[3].ToString();
                    Response.Write(stat);
                    if (stat.ToString() == "active")
                    {
                        Session["id"] =int.Parse(dr[0].ToString());
                        Response.Redirect("Supervisordashboard.aspx");
                        Response.Write("<script> alert('Supervisor login')</script> ");
                    }
                    else
                    {
                        Response.Write("<script> alert('denied')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>(alert('Incorred Username or Password.')</script>");
            }
        }
        if (Convert.ToString(role.SelectedItem.Value) == Convert.ToString("Salesman"))
        {
            String logindata = ("select * from salesman where name= @username");
            SqlCommand cmd = new SqlCommand(logindata, con);
            con.Open();
            cmd.CommandText = logindata;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            
                            Session["id"] = dr[0].ToString();
                            Session["sid"] = dr[3].ToString();
                            
                        }
                    }
                    Response.Write(int.Parse(Session["id"].ToString()));
            if(int.Parse(Session["id"].ToString()) >0)
            {
                Response.Redirect("dashboardsalesman.aspx");
            }
            else{
                Response.Write("<script> alert('Not a  Valid Salesman please check your details')</script>");
            }
                }
            
            
        }
              
}

 