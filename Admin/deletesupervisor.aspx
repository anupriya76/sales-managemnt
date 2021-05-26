<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletesupervisor.aspx.cs" Inherits="deletesupervisor" %>

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
            height: 14px;
        }
        .style10
        {
            width: 321px;
            background-color: #FFFFCC;
            table-layout: fixed;
            height: 16px;
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
            height: 1px;
        }
        .style19
        {
            width: 321px;
            background-color: #FFFFCC;
            table-layout: fixed;
            height: 6px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    
    
        <div class="style4" 
            
            style="background-color: #000066; background-repeat: no-repeat; width: 100%; margin-bottom: 20px; left: 0px; right: 0px; height: 112px;" 
            align="center">
            <span class="style7">&nbsp;</span><br />
            <br />
            <strong><span class="style5" style="padding-bottom: 10px">Admin Dashboard 
            <br />
            </span></strong>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager 
                        ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="EmpId" DataSourceID="SqlDataSource1" Width="716px" 
                        style= "margin-left:50px" BackColor="White" BorderColor="White" 
                        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" 
                                ReadOnly="True" SortExpression="EmpId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" 
                                SortExpression="Phone_number" />
                            <asp:BoundField DataField="Salesman" HeaderText="Salesman" 
                                SortExpression="Salesman" />
                            <asp:CommandField SelectText="Change Login Access" ShowSelectButton="True" 
                                ButtonType="Button" />
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
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [supervisor] WHERE [EmpId] = @original_EmpId AND [Name] = @original_Name AND [Phone_number] = @original_Phone_number AND [Salesman] = @original_Salesman" 
                        InsertCommand="INSERT INTO [supervisor] ([Name], [Phone_number], [Salesman]) VALUES (@Name, @Phone_number, @Salesman)" 
                        OldValuesParameterFormatString="original_{0}" 
                        onselecting="SqlDataSource1_Selecting" 
                        SelectCommand="SELECT * FROM [supervisor]  " 
                        
                        UpdateCommand="UPDATE [supervisor] SET [Name] = @Name, [Phone_number] = @Phone_number, [Salesman] = @Salesman WHERE [EmpId] = @original_EmpId AND [Name] = @original_Name AND [Phone_number] = @original_Phone_number AND [Salesman] = @original_Salesman">
                        <DeleteParameters>
                            <asp:Parameter Name="original_EmpId" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Phone_number" Type="String" />
                            <asp:Parameter Name="original_Salesman" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Phone_number" Type="String" />
                            <asp:Parameter Name="Salesman" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Phone_number" Type="String" />
                            <asp:Parameter Name="Salesman" Type="Int32" />
                            <asp:Parameter Name="original_EmpId" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Phone_number" Type="String" />
                            <asp:Parameter Name="original_Salesman" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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
                <td class="style10" 
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
                <td class="style19" style="border-collapse: collapse" align="center" 
                    >
        <strong>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Size="24px" Height="26px" Width="240px" 
                        NavigateUrl="~/Admin/updatesupervisor.aspx.cs">Update Supervisor</asp:HyperLink>
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
                        NavigateUrl="~/Admin/deletesupervisor.aspx.cs">Delete Supervisor</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style17" />
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
            <td class="style22">
                Current Status</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                <br />
                Do You Want to Disable Login of this Supervisor?&nbsp;<br />
                <br />
                &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" onclick="Button4_Click" Text="Disable" Width="96px" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" 
                    Height="46px" Text="Close" Width="96px" />
            </td>
        </tr>
    </table>
    </asp:Panel>
     <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground" TargetControlID="LinkButton1" PopupControlID="Panel1"  CancelControlID="Button3"  runat="server">
    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
