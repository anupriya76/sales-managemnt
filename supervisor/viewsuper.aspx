<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewsuper.aspx.cs" Inherits="supervisor_viewsuper" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            color: #FFFFFF;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: center;
            width: 348px;
            background-color: #FFFFCC;
        }
        .style4
        {
            width: 235px;
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
                
                
                style=" margin-top:50px; border-collapse:collapse; height: 139px; width: 1285px;">
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            
                            
                            style="font-weight: 700; text-decoration:none;padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/updatesuper.aspx">Update</asp:HyperLink>
                        <br />
                        <hr style="width: 220px" />
                    </td>
                    <td rowspan="2" style="margin-left:30px ;padding-left:40px" >
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
                                <asp:CommandField ButtonType="Button" SelectText="View" 
                                    ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [supervisor] WHERE ([EmpId] = @EmpId)">
                            <SelectParameters>
                                <asp:SessionParameter Name="EmpId" SessionField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
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
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            
                            
                            
                            style="font-weight: 700; text-decoration:none;padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/viewsuper.aspx">View</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                </table>
                <asp:Panel ID="Panel1" runat="server" align ="center" class="style20" CssClass="modalPopup"  >
    
    <table align="center" bgcolor="#CCFFCC" border="1" class="style20">
        <tr>
            <td class="style22">
                Employee Id</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Name</td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Phone Number</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Salesman</td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
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
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button3">
        </ajaxToolkit:ModalPopupExtender>
    </div>
    </form>
</body>
</html>
