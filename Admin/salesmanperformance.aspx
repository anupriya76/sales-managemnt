<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salesmanperformance.aspx.cs" Inherits="Admin_salesmanperformance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
      .style1
        {
            width: 1046px;
            height: 322px;
            top: -2px;
            text-align: center;
        }
        .style2
        {
            text-decoration: none;
            color: #000066;
        }
        .style4
        {
            color: #000066;
        }
        .style5
        {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style6
        {
            color: #FFFFFF;
        }
        .style7
        {
            color: #000066;
        }
        .style8
        {
            text-decoration: none;
            color: #000066;
            font-size: medium;
        }
        .style10
        {
            width: 321px;
            background-color: #FFFFCC;
            table-layout: fixed;
        }
        .style12
        {
            width: 101%;
            height: 323px;
        }
        .style14
        {
            width: 212px;
        }
        .style15
        {
            width: 209px;
        }
        .style16
        {
            width: 210px;
        }
        .style18
        {
            width: 321px;
            background-color: #FFFFCC;
            height: 77px;
        }
        .style19
        {
            width: 321px;
            background-color: #FFFFCC;
            height: 77px;
            table-layout: fixed;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style4" 
            
            style="background-color: #000066; background-repeat: no-repeat; width: 100%; margin-bottom: 20px; left: 0px; right: 0px;" 
            align="center">
            <span class="style7">&nbsp;</span><br />
            <br />
            <strong><span class="style5">Admin Dashboard </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    <div class="style1" 
        
        
        style="border-width: medium; border-color: #000000; margin: -4px; clip: rect(-3px, auto, -3px, auto); border-right-style: none; border-top-style: solid;">
        <table class="style12" frame="void" 
            
            
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 114%; right: -151px; top: 3px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;">
            <tr>
                <td class="style18" style="border-collapse: collapse" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" Font-Size="24px" 
            Height="20px" NavigateUrl="~/Admin/Addsalesman.aspx" Width="240px">Add Salesman</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="5"  
                    style=" padding-left:50px; margin-left:50px; border-collapse: collapse;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                SortExpression="id" />
                            <asp:BoundField DataField="username" HeaderText="username" 
                                SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="password" 
                                SortExpression="password" />
                            <asp:BoundField DataField="status" HeaderText="status" 
                                SortExpression="status" />
                            <asp:CommandField ButtonType="Button" SelectText="Check Performance" 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [salesmanlogin]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                         Text="Logout" />
                    </td>
            </tr>
            <tr>
                <td class="style19" 
                     style="border-collapse: collapse">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style8" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/Admin/viewsalesman.aspx">View Salesman</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style15" />
                </td>
            </tr>
            <tr>
                <td class="style10" style="border-collapse: collapse" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                        NavigateUrl="~/Admin/salesmanperformance.aspx">Performance</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
            <tr>
             <td class="style10" style="border-collapse: collapse" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                     NavigateUrl="~/Admin/disablesalesman.aspx">Disable Salesman</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
