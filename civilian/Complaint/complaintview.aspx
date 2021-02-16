<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complaintview.aspx.cs" Inherits="police_and_automation.civilian.Complaint.complaintview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="../../primary.css" />
    <style>
        .flex-container{
            display:flex;
            flex-flow:row wrap;
            justify-content:flex-start;
            align-items:flex-start;
            margin:0px;

        }
        .flex-item{
            margin:10px;
        }
        .complainttab{
            list-style-type:none;
            width:300px;
        }
        .complaintlink
        {
            background-color:#ffeb3a;
            width:300px;
            color:black;
            border:1px;
            border-radius:10px;
        }
        .cmplnt
        {
            color:black;
            width:300px;
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
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/civilian/Complaint/complaint.aspx" Font-Bold="True" CssClass="cmplnt">New Registration </asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/civilian/Complaint/complaintview.aspx" Font-Bold="True" CssClass="cmplnt">Complaint History</asp:HyperLink></li>
        </ul>
    </div>
        <div class="flex-item">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    
                    <asp:BoundField DataField="cid" HeaderText="Complaint ID" SortExpression="cid" />
                    <asp:BoundField DataField="cdate" HeaderText="Date" SortExpression="cdate" DataFormatString="{0:d}"  />
                    <asp:BoundField DataField="ctype" HeaderText="Type" SortExpression="ctype" />
                    <asp:BoundField DataField="cstatus" HeaderText="Status" SortExpression="cstatus" />
                    
                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                    
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [cid], [cdate], [ctype], [cstatus] FROM [complaint]"></asp:SqlDataSource>

        </div>
            </div>

        <asp:Label ID="showm" runat="server" Text="Label" Visible="false" CssClass="sucessreg"></asp:Label>

        <asp:FormView ID="FormView1" runat="server" Visible="False" >
            <ItemTemplate>
                <p>Complaint ID:<%# Eval("cid") %></p>
                <p>Complaint Type:<%# Eval("ctype") %></p>
                <p>Complaint Registration Date:<%# Eval("cdate") %></p>
                <p>Date Of Crime:<%# Eval("cdate") %></p>
                <p>Buliding Name:<%# Eval("cid") %></p>
                <p>Locality:<%# Eval("clocal") %></p>
                <p>Street:<%# Eval("cstreet") %></p>
                <p>Station:<%# Eval("cstation") %></p>
                <p>Complaint Status:<%# Eval("cstatus") %></p>
                <p>Complaint Description:<%# Eval("desc1") %></p>
                
            </ItemTemplate>
        </asp:FormView>
       
       <asp:Button ID="Button1" runat="server" Text="Delete Complaint" CssClass="btn btn-danger" OnClick="Button1_Click" Enabled="False" Visible="false"/> 
       
    </form>

</body>
</html>
