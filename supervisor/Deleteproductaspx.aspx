<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deleteproductaspx.aspx.cs" Inherits="Deleteproductaspx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title> Delete Products</title>
    <style type="text/css">
    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        
        border: 3px solid #0DA9D0;
    }

        .style4
        {
            color: #000066;
        }
        .style7
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
        .style8
        {
            color: #000000;
            height: 245px;
        }
        .style12
        {
            width: 681px;
            }
        .style2
        {
            text-decoration: none;
            color: #000066;
        }
        .style14
        {
            width: 212px;
        }
        .style15
        {
            width: 352px;
            height: 28px;
            text-align: center;
        }
        .style16
        {
            width: 352px;
            text-align: center;
            height: 41px;
        }
        .style20
        {
            padding-bottom:20px;
            padding-top:20px;
            
            width: 372px;
        }
        .style21
        {
            text-align: left;
        }
        .style22
        {
            text-align: left;
            width: 154px;
        }
        .style23
        {
            width: 352px;
            text-align: center;
            height: 1px;
        }
        </style>
</head>
<body style="height: 149px; margin-bottom: 24px">
    <form id="form1" runat="server">
    <div>
    
        <div class="style4" 
            
            style="background-color: #000066; background-repeat: no-repeat; width: 100%; margin-bottom: 20px; left: 0px; right: 0px;" 
            align="center">
            <span class="style7">&nbsp;</span><br />
            <br />
            <strong><span class="style5">&nbsp;Delete Products </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    
    </div>
    <hr style="color: #000000; font-weight: 700; text-align: center" width="100%" />
    <table class="style8">
        <tr>
            <td bgcolor="#FFFFCC" class="style15" 
                
                style="border-collapse: collapse;" align="center">
                <strong style="text-align: center">
        <strong>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style2" 
            Font-Size="24px" Height="25px" Width="240px" NavigateUrl="~/Admin/addproduct.aspx">Add Product</asp:HyperLink>
        </strong>
                    <br />
                    <hr class="style14" />
        </strong>
            </td>
            <td class="style12" rowspan="4">
                <asp:Panel ID="Panel1" runat="server" Height="306px" style="padding-left: 41px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        style="margin-left: 39px; margin-top: 52px; ">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Product Id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="mdate" HeaderText="Manuf. Date" 
                                SortExpression="mdate">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField ButtonType="Button" HeaderText="Action" SelectText="Delete" 
                                ShowSelectButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" Height="10px" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                </asp:Panel  >
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFFCC" class="style15" 
                style="border-collapse: collapse;" align="center">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" NavigateUrl="~/Admin/allproduct.aspx">View Product</asp:HyperLink>
        </strong>
                    <br />
                    <hr class="style14" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFFCC" class="style16" 
                style="border-collapse: collapse;" align="center">
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" NavigateUrl="~/Admin/viewproduct.aspx"> UpdateProduct</asp:HyperLink>
                <br />
                    <hr class="style14" />
        </strong>
                    </td>
        </tr>
        <tr>
            <td bgcolor="#FFFFCC" class="style23" 
                
                style="border-collapse: collapse;" align="center">
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" 
                    NavigateUrl="~/Admin/Deleteproductaspx.aspx">Delete Product</asp:HyperLink>
                    <hr class="style14" />
        </strong>
                    </td>
        </tr>
        </table>
    <asp:Panel ID="Panel2" runat="server" class="style20"  CssClass="modalPopup" >
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20" >
        <tr>
            <td class="style22">
                Name</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Product Id</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Price</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Manuf. Date</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                &nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" onclick="Button2_Click" Text="Delete" Width="96px" />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" />
            </td>
        </tr>
    </table>
        
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel2" CancelControlID="Button1" 

BackgroundCssClass="modalBackground">
        </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="Panel3" runat="server"  Height="114px" HorizontalAlign="Center" 
        style="text-align: center; display:none; background-color: #CCFFCC ; " Width="614px"  >
        <br />
        <br />
        Do You Want To Delete Entry?<br />
        <br />
        <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" Text="Yes" 
            onclick="Button3_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#FFFFCC" Text="No" />
    </asp:Panel>
    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" TargetControlID="Button2" DisplayModalPopupID="ModalPopupExtender2" runat="server" />
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button2" PopupControlID="Panel3"  CancelControlID="Button4" 

BackgroundCssClass="modalBackground">
    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
