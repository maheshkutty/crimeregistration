<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assetsmain.aspx.cs" Inherits="police_and_automation.police.police_mangement.assetsmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <style>
        .card{
            box-shadow:10px 10px 5px grey;
            width:300px;
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
    </style>
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
        <div>    
            <ul class="nav1">
                <li><a href="../policesignout.aspx" class="link1" >Log Out</a></li>  
                <li><a href="../adminpolice.aspx" class="link1">Main Menu</a></li>
            </ul>
        </div>
    <form id="form1" runat="server">
        <div class="flex-container">
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">View Assets Record </p>
                    <p class="card-text">You can view the assets record </p>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/police mangement/viewasset.aspx">Click Me</asp:HyperLink>
                </div>
            </div>
            </div>
                </div>
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Add New Assets</p>
                    <p class="card-text">Add new assets to police database if you want to update the assets record dont click on this button </p>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/police mangement/asset.aspx">Click Me</asp:HyperLink>
                </div>
            </div>
            </div>
                </div>
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Update Existing Assets Record </p>
                    <p class="card-text">Update Existing Record before updating record please visit view assets page to get assets ID</p>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/police mangement/updateassets.aspx">Click Me</asp:HyperLink>        
                </div>
            </div>
            </div>
          </div>
        </div>
    </form>
</body>
</html>
