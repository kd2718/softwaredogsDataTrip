<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="SoftwareDogs.Graph" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <p class="style1" align="center">
        <asp:Image ID="imgHeader" runat="server" ImageUrl="~/Pix/SioftwareDogs.jpg" 
            Height="480px" Width="640px" />
    </p>
   <title>Untitled Page</title>
    <style type="text/css">

        .style3
        {
            text-align: center;
            font-size: xx-large;
        }
    
        .style1
        {
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="style3">
        Graph</p>
    <p class="style1" align="center">
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Begin"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>1</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>1900</asp:ListItem>
        </asp:DropDownList>
    </p>
        <p class="style1" align="center">
            <asp:Label ID="Label2" runat="server" Text="End"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>1</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>2099</asp:ListItem>
        </asp:DropDownList>
    </p>
        <p class="style1" align="center">
            <asp:Label ID="Label3" runat="server" Text="Unit"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem>Home</asp:ListItem>
        </asp:DropDownList>
    </p>
        <p class="style1" align="center">
            <asp:Label ID="Label4" runat="server" Text="Sensor"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem>Front Yard</asp:ListItem>
        </asp:DropDownList>
    </p>
    <div align="center">
    
        <asp:Button ID="btnGraph" runat="server" Text="Graph It" 
            onclick="btnAdd_Click" />
    
    &nbsp;&nbsp;
    
        <asp:Button ID="btnDone" runat="server" Text="Done" onclick="btnDone_Click" />
    
    </div>
    <div align="center">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    
    </div>
    </form>
</body>
</html>
