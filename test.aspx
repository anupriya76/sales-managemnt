<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {}
        .style3
        {
            height: 394px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style3">
    
        <asp:Label ID="Label1" runat="server" BackColor="Red" CssClass="style1" 
            Text="Gift Gallery"></asp:Label>
        <asp:Image ID="Image1" runat="server" CssClass="style2" Height="59px" 
            ImageUrl="~/Admin/cal1.jpg" Width="75px" />
    
    </div>
    </form>
</body>
</html>
