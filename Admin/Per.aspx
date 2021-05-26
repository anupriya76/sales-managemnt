<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Per.aspx.cs" Inherits="Admin_Per" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=TextBox1.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm/dd/yy",
                yearRange: '2021:2030'
            });
        });
        $(function () {
            $("#<%=TextBox2.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "mm/dd/yy",
                yearRange: '2021:2030'
            });
        });
    </script>
    <style type="text/css">
        .style1
        {
            margin-top:50px;
            
            text-align:center;
            width: 1183px;
            height: 579px;
        }
                       .style20
                       {
                           text-align: right;
                       }
                       .style21
        {
            background-color: #CCFFCC;
        }
        .style22
        {
            width: 91%;
            height: 193px;
        }
                       .style28
        {
            width: 346px;
        }
        .style25
        {
            text-align: left;
            background-color: #CCFFCC;
        }
        .style27
        {
            background-color: #FFFFCC;
        }
        .style30
        {
            
        }
                       </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div class="style1" >
    
        <asp:Chart ID="Chart1" runat="server" CssClass="style21" 
            DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" XValueMember="pname" YValueMembers="quantity">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [pname], [quantity] FROM [productorder]">
        </asp:SqlDataSource>
        <br />
        <br />
        
        <asp:Panel ID="Panel1"  style=" margin-left:300px;" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            CssClass="style21" Height="186px" Width="558px">
            <table class="style22">
                <tr>
                    <td class="style28">
                        Select date to filter Data&nbsp;&nbsp; From:-</td>
                    <td class="style25">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="style29" Height="40px" 
                            Width="297px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                        select date&nbsp; upto which you want filter:-
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="style30" Height="40px" 
                            Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style26" colspan="2">
                        <asp:Button ID="Button3" runat="server" CssClass="style27" Height="36px" 
                            onclick="Button3_Click" Text="Filter Data" Width="277px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    
                    <asp:Button ID="Button2" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                         Text="Home" CssClass="style20" onclick="Button2_Click"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                         Text="Logout" CssClass="style20" onclick="Button1_Click"  />
    
    </div>
    </form>
</body>
</html>
