<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policereg.aspx.cs" Inherits="police_and_automation.police.WebForm1"  EnableViewState="false"
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <meta name="viewport" content="width=device-width, intial-scale=1" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
      <script>
          function keypress(event)
          {   
            var c= event.which;
            if (c > 32 && c < 48)
            {
                return false;
            }
          }
          function emailverify(event)
          {
              
              var c = event.which;
              var x = document.getElementById("email").value;
             
              if (c == 64 && typeof emailverify.counter != 'undefined') {
                  return false;
              }
              else {
                  if (c == 64 && typeof emailverify.counter == 'undefined') {
                      emailverify.counter = 0;
                  }
              }
          }
          
    </script>
    <link rel="stylesheet" href="../primary.css" />
    <style type="text/css">
        .subt{
            margin:0px;
            text-align:center;
            color:#ffeb3a;
            font-weight:bold;
            }
        img{
            height:200px;
            width:100%;
        }
        h5{
            color:#ffeb3a;
        }
        .container{
            display:flex;
            flex-flow:column;    
            background-image:url("../appdata/Images/cover.JPG");
            background-size:cover;
            background-position:center;
        }
        ul{
            background-color:#ffeb3a;
            color:black;
            margin:0px;
            padding:0px;
            overflow:hidden;
        }  
         a:hover{
         color:black;
         text-decoration:none;
         background-color:#ffdd00;
         display:block;
        }
            .footer{
                 width:100%; 
                 background-color:#ffeb3a;
             }
            
            .flex-item{
            opacity:0.8;
            background-color:white;
            color:black; 
            margin-left:300px;
            border-radius:10px;
            }
    
            .her
            {
                height:200px;
                width:100%;
                background-image:url("banner.JPG");
                background-size:100% 200px;
                background-repeat:no-repeat;
                //position:relative;
               // background-position:center;
            }
            .main{
                margin-left:100px;
                margin-right:100px;
            }
            body
            {
                margin-left:100px;
                margin-right:100px;
            }
    </style>
    <link href="../primary.css" rel="stylesheet" />
</head>
<body>
<div class="her">
    <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
</div>
    <form id="form1" runat="server">    
        <div>
            <ul class="nav1">
                <li><a href="policereg.aspx" class="link1" >Sign Up</a></li>
                <li><a class="link1"  href="policelogin.aspx">Login</a></li>
                <li><a href="../GIS DATA/index.html" class="link1">Crime Map</a></li>
            </ul>
        </div>            
        <div class="container">
            <div>
                <h2 class="auto-style3 text-center subt">Police Registration Form</h2>
                <h5 class="subt">for new police registration </h5>
            </div>
            <div >   
                <asp:Label ID="Label1" runat="server" class="bg-warning" EnableViewState="False"></asp:Label>
                <table class="flex-item" >
                      <tr >
                          <td>
                                First name<span class="imp">*</span>
                           </td>
                          <td>
                              <asp:TextBox ID="TextBox1"  name="t1" class="form-control" runat ="server" EnableViewState="False"  onkeypress="return keypress(event)" AutoCompleteType="FirstName" ToolTip="enter first name do not add space"></asp:TextBox>
                          </td>
                          <td class="valid1">  
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Alphabet value accepted" ValidationExpression="^([a-zA-Z\s])+$" ForeColor="Red" CssClass="m-0" BorderColor="Red" SetFocusOnError="True" ></asp:RegularExpressionValidator> 
                           <br />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="m-0" runat="server" ControlToValidate="TextBox1" ErrorMessage="first name is complusory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                          </td>
                       </tr>
                      <tr class="tableh">
                          <td >Last Name<span class="imp">*</span></td>
                          <td ><asp:TextBox ID="TextBox2" name="t2" class="form-control" runat="server" EnableViewState="False" onkeypress="return keypress(event)" ToolTip="only alphabets without space"></asp:TextBox></td>
                          <td class="valid1"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="m-0" ErrorMessage="last name is complusory" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"  ErrorMessage="Only Alphabet value accepted" ValidationExpression="^([a-zA-Z\s])+$" ForeColor="Red" CssClass="m-0" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                      </tr>
                      <tr class="tableh">
                          <td>
                      <label for="t3">Phone Number<span class="imp">*</span></label></td>
                          <td>
                        <asp:TextBox ID="TextBox3" Font-Names="t3" class="form-control" runat="server" EnableViewState="False" OnTextChanged="phone_checked" AutoPostBack="true" ToolTip="only valid indian phone number"></asp:TextBox>
                   
                          </td>
                          <td class="valid1">
                              <br />
                              <asp:Label ID="Label3" runat="server" CssClass="m-0" ForeColor="Red" Visible="False"></asp:Label>
                          </td>
                      </tr>

                      <tr class="tableh">
                          <td>
                              Date Of join</td>
                          <td>
                              <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" OnTextChanged="TextBox5_TextChanged1" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                          </td>
                          <td class="valid1">
                              <br />
                              <asp:Label ID="Label2" runat="server" CssClass="valid1" ForeColor="Red" Visible="False"></asp:Label>
                          </td>
                      </tr>

                      <tr class="tableh">
                          <td>
                <div class="form-group">
                      <label for="t4">Address</label></div>
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox4" name="t4" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                          </td>
                          <td class="auto-style8">&nbsp;</td>
                      </tr>
                      <tr class="tableh">
                          <td>
                      <label for="t6">Post</label></td>
                          <td>
                        <asp:DropDownList ID="DropDownList1" name="t6" runat="server" CssClass="form-control">
                            <asp:ListItem>Police Inspector</asp:ListItem>
                            <asp:ListItem>Head Constable</asp:ListItem>
                            <asp:ListItem>Constable</asp:ListItem>
                        </asp:DropDownList>
                          </td>
                          <td class="auto-style8">&nbsp;</td>
                      </tr>
                      <tr class="tableh">
                          <td>
                      <label for="t7">Email<span class="imp">*</span></label></td>
                          <td>
                        <asp:TextBox ID="TextBox7" name ="t7" class="form-control" runat="server" TextMode="Email" EnableViewState="False" ToolTip="valid email" onkeypress="return emailverify(event)"></asp:TextBox>
                    
                          </td>
                          <td class="valid1"> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" CssClass="m-0 2" runat="server" ControlToValidate="TextBox7" ErrorMessage="enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                              <br />        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="m-0" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email is complusory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr class="tableh">
                          <td>
                      <label for="t8" class="auto-style6">Password<span class="imp">*</span></label></td>
                          <td>
                        <asp:TextBox ID="TextBox8" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                   
                          </td>
                          <td class="valid1"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" class="m-0" runat="server" ControlToValidate="TextBox8" ErrorMessage="password should have 1 capital word ,1 small char, 1 special char,1 digit" ValidationExpression="\w+([a-zA-Z]{1,})\w+([!@#$%^&amp;*~]{1,})\d{1,}" ForeColor="Red"></asp:RegularExpressionValidator>                        
                              <br />                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" class="m-0" ErrorMessage="password is complusory" ForeColor="Red"></asp:RequiredFieldValidator> </td>
                      </tr>
                      <tr class="tableh">
                          <td>
                              &nbsp;</td>
                          <td>            
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
                              <p id="counter"></p>
                          </td>
                          <td class="auto-style7">&nbsp;</td>
                      </tr>
                   </table>
            <br />
            
        </div>
            </div>      
    </form>
    <footer class="footer">

    </footer>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
        
</body>
</html>
