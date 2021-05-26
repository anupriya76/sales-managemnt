<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new.aspx.cs" Inherits="supervisor_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Chart ID="Chart1" runat="server" AlternateText="No data exist" 
            DataSourceID="SqlDataSource1" onload="Chart1_Load">
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
            
            
            SelectCommand="SELECT pname, superid, quantity, date, sid FROM productorder WHERE (superid = @superid) AND (date BETWEEN @date1 AND @date2) AND (sid = @sid)">
            <SelectParameters>
                <asp:SessionParameter Name="superid" SessionField="sid" Type="Int32" />
                <asp:SessionParameter Name="date1" SessionField="date" />
                <asp:SessionParameter Name="date2" SessionField="date1" />
                <asp:SessionParameter Name="sid" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
