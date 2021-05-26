using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Addsalesman : System.Web.UI.Page
{
    string Sql = "INSERT INTO salesman(name,phone_number,supervisor_id) VALUES (@name, @number, @superid)";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sid;
        SqlCommand oSqlCommand = new SqlCommand(Sql, con);
        con.Open();

        SqlCommand cmd = new SqlCommand(Sql, con);
        oSqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
        oSqlCommand.Parameters.AddWithValue("@number",TextBox2.Text );
        oSqlCommand.Parameters.AddWithValue("@superid", int.Parse(DropDownList1.SelectedValue.ToString()));
        int res= oSqlCommand.ExecuteNonQuery();
        
        if (res == 1)
        {
                string qu = "select * from salesman where name=@name";
            Response.Write(qu);
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
                    String updatedata1 = "insert into salesmanlogin (id,username,password) values(@sid,@username,@password)";
                    SqlCommand cmd1 = new SqlCommand(updatedata1, con);
                    cmd1.Parameters.AddWithValue("@sid", int.Parse(sid));
                    cmd1.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@password", "sup" + DropDownList1.SelectedValue.ToString());


                    cmd1.CommandText = updatedata1;
                    cmd1.Connection = con;
                    
                    cmd1.ExecuteNonQuery();
    
                    string qu1 = "SELECT COUNT(id) AS Expr1 FROM salesman GROUP BY supervisor_id HAVING (supervisor_id =" + int.Parse(DropDownList1.SelectedValue.ToString()) + " )";
                    SqlCommand cmd2 = new SqlCommand(qu1, con);
                    cmd2.CommandText = qu1;
                    cmd2.Connection = con;
                    SqlDataReader dr1 = cmd2.ExecuteReader();
                    if (dr1.HasRows)
                    {
                        while (dr1.Read())
                        {
                            int num = int.Parse(dr1[0].ToString());
                            Session["num"] = num;

                           
                           
                            
                        }
                        dr1.Close();
                        string qu2 = "update supervisor set salesman= " + int.Parse(Session["num"].ToString()) + " where EmpId= " + int.Parse(DropDownList1.SelectedValue.ToString());
                        SqlCommand cmd3 = new SqlCommand(qu2, con);
                        cmd3.CommandText = qu2;
                        cmd3.Connection = con;
                        cmd3.ExecuteNonQuery();
                        Session.Clear();
                        Response.Write("<script type='text/javascript'>alert('Salesman Added successfully.');window.location.href='salesmandashboard.aspx'; </script>");
                    }
                    
                }
            
        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('OOpps.. try again.');window.location.href='salesmandashboard.aspx'; </script>");
            
        }
    }
  }
