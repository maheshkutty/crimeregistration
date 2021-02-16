<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpolice.aspx.cs" Inherits="police_and_automation.police.adminpolice" %>

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

</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
        <div>    
            <ul class="nav1">
                <li><a href="policesignout.aspx" class="link1" >Log Out</a></li>
                
            </ul>
        </div>
      
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            <br />
            

            
            <br />
           
            
        </div>
        <div class="flex-container">
        <div class="flex-item">
                    <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../83622-200.png" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">Complaint Checking</h3>
                            <p class="card-text">Update and check the complaint status</p>
                           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/police/ComplaintProcess/case1.aspx" CssClass="btn btn-primary">Complaint </asp:HyperLink>                
                         </div>
                         </div>
                      </div>
                   </div>
                    <div class="flex-item">
                     <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../images.png" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">NOC Checking</h3>
                            <p class="card-text">Upadte and NOC status</p>
                          <asp:HyperLink runat="server" ID="hyperlink2" NavigateUrl="~/police/NOCmaking/NOCprocess.aspx" CssClass="btn btn-primary" Text="NOC"></asp:HyperLink>

                         </div>
                       </div>
                     </div>
                   </div>
                <div class="flex-item">
                     <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../appdata/picture/refund.png" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">Assets Management</h3>
                            <p class="card-text">Add the new assets record and update existing assets record</p>
                          <asp:HyperLink runat="server" ID="hyperlink3" NavigateUrl="~/police/police mangement/assetsmain.aspx" CssClass="btn btn-primary" Text="CLICK ME"></asp:HyperLink>

                         </div>
                       </div>
                     </div>
                   </div>
            <div class="flex-item">
                     <div class="col-sm">
                       <div class="card">
                         <img class="card-img-top" src="../appdata/picture/data.jpg" alt="" />
                         <div class="card-body" >
                            <h3 class="card-title">Crime Stastics</h3>
                            <p class="card-text">View crime statstics </p>
                          <asp:HyperLink runat="server" ID="hyperlink4" NavigateUrl="~/police/police mangement/datastates.aspx" CssClass="btn btn-primary" Text="CLICK ME"></asp:HyperLink>

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
