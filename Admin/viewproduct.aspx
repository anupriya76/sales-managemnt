<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="viewproduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update product</title>
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
        .style9
        {
            width: 321px;
            background-color: #FFFFCC;
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
        .style17
        {
            width: 208px;
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
        .style20
        {
            width: 80%;
            height: 300px;
        }
        .style21
        {
            font-weight: bold;
            font-size: large;
        }
        .style22
        {
            font-weight: bold;
            font-size: large;
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style4" 
            
            style="background-color: #000066; background-repeat: no-repeat; width: 100%; margin-bottom: 20px; left: 0px; right: 0px;" 
            align="center">
            <span class="style7">&nbsp;</span><br />
            <br />
            U<strong><span class="style5"> Update Products </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    
    </div>
    <div class="style1" 
        
        
        style="border-width: medium; border-color: #000000; margin: -4px; clip: rect(-3px, auto, -3px, auto); border-right-style: none; border-top-style: solid;">
        <table class="style12" frame="void" 
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 100%; right: 0px; top: 5px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;">
            <tr>
                <td class="style18" style="border-collapse: collapse" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" Font-Size="24px" 
            Height="20px" NavigateUrl="~/Admin/addproduct.aspx" Width="240px">Add Product</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="4" align="center" 
                    style="border-collapse: collapse;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" GridLines="None" 
                        style="text-align: center; margin-bottom: 0px" Width="581px" 
                        AutoGenerateColumns="False" CellSpacing="1" DataKeyNames="id" 
                        DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Employee Id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="mdate" HeaderText="mdate" SortExpression="mdate" />
                            <asp:CommandField ButtonType="Button" SelectText="Edit" 
                                ShowSelectButton="True" />
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
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        onselecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [product]" UpdateCommand="update [product] Set [name]=@name, [mdate]=@mdate,[price]=@price where [id] =@id" DeleteCommand="Delete from [product] where [id]=@id" >
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style19" 
                    s style="border-collapse: collapse">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style8" 
            Font-Size="24px" NavigateUrl="~/Admin/allproduct.aspx" Height="20px" Width="240px">View Products</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style15" />
                </td>
            </tr>
            <tr>
                <td class="style10" style="border-collapse: collapse" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" NavigateUrl="~/Admin/viewproduct.aspx">Update Product</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
            <tr>
                <td class="style9" style="border-collapse: collapse" >
        <strong>
        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" NavigateUrl="~/Admin/Deleteproductaspx.aspx">Delete Product</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style17" />
                </td>
            </tr>
        </table>

    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server" align ="center" class="style20" CssClass="modalPopup" style="display:none" >
    
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20">
        <tr>
            <td class="style22">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Product Id</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Price</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Manuf. Date</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Update" onClick="Save" Width="96px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button2" 
>
    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
