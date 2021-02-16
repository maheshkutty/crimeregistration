<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nocdoc1.aspx.cs" Inherits="police_and_automation.civilian.nocdoc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body{
            margin-left:100px;
            margin-right:100px;
        }
        .rcid{
            text-decoration:solid;
            text-align:center;
        }
        .cdesc{
            
            text-align:right;
        }
        .pstation{
            text-align:left;
        }
        .rsubject{
            text-align:center;

        }
        .rdec{
            margin-left:100px;
        }
        .rend{
            text-align:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlnoc" runat="server">
        <div class="divexcel">
    <p ID="rcid" class="rcid" runat="server">123</p>
    <div ID="cdesc" class="cdesc" runat="server">
        <span ID="cfname" class="mb-0 text-uppercase" runat="server"></span>
        <span ID="clname" class="mb-0 text-uppercase" runat="server"></span>
        <p ID="bname" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="local" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="street" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="station" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="pincode" class="mb-0 text-capitalize" runat="server"></p>
    </div>
    <div ID="pstation" class="pstation" runat="server">
        <p>TO,</p>
        <p ID="psname" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="pslocal" class="mb-0 text-capitalize" runat="server"></p>
        <p ID="pstation1" class="mb-0 text-capitalize" runat="server"></p>
    </div>
    <p ID="rsubject" class="rsubject" runat="server"></p>
    <div ID="rpdec" class="rdec" runat="server">
        
    </div>
    <div ID="rend" class="rend" runat="server">
        <p>regard</p>
        <p ID="sign" runat="server"></p>

    </div>
            </div>

            </asp:Panel>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="print" OnClientClick="javascript:window.print()"/>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>

        </div>
    </form>
</body>
</html>
