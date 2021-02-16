<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NOCmaking.aspx.cs" Inherits="police_and_automation.police.NOCmaking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
</head>
<body>
   <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
        <div>    
            <ul class="nav1">
                <li><a href="../adminpolice.aspx" class="link1" >Main Menu</a></li>   
            </ul>
        </div>
    <form id="form1" runat="server">
        <a class="btn btn-link"  data-toggle="collapse" aria-controls="rlettertype" href="#rlettertype" aria-expanded="false">CLICK to get request letter type</a>
        <a class="btn btn-link" data-toggle="collapse" aria-controls="rletterdesc" href="#rletterdesc" aria-expanded="false">Click to view request letter description</a>
        <div class="collapse" id="rlettertype">
            <div class="card card-body" ID="rletter1" runat="server">

            </div>
        </div>
        <div class="collapse" id="rletterdesc">
            <div class="card card-body" ID="rletter2" runat="server" >

            </div>
        </div>
        <div>
     Request Letter Content:<span><asp:TextBox ID="TextBox1" runat="server" Height="208px" Rows="10" TextMode="MultiLine" Width="491px"></asp:TextBox></span>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click"  />
        
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  
           
        
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/police/NOCmaking/nocdoc.aspx" Visible="False">Show The NOC Document</asp:HyperLink>
    </div>
            </form>
        <script src="../../Scripts/jquery-3.0.0.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
      </body>
</html>
