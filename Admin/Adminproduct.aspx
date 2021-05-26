﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminproduct.aspx.cs" Inherits="Admindashboard" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
        .style20
        {}
        .style21
        {}
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Chart 
                        ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                        Palette="Pastel" CssClass="style20 style21" Height="281px" Width="589px">
                        <series>
                            <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" 
                                Name="Series1" XValueMember="pname" YValueMembers="quant">
                                <EmptyPointStyle BorderColor="0, 64, 64" Color="0, 0, 64" />
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend Name="Legend1" Title="Sale">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Sales Performance" 
                                Font="Microsoft Sans Serif, 16pt">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT pname, SUM(quantity) AS quant FROM productorder GROUP BY pname">
                    </asp:SqlDataSource>
                    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" 
                        BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Height="37px" 
                        onclick="Button1_Click" Text="Logout" />
                    </td>
            </tr>
            <tr>
                <td class="style19" 
                    style="border-collapse: collapse">
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
            Font-Size="24px" Height="20px" Width="240px" 
                        NavigateUrl="~/Admin/Deleteproductaspx.aspx">Delete Product</asp:HyperLink>
                    <br />
        </strong>
                    <hr class="style17" />
                </td>
            </tr>
        </table>

    </div>
    
    </form>
</body>
</html>
