<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complaintprocess.aspx.cs" Inherits="police_and_automation.police.ComplaintProcess.complaintprocess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <style>
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
            margin:30px;
        }
        .labelcase{
            font-size:30px;
        }
    </style>
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <form id="form1" runat="server">
        
        <div class="flex-container">
            <div class="flex-item">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [cid], [ctype], [cdate], [pstation] FROM [complaint] where cstatus<>'Complete'"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="ctype" HeaderText="TYPE" SortExpression="ctype" />
                    <asp:BoundField DataField="cdate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="cdate" />
                    <asp:BoundField DataField="pstation" HeaderText="Police station" SortExpression="pstation" />
                    <asp:CommandField HeaderText="choose" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
             </div>
            </div>
        <div class="flex-container">
            
            <div class="flex-item">
              
              <asp:Label ID="LabelCivilian" runat="server" Text="Civilian Info" Visible="false" CssClass="labelcase"></asp:Label>
              
              <asp:FormView ID="FormView2" runat="server">
                  <ItemTemplate>
                      <p>First Name:<%# Eval("cfname") %></p>
                      <p>Last Name:<%# Eval("clname") %></p>
                      <p>Gender:<%# Eval("gender") %></p>
                      <p>Phone:<%# Eval("phone") %></p>
                  </ItemTemplate>
              </asp:FormView>
            </div>
            <br />
            
                <div class="flex-item">
                <asp:Label ID="labelcase" runat="server" CssClass="labelcase" Visible="false" Text="Complaint Detail"></asp:Label>
            <asp:FormView ID="FormView1" runat="server" Visible="false">
                <ItemTemplate>
                <p>Complaint ID:<%# Eval("cid") %></p>
                <p>Complaint Type:<%# Eval("ctype") %></p>
                <p>Complaint Registration Date:<%# Eval("cdate") %></p>
                <p>Date Of Crime:<%# Eval("cdate") %></p>
                <p>Buliding Name:<%# Eval("cbuild") %></p>
                <p>Locality:<%# Eval("clocal") %></p>
                <p>Street:<%# Eval("cstreet") %></p>
                <p>Station:<%# Eval("cstation") %></p>
                <p>Complaint Status:<%# Eval("cstatus") %></p>
                <p>Complaint Description: <%# Eval("desc1") %></p>
                
                    
                    <p>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/police/police mangement/prisoner.aspx">Prisoner Found</asp:HyperLink>
                       
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/police/adminpolice.aspx">Home</asp:HyperLink>
                    </p>
                    
                </ItemTemplate>
            </asp:FormView>
                <a class="btn btn-link" ID="imagelink" runat="server" Visible="false" data-toggle="collapse" aria-controls="evidence" href="#evidence" aria-expanded="false">CLICK to view Evidence</a>
                    <div class="collapse" id="evidence">
                    <div class="card card-body" ID="rletter1" runat="server">
                        <asp:Label ID="labelimginfo" runat="server"></asp:Label>
                       <asp:Image ID="Image1" runat="server"  Height="400px" Width="300px" Visible="false"/>
                   
                    </div>
                    
                </div>
                    </div>
            <br />
          
        </div>
    </form>
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
</body>
</html>
