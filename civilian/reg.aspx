<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="police_and_automation.reg" %>

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
    </style>
    <script>
        function keypress(event)
        {
            
            var c= event.which;
            //var charcode = event.keycode;
            if (c > 32 && c < 48)
            {
                 return false;
               
            }
        }
    </script>
  
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
                       <a class="link1" href="complaintinfo.aspx">Complaint</a>
                       <a class="link1" href="">Noc Letter</a><br />
                        <a href="../GIS DATA/index.html" class="link1">Crime Map</a>
                    </div>
            </li>
            <li><a class="link1" href="aboutus.aspx">About Us</a></li>
            <li><a class="link1" href="Home1.aspx">Home</a></li>
        </ul>
    </div>
   <asp:Label ID="Label1" runat="server" Text="" Visible="false" CssClass="sucessreg"></asp:Label>
    <form id="form1" runat="server">
        <h1 class="c1 header">Civilian Registration Form</h1>
        <div class="c1">

           

            <table>
                <tr>
                    <td>First Name<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" onkeypress="return keypress(event)"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is complusory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only alphabet is accepted" ValidationExpression="^([a-zA-Z\s])+$" ControlToValidate="TextBox1" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" onkeypress="return keypress(event)"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is complusory" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only alphabet is accepted" ValidationExpression="^([a-zA-Z\s])+$" ControlToValidate="TextBox2" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender<span class="imp">*</span></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="valid1">
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="check gender " ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td>Date Of Birth<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" TextMode="Date" CssClass="form-control" OnTextChanged="date_changed" AutoPostBack="true"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td>Buliding Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" onkeypress="keypresshandler1(event)" ></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only alphanumeric is accepted" ValidationExpression="^([a-zA-Z0-9\s])+$" ControlToValidate="TextBox3" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Street Name</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="^([a-zA-Z0-9\s])+$" ErrorMessage="Only alphanumeric is accepted"  ControlToValidate="TextBox4" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Locality</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  ValidationExpression="^([a-zA-Z0-9\s])+$" ErrorMessage="Only alphanumeric is accepted"  ControlToValidate="TextBox5" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Station</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="only alphanumeric value" ForeColor="Red" ValidationExpression="^([a-zA-Z\s])+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Pin Code<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Only Digit is valid" ValidationExpression="\d{6}" ControlToValidate="TextBox7" ForeColor="red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="phone_checked" CssClass="form-control" AutoPostBack="true"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox11" ErrorMessage="Only numeric values accpected" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>EMAIL<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ErrorMessage="Email is complusory" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>PASSWORD<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" AutoCompleteType="Disabled" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ForeColor="Red" ErrorMessage="Password is complusory" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="67px" CssClass="btn btn-primary" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

           

        </div>
        
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
       
    </form>
    <footer class="footer">

    </footer>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
