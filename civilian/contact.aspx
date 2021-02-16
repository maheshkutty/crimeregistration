<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="police_and_automation.civilian.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../primary.css" />
    <style type="text/css">
        .auto-style1 {
            width: 1172px;
            height: 571px;
        }
    </style>
</head>
<body>
    <div class="her">
         <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <div>
        <ul class="nav1" >
            <li><a href="reg.aspx" class="link1">Sign Up</a></li>
            <li><a class="link1" href="login.aspx">LOGIN</a></li>
            <li><a class="link1" href="contact.aspx">Contact Us</a></li>
            <li class="dropdown1">
                <a href="javascript:void(0)" class="dropbtn1 link1">Services</a>
                    <div class="dropdown-content1">
                       <a class="link1" href="complaintinfo.aspx">Complaint</a><br />
                       <a class="link1" href="">Noc Letter</a><br />
                       <a href="../GIS DATA/index.html" class="link1">Crime Map</a>
                    </div>
            </li>
            <li><a class="link1" href="aboutus.aspx">About Us</a></li>
            <li><a class="link1" href="Home1.aspx">Home</a></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" />
            <img alt="contact" class="auto-style1" src="../appdata/picture/contact.JPG" />
        </div>
    </form>
</body>
</html>
