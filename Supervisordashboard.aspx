<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Supervisordashboard.aspx.cs" Inherits="Supervisordashboard" %>

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
            text-decoration:none;
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
                
                
                style=" margin-top:50px; border-collapse:collapse; text-decoration:none; height: 139px; width: 1285px;">
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            
                            
                            style="font-weight: 700; text-decoration:none; padding-bottom:-20px; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/supersupervisor.aspx">Supervisor</asp:HyperLink>
                        <br />
                        <hr style="width: 220px" />
                    </td>
                    <td rowspan="3">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                            BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                            onclick="Button1_Click" Text="Logout" />
                        </td>
                </tr>
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            
                            
                            
                            style="font-weight: 700; padding-bottom:-20px; text-decoration:none; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/salesmandashboard.aspx">Salesman</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            
                            
                            
                            
                            style="font-weight: 700; padding-bottom:-20px; text-decoration:none; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/superproduct.aspx">Products</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                <tr style=" border-collapse:collapse">
                    <td class="style3" style=" border-collapse:collapse">
                        <asp:HyperLink ID="HyperLink4" runat="server" 
                            
                            
                            
                            
                            style="font-weight: 700; padding-bottom:-20px; text-decoration:none; padding-top:10px; color: #000066; font-size: x-large;" 
                            NavigateUrl="~/supervisor/Per.aspx">Performance</asp:HyperLink>
                        <br />
                        <hr style="width: 231px" />
                    </td>
                </tr>
                </table>
    </div>
    </form>
</body>
</html>
