 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policelogin.aspx.cs" Inherits="police_and_automation.police.policelogin" EnableViewState="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="../Content/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="../primary.css" />
     <style>
        .card{
            box-shadow:10px 10px 5px grey;
            width:300px;
            height:400px;
        }
        .flex-container
        {
            display:flex;
            flex-flow:row wrap;
            justify-content:space-around;
            align-items:flex-start;
            margin:0px;
        }
        .flex-item
        {
            margin:10px;
        }
        .card:hover{
            
        }
        img{
            height:150px;
            width:200px;
            
        }
        .header-image
        {
            height:100px;
            width:100%;
        }
    </style>

    
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:48%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
     <div >
        <ul class="nav1">
            <li><a href="policereg.aspx" class="link1" >Sign Up</a></li>
            <li><a class="link1"  href="policelogin.aspx">Login</a></li>
            <li><a href="../GIS DATA/index.html" class="link1">Crime Map</a></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        <div class="flex-container">
            <div class="flex-item">
                <h1>Police Login</h1>
            <table class="auto-style1">
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Email is complusory"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="password is complusory"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-primary" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </div>
      </div>
        
    </form>
     <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
