<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NOCstatus.aspx.cs" Inherits="police_and_automation.civilian.NOCstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title></title>
<link rel="stylesheet" href="../../primary.css" />
    <style>
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
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
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
    <h3 style="text-align:center">NOC History</h3>    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" >
            <Columns>
                <asp:BoundField DataField="rid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="rid" />
                <asp:BoundField DataField="rtype" HeaderText="TYPE" SortExpression="rtype" />
                <asp:BoundField DataField="rdate" DataFormatString="{0:d}" HeaderText="DATE" SortExpression="rdate" />
                <asp:BoundField DataField="rstatus" HeaderText="STATUS" SortExpression="rstatus" />
                <asp:CommandField HeaderText="Print NOC" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
       
        <br />
            </div>
            </div>
        <div>


            
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>


            
        </div>
        </form>
    <div class="footer">
        <p class="footer-align">&copy; Copyright 2019. All rights reserved</p>
    </div>    

</body>
</html>
