<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatesupervisor.aspx.cs" Inherits="updatesupervisor" %>

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
            <strong><span class="style5">Admin Dashboard </span></strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>
            <br class="style6" />
        </div>
    
    </div>
    <div class="style1" 
        
        
        style="border-width: medium; border-color: #000000; margin: -4px; clip: rect(-3px, auto, -3px, auto); border-right-style: none; border-top-style: solid;">
        <table class="style12" frame="void" 
            
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 100%; right: 0px; top: 5px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;" 
            width="100%">
            <tr>
                <td class="style18" style="border-collapse: collapse" align="center" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" Font-Size="24px" 
            Height="20px" NavigateUrl="~/Admin/addsupervisor.aspx" Width="240px">Add Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="4" align="center" 
                    style="border-collapse: collapse;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="EmpId" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" 
                                ReadOnly="True" SortExpression="EmpId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" 
                                SortExpression="Phone_number" />
                            <asp:BoundField DataField="Salesman" HeaderText="Salesman" 
                                SortExpression="Salesman" />
                            <asp:CommandField ButtonType="Button" SelectText="Update" 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [supervisor]"></asp:SqlDataSource>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                        onclick="Button1_Click" Text="Logout" />
                    </td>
            </tr>
            <tr>
                <td class="style19" 
                    s style="border-collapse: collapse" align="center">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style8" 
            Font-Size="24px" NavigateUrl="~/Admin/viewsupervisor.aspx" Height="20px" Width="240px">View Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style15" />
                </td>
            </tr>
            <tr>
                <td class="style10" style="border-collapse: collapse" align="center" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                        NavigateUrl="~/Admin/updatesupervisor.aspx">Update Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style16" />
                </td>
            </tr>
            <tr>
                <td class="style9" style="border-collapse: collapse" align="center" >
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/Admin/deletesupervisor.aspx">Delete Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style17" />
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" align ="center" class="style20" CssClass="modalPopup" style="display:none"  >
    
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20">
        <tr>
            <td class="style22">
                Employee Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Phone Number</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                No of Salesman</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Update" onClick="Save" Width="96px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" onclick="Button3_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button3" 
>
    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
