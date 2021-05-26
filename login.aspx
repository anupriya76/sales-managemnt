<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="logincss.css" type="text/css">
    <title>Login page</title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
<div class="page">
  <div class="container">
    <div class="left">
      <div class="login">Login AS A</div>
      <div class="eula"> <label for="role">Choose Role:	</label>
				
          <asp:DropDownList ID="role" runat="server">
              <asp:ListItem>You are...</asp:ListItem>
              <asp:ListItem>Admin</asp:ListItem>
              <asp:ListItem>Supervisor</asp:ListItem>
              <asp:ListItem>Salesman</asp:ListItem>
          </asp:DropDownList>
   </div>
	</div>
    <div class="right">
      <svg viewBox="0 0 300 280">
        <defs>
          <linearGradient
                          inkscape:collect="always"
                          id="linearGradient"
                          x1="20"
                          y1="193"
                          x2="300"
                          y2="193"
                          gradientUnits="userSpaceOnUse">
            <stop
                  style="stop-color:#F0DB4F;"
                  offset="0"
                   />
            <stop
                  style="stop-color:#6CB78A;"
                  offset="0.4"
                  />
            <stop
                  style="stop-color:#4EA217;"
                  offset="1"
                  />      
          </linearGradient>
        </defs>
        <rect x="15" y="100" rx="5" ry="150" width="270" height="4" fill="url(#linearGradient)"/>
      </svg>
       <svg ID="LG2" viewBox="0 0 300 280">
        <defs>
          <linearGradient
                          inkscape:collect="always"
                          id="linearGradient2"
                          x1="20"
                          y1="193"
                          x2="300"
                          y2="193"
                          gradientUnits="userSpaceOnUse">
            <stop
                  style="stop-color:#F0DB4F;"
                  offset="0"
                   />
            <stop
                  style="stop-color:#6CB78A;"
                  offset="0.4"
                  />
            <stop
                  style="stop-color:#4EA217;"
                  offset="1"
                  />      
          </linearGradient>
        </defs>
        <rect x="15" y="100" rx="5" ry="150" width="270" height="4" fill="url(#linearGradient2)"/>
      </svg>
      <div class="form">
        <label for="email" id="user">Email<br />
          <asp:TextBox ID="username" runat="server"></asp:TextBox>
          </label>
        &nbsp;
          <br />
        <label for="password" id="pass">Password</label>
          <asp:TextBox  ID="password" runat="server"></asp:TextBox>
          <br/>
&nbsp;<asp:Button ID="submit" runat="server" onclick="Button1_Click" Text="Submit" 
              Width="233px" />
       
        
      </div>
    </div>
      <br />
  </div>
</div>

    </form>
</body>
</html>
