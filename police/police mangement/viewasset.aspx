<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewasset.aspx.cs" Inherits="police_and_automation.police.police_mangement.viewasset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../../primary.css" />
    <title>Assets Record</title>
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
        <div>
            <h1>Assets Record </h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Asset ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="asname" HeaderText="Asset Name" SortExpression="asname" />
                    <asp:BoundField DataField="ascat" HeaderText="Asset Category" SortExpression="ascat" />
                    <asp:BoundField DataField="ascount" HeaderText="Asset Count" SortExpression="ascount" />
                    <asp:BoundField DataField="asreq" HeaderText="Required Unit" SortExpression="asreq" />
                    <asp:HyperLinkField HeaderText="Click To Update" NavigateUrl="~/police/police mangement/updateassets.aspx" Text="click here"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT * FROM [assets1]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
