using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class supervisor_viewsuper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        Label2.Text = GridView1.SelectedRow.Cells[1].Text;
        Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        Label4.Text = GridView1.SelectedRow.Cells[3].Text;
        ModalPopupExtender1.Show();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}