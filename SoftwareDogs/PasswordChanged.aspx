﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordChanged.aspx.cs" Inherits="SoftwareDogs.PasswordChanged" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <p class="style1">
        <asp:Image ID="imgHeader" runat="server" ImageUrl="~/Pix/SioftwareDogs.jpg" />
    </p>
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="style3">
        &nbsp;Password Successfully Changed</p>
    <p class="style1">
        &nbsp;
    </p>
    <div align="center">
    
        <asp:Button ID="btnDone" runat="server" Text="Done" onclick="btnDone_Click" />
    
    </div>
    
    </div>
    </form>
</body>
</html>
