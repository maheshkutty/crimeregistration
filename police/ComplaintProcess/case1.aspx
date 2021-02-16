<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case1.aspx.cs" Inherits="police_and_automation.police.ComplaintProcess.case1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../primary.css" rel="stylesheet" />
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
                <li><a href="../adminpolice.aspx" class="link1">Main Menu</a></li>
                <li><a href="../policesignout.aspx" class="link1" >Log Out</a></li>                
            </ul>
        </div>

    <form id="form1" runat="server">
        <div class="flex-container">
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">New Complaint </p>
                    <p class="card-text">You can view the new complaint and record the proceedings of complaint </p>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/ComplaintProcess/complaintprocess.aspx">Complaint Process</asp:HyperLink>
                </div>
            </div>
            </div>
                </div>
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Case Detail </p>
                    <p class="card-text">View the existing case </p>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/ComplaintProcess/caseview.aspx">View Case Detail</asp:HyperLink>
                </div>
            </div>
            </div>
                </div>
            <div class="flex-item">
            <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <p class="card-title">Update Existing Case detail </p>
                    <p class="card-text">This link help us to upadte existing case if you are not fill record new complaint please do that</p>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary" NavigateUrl="~/police/ComplaintProcess/updateprocess.aspx">Update Case Detail</asp:HyperLink>        
                </div>
            </div>
            </div>
          </div>
        </div>
    </form>
</body>
</html>
