<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productsalesman.aspx.cs" Inherits="salesman_productsalesman" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
        .style20
        {
            width: 733px;
        }
        .style21
        {
            width: 746px;
        }
        .style22
        {
            width: 771px;
        }
        .style23
        {
            width: 802px;
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
            <strong><span class="style5">Salesman Dashboard </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    <div class="style1" 
        
        
        style="border-width: medium; border-color: #000000; margin: -4px; clip: rect(-3px, auto, -3px, auto); border-right-style: none; border-top-style: solid;">
        <table class="style12" frame="void" 
            
            
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 114%; right: -146px; top: 3px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;">
            <tr>
                <td class="style18" style="border-collapse: collapse" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" Font-Size="24px" 
            Height="20px" NavigateUrl="~/salesman/productsalesman.aspx" Width="240px">Products</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="4" align="center" 
                    style="border-collapse: collapse;" class="style23">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="mdate" HeaderText="mdate" SortExpression="mdate" />
                            <asp:CommandField ButtonType="Button" SelectText="Place Order" 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                         Text="Logout" />
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style19" 
                     style="border-collapse: collapse">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style8" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/salesman/salesmanviewsuper.aspx">Supervisor</asp:HyperLink>
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
                        NavigateUrl="~/salesman/salesmansales.aspx">Salesman</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
            <tr>
                <td class="style10" 
                     style="border-collapse: collapse">
        <strong>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style8" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/salesman/Per.aspx">Performance</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style15" />
                </td>
            </tr>
        </table>
    
    <asp:Panel ID="Panel1" runat="server" align ="center" class="style20" CssClass="modalPopup" style="display:none" >
    
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20">
        <tr>
            <td class="style22">
                Product Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Product Id</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Price</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Quantity</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Salesman Id</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
               Supervisor Id</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Place Order" onClick="Save" Width="96px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" />
            </td>
        </tr>
        <tr>
                <td class="style10" 
                     style="border-collapse: collapse">
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style8" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/salesman/Per.aspx">Performance</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style15" />
                </td>
            </tr>
    </table>
    </asp:Panel>
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="LinkButton1" CancelControlID="Button3" PopupControlID="Panel1"  runat="server">
        </ajaxToolkit:ModalPopupExtender>
    </div>
    </form>
</body>
</html>
