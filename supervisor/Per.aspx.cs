using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Per : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Write("<script type='text/javascript'>alert('Logged out successfully');window.location.href='http://localhost:2043/sales/login.aspx'; </script>");
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:2043/sales/Supervisordashboard.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string  da= TextBox1.Text;
        string da1 = TextBox2.Text;
        Session["date"] = da;
        Session["date1"] = da1;
        Response.Redirect("new.aspx" );
    }
}