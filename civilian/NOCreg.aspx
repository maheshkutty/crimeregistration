<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NOCreg.aspx.cs" Inherits="police_and_automation.civilian.NOCreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      .flex-container{
            display:flex;
            flex-flow:row wrap;
            justify-content:flex-start;
            align-items:flex-start;
            margin:0px;
        }
        .complaintlink{
            background-color:#ffeb3a;
            width:300px;
            color:black;
        }
        .flex-item{
            margin:10px;

        }
        .complainttab{
            list-style-type:none;
            width:300px;
        }
        .cmplnt
        {
            width:300px;
            color:black;
            text-decoration:none;
        }
        .cmplnt:hover
        {
            width:300px;
            color:black;
            text-decoration:none;
            background-color: #ffdd00;
        }
        li{
            width:300px;
            margin-bottom:5px;
            height:50px;
            text-align:center;
        }
        li:hover
        {
            width:300px;
            height:50px;
            background-color:#ffdd00;
        }
    </style>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../primary.css" rel="stylesheet" />
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <h1 class="text-center">NOC Request Letter </h1>
    <form id="form1" runat="server">
        <div class="flex-container">
        <div class="flex-item complaintlink">
            <ul class="complainttab">
              <li><asp:HyperLink NavigateUrl="~/civilian/admin1.aspx" runat="server" CssClass="cmplnt" Text="Main Menu" Font-Bold="true"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/civilian/NOCreg.aspx" Text="NOC Registration" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/civilian/NOCstatus.aspx" Text="NOC History" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
            </ul>
       </div>
        <div class="flex-item">

            <table>
                <tr>
                    <td>Type<span class="imp">*</span></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Festival</asp:ListItem>
                            <asp:ListItem>Meetings</asp:ListItem>
                            <asp:ListItem>Games</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="valid1">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Description<span class="imp">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Columns="10" Rows="10" TextMode="MultiLine" Width="379px" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="type description" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="" Visible="false" CssClass="sucessreg"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <table>
            </table>

        </div>
            </div>
    </form>
        <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
        <footer>
        <div class="footer">
        <p class="footer-align">&copy; Copyright 2019. All rights reserved</p>
    </div>    
    </footer>

</body>


</html>
