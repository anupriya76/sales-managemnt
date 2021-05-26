<%@ Page Language="C#" AutoEventWireup="true" CodeFile="superproduct.aspx.cs" Inherits="supervisor_superproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-decoration:none;
            text-align: center;
            width: 348px;
            background-color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div align="center" class="style1" 
                style="height: 148px; width: 100%; background-color: #000066;">
                <strong style="font-size: 50px; font-weight: 200; color: #FFFFFF;">
                <br />
                Supervisor Dashboard</strong></div>
            <table  class="style2" 
                
                
                style=" margin-top:50px; text-decoration:none; border-collapse:collapse; height: 139px; width: 1285px;">
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            
                            
                            style="font-weight: 700; text-decoration:none; padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/viewproduct.aspx">Update</asp:HyperLink>
                        <br />
                        <hr style="width: 220px" />
                    </td>
                    <td rowspan="4" style="margin-left:30px ;padding-left:40px" >
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" 
                            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                            CellSpacing="1" GridLines="None" 
                             >
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="price" HeaderText="price" 
                                    SortExpression="price" />
                                <asp:BoundField DataField="mdate" HeaderText="mdate" 
                                    SortExpression="mdate" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                            BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                            onclick="Button1_Click" Text="Logout"  />
                        </td>
                </tr>
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            
                            
                            
                            style="font-weight: 700; text-decoration:none; padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/allproduct.aspx">View</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink4" runat="server" 
                            
                            
                            
                            
                            style="font-weight: 700;text-decoration:none; padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/addproduct.aspx">Insert</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            
                            
                            
                            
                            style="font-weight: 700; text-decoration:none; padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/Deleteproductaspx.aspx">Delete</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                </table>
    </div>
    </form>
</body>
</html>
