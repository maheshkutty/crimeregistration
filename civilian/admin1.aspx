<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin1.aspx.cs" Inherits="police_and_automation.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            justify-content:flex-start;
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
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="../primary.css" />
</head>
<body>
    
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <div >
        <ul class="nav1">
            <li><a class="link1" href="signout.aspx">SIGNOUT</a></li>
            <li><a class="link1"  href="Home1.aspx">Home</a></li>
        </ul>
    </div>

    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         
            
               
            <br />
           
            
            <p>&nbsp;</p>
            <div class="flex-container">
                <div class="flex-item">
                    <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../83622-200.png" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">Complaint Registration</h3>
                            <p class="card-text">User can registerted for complaint</p>
                            <asp:HyperLink ID="HyperLink4" runat="server" class="btn btn-primary" NavigateUrl="~/civilian/Complaint/complaint.aspx">GO TO PAGE</asp:HyperLink>
                         </div>
                         </div>
                      </div>
                   </div>
                    <div class="flex-item">
                     <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../images.png" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">NOC Registration</h3>
                            <p class="card-text">Apply for NOC be ready with relevent documents</p>
                            <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-primary" NavigateUrl="~/civilian/NOCreg.aspx">GO TO PAGE</asp:HyperLink>

                         </div>
                       </div>
                     </div>
                   </div>
                  </div>
        </div>
    </form>
        <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
