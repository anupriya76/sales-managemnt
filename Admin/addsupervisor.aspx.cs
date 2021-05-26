using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class addsupervisor : System.Web.UI.Page
{
    string Sql = "INSERT INTO supervisor(name,phone_number,salesman) VALUES (@name, @number, @salesman)";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand oSqlCommand = new SqlCommand(Sql, con);
        con.Open();

        SqlCommand cmd = new SqlCommand(Sql, con);
        oSqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
        oSqlCommand.Parameters.AddWithValue("@number",TextBox2.Text );
        oSqlCommand.Parameters.AddWithValue("@salesman", int.Parse(TextBox4.Text));
        int res= oSqlCommand.ExecuteNonQuery();
        
        if (res == 1)
        { 
            string sid;
            string qu = "select EmpId from supervisor where name=@name";
            SqlCommand q = new SqlCommand(qu, con);
            q.Parameters.AddWithValue("@name", TextBox1.Text);
            q.CommandText = qu;
            q.Connection = con;
            SqlDataReader data = q.ExecuteReader();
            if (data.HasRows)
            {
                sid = " ";
                while (data.Read())
                {
                    sid = data[0].ToString();
                }
                data.Close();
                String updatedata1 = "insert into supervisorlogin (EmpId,username,password) values(@empid,@username,@password)";

                SqlCommand cmd1 = new SqlCommand(updatedata1,con);
                cmd1.Parameters.AddWithValue("@empid", int.Parse(sid));
                cmd1.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@password", TextBox3.Text);
                cmd1.CommandText = updatedata1;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                Response.Write("<script type='text/javascript'>alert('Supervisor has been added Successfully.');window.location.href='adminsupervisor.aspx'; </script>");

            }
        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('OOpps.. try again .');window.location.href='adminsupervisor.aspx'; </script>");
            
        }
    }
}