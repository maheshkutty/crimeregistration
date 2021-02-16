<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signout.aspx.cs" Inherits="police_and_automation.signout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/civilian/login.aspx">Click Here TO login</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/civilian/Home1.aspx">Go To Home Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
