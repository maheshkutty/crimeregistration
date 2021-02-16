<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="police_and_automation.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../primary.css" />
  
    <style type="text/css">
      img{
            height:100px;
            width:100%;
        }
      #form1
      {
          margin-top:5px;
      }
    </style>
    
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <div >
        <ul class="nav1">
            <li><a href="reg.aspx" class="link1">Sign Up</a></li>
            <li><a class="link1" href="login.aspx">LOGIN</a></li>
            <li><a class="link1" href="contact.aspx">Contact Us</a></li>
            <li class="dropdown1">
                <a href="javascript:void(0)" class="dropbtn1">Services</a>
                    <div class="dropdown-content1">
                       <a class="link1" href="complaintinfo.aspx">Complaint</a><br />
                       <a class="link1" href="">Noc Letter</a><br />
                        <a href="../GIS DATA/index.html" class="link1">Crime Map</a>
                    </div>
            </li>
            <li><a class="link1" href="aboutus.aspx">About Us</a></li>
            <li><a class="link1"  href="Home1.aspx">Home</a></li>
        </ul>
    </div>




    <form id="form1" runat="server">
        <h1 style="color:black; margin-left:450px">Civilian Login</h1>
        <div class="c1">
            <table>
                <tr>
                    <td>Email<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ToolTip="Valid Email">Complusory Email</asp:RequiredFieldValidator>
                        <br />

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>PASSWORD<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ToolTip="Valid Password" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="invalid password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-primary"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/civilian/reg.aspx" Visible="False">CLICK HERE for registration</asp:HyperLink>
       </div> 
    </form>
       <div class="footer">
           <p class="footer-align">&copy; Copyright 2019. All rights reserved</p>
       </div> 


</body>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</html>
