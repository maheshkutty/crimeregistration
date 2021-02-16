<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="design.aspx.cs" Inherits="police_and_automation.design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        header{
            width:100%;
            height:75px;
            background-color:white;
            border-radius:5px;
        }
        img{
            height:75px;
            width:100px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <header>
        
          <img src="logo.gif" /></header>
        <div>
            <br />
            <br />
            <br />
            <br />
            
        </div>
        <div class="form-group">
    <label for="exa">Email address</label>
            <asp:TextBox ID="t1" name="exa" runat="server" class="form-control" />
   <!-- <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" />-->
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
    </form>
     <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
