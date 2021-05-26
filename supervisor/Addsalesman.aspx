<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addsalesman.aspx.cs" Inherits="Admin_Addsalesman" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            margin-left:250px;
            text-align: center;
            width: 528px;
            background-color: #CCCCFF;
            padding-top:30px;
            padding-bottom:50px;
        }
        
        .style2
        {
            font-size: large;
        }
        .style3
        {
            width: 280px;
            font-size: large;
            height: 55px;
        }
        .style4
        {
            height: 55px;
        }
        .style7
        {
            width: 280px;
            font-size: large;
            height: 47px;
        }
        .style8
        {
            height: 47px;
        }
        .style9
        {
            width: 280px;
            font-size: large;
            height: 50px;
        }
        .style10
        {
            height: 50px;
        }
        .style11
        {
            font-size: large;
            height: 55px;
        }
        .style12
        {
            width: 100%;
           
        }
        .style13
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Salesman Details</h1>
        <p>
            &nbsp;</p>
        <table class="style12">
            <tr>
                <td class="style3">
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="style2" Text="Name"></asp:Label>
                    </strong>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <strong>
                    <asp:Label ID="Label2" runat="server" CssClass="style2" Text="Phone Number"></asp:Label>
                    </strong>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <strong>
                    <asp:Label ID="Label3" runat="server" CssClass="style2" Text="Supervisor ID"></asp:Label>
                    </strong>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style13" 
                        DataSourceID="SqlDataSource1" DataTextField="EmpId" DataValueField="EmpId" 
                        Height="16px" Width="195px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [EmpId], [status] FROM [supervisorlogin] WHERE (([status] = @status) AND ([EmpId] = @EmpId))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="active" Name="status" Type="String" />
                            <asp:SessionParameter Name="EmpId" SessionField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style7" title="Username">
                    <strong>
                    <asp:Label ID="Label5" runat="server" CssClass="style2" Text="Username"></asp:Label>
                    </strong>
                </td>
                <td class="style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <strong>
                    <asp:Label ID="Label4" runat="server" CssClass="style2" Text="Password"></asp:Label>
                    </strong>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
