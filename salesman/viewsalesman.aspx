<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewsalesman.aspx.cs" Inherits="Admin_viewsalesman" %>

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
        .style12
        {
            width: 101%;
            height: 323px;
        }
        .style14
        {
            width: 212px;
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
            <strong><span class="style5">salesman Dashboard </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    <div class="style1" 
        
        
        style="border-width: medium; border-color: #000000; margin: -4px; clip: rect(-3px, auto, -3px, auto); border-right-style: none; border-top-style: solid;">
        <table class="style12" frame="void" 
            
            
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 108%; right: -83px; top: 3px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;">
            <tr>
                <td class="style18" style="border-collapse: collapse" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" Font-Size="24px" 
            Height="20px" Width="240px" NavigateUrl="~/salesman/viewsalesman.aspx">View Details</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="4"  
                    style="border-collapse: collapse; margin-left:50px; padding-left:50px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" 
                        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                        CellSpacing="1" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="phone_number" HeaderText="phone_number" 
                                SortExpression="phone_number" />
                            <asp:BoundField DataField="supervisor_id" HeaderText="supervisor_id" 
                                SortExpression="supervisor_id" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [salesman] WHERE (([id] = @id) AND ([supervisor_id] = @supervisor_id))">
                        <SelectParameters>
                            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                            <asp:SessionParameter Name="supervisor_id" SessionField="sid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                         Text="Logout" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    </td>
            </tr>
            <tr>
                <td class="style19" style="border-collapse: collapse" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px">Update </asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
            <tr>
             <td class="style19" style="border-collapse: collapse" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                     NavigateUrl="~/salesman/Per.aspx">Sales record</asp:HyperLink>
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
