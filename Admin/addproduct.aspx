<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
    <style type="text/css">
        #form1
        {
            margin-left:250px;
            text-align: center;
            width: 500px;
            background-color: #CCCCFF;
            padding-top:30px;
            padding-bottom:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
   
  <h1>Product Details</h1>
    <asp:Label ID="name" runat="server" style="font-size: large; font-weight: 700" 
        Text="Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<br />
    <asp:Label ID="mdate" runat="server" style="font-size: large; font-weight: 700" 
        Text="Manuf. date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" 
        runat="server" 
     ></asp:TextBox>
    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
        onclick="ImageButton1_Click" Height="20px" ImageUrl="~/Admin/cal1.jpg" 
        Width="37px" />
    <asp:Calendar ID="Calendar1" runat="server" 
        onselectionchanged="Calendar1_SelectionChanged" 
        SelectionMode="DayWeekMonth">
    </asp:Calendar>
    <h1>Other Details</h1>
    <asp:Label ID="label3" runat="server" style="font-size: large; font-weight: 700" 
        Text="Selling Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </input>
    <asp:TextBox ID="textbox3" runat="server" ></asp:TextBox>
    <br />
&nbsp;<br />
    <asp:Button ID="add" runat="server" onclick="Button1_Click" Text="ADD" />
  <input type="reset" value="Reset">
    </form>
</body>
</html>
