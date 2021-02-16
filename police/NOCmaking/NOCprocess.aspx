<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NOCprocess.aspx.cs" Inherits="police_and_automation.police.NOCprocess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../../primary.css" />

    <title></title>
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
        <div class="flex-container">
            <div class="flex-item">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="rid" HeaderText="RID" InsertVisible="False" ReadOnly="True" SortExpression="rid" />
                    <asp:BoundField DataField="rtype" HeaderText="RTYPE" SortExpression="rtype" />
                    <asp:BoundField DataField="rdate" DataFormatString="{0:d}" HeaderText="RDATE" SortExpression="rdate" />
                    <asp:CommandField ShowSelectButton="True" HeaderText="Choose " />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [rid], [rtype], [rdate] FROM [rletter] "></asp:SqlDataSource>

            <br />

        
        
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        
            <asp:FormView ID="FormView1" runat="server"  >
                <ItemTemplate>
                    <span>Request letter Number:</span>
                    <%# Eval("rid") %><br />
                    <span>Request Letter Type:</span>
                    <%# Eval("rtype") %><br />
                    <span>Request Letter Description:</span>
                    <%# Eval("rdesc") %><br />
                    <span>Request Letter Submission Date:</span>
                    <%# Eval("rdate") %><br />
                    <span>Request Letter Submission Time:<br />
                    <%# Eval("rtime") %><br />
                    <span>Requester first name</span><br />
                    <%# Eval("cfname") %><br />
                    <span>Requester last name</span><br />
                    <%# Eval("clname") %><br />
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/police/NOCmaking/NOCmaking.aspx" >Proceed with Document</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <br />
                    </span>
                    &nbsp;
                    
                </ItemTemplate>
            </asp:FormView>
        </div>
            </div>
    </form>
</body>
</html>
