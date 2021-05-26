<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewsupervisor.aspx.cs" Inherits="Admin_viewsupervisor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        .style24
        {
            width: 352px;
            height: 45px;
            text-align: center;
        }
        .style25
        {
            width: 352px;
            height: 48px;
            text-align: center;
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
            
            
            style="border-top: thin solid #000000; padding-top: 20px; position: relative; left: 0px; width: 100%; right: 0px; top: 5px; table-layout: auto; border-collapse: collapse; border-spacing: 0px;">
            <tr>
                <td class="style24" style="border-collapse: collapse" bgcolor="#FFFFCC" 
                    >
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style2" Font-Size="24px" 
            Height="20px" NavigateUrl="~/Admin/addsupervisor.aspx" Width="240px">Add Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style14" />
                </td>
                <td rowspan="4" align="center" 
                    style="border-collapse: collapse;">
                    &nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" 
                        runat="server" AutoGenerateColumns="False" 
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
                            <asp:CommandField ButtonType="Button" SelectText="View" 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [supervisor]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
                <td class="style25" 
                    s style="border-collapse: collapse" bgcolor="#FFFFCC">
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style2" 
            Font-Size="24px" NavigateUrl="~/Admin/viewsupervisor.aspx" Height="20px" Width="240px">View Supervisor</asp:HyperLink>
                    <br />
                    <hr class="style14" />
        </strong>
                </td>
            </tr>
            <tr>
                <td class="style15" style="border-collapse: collapse" bgcolor="#FFFFCC" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                        NavigateUrl="~/Admin/updatesupervisor.aspx">Update Supervisor</asp:HyperLink>
                    <br />
                    <hr class="style14" />
        </strong>
                </td>
            </tr>
            <tr>
                <td class="style24" style="border-collapse: collapse" bgcolor="#FFFFCC" >
        <strong>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/Admin/deletesupervisor.aspx">Delete Supervisor</asp:HyperLink>
                    <br />
                    <hr class="style14" />
        </strong>
                </td>
            </tr>

        </table>
       
    
    <asp:Panel ID="Panel1" runat="server" align ="center" class="style20" 
            CssClass="modalPopup" >
    
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20">
        <tr>
            <td class="style22">
                Supervisor Id</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Height="40px" Width="230px"></asp:Label></td>
        </tr>
        <tr>
            <td class="style22">
                 Name</td>
                <td><asp:Label ID="Label2" runat="server" Text="Label" Height="40px" Width="230px"></asp:Label></td>
        </tr>
        <tr>
            <td class="style22">
                Phone number</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" Height="40px" Width="230px"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="style22">
                No of Salesman</td>
            <td>
            <asp:Label ID="Label4" runat="server" Text="Label" Height="40px" Width="230px"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" />
            </td>
        </tr>
    </table>
    </asp:Panel>
     <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground" TargetControlID="LinkButton1" PopupControlID="Panel1"  CancelControlID="Button1"  runat="server">
    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
