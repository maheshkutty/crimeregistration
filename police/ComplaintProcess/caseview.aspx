<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="caseview.aspx.cs" Inherits="police_and_automation.police.ComplaintProcess.caseview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <style type="text/css">
        .flex-container
        {
            display:flex;
            flex-flow:row wrap;
            justify-content:space-around;
            align-items:flex-start;
            margin:0px;
        }
        .flex-item
        {
            margin:10px;
        }
        .sinfo
        {
            
        }
        .sdata
        {
            margin:0px;
        }
        labelcase{
            font-size:30px;

        }
    </style>
</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="flex-container">
                <div class="flex-item">
                    <div class="sinfo">
            <p class="sdata">Search BY Follwing Data</p>
            <p class="sdata">Should Provide At Least One Data</p>
                        </div>
            <table>
                <tr>
                    <td>
                        Complaint ID
                    </td>
                    <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Numeric Value Acceped " ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Complaint Type:</td>
                    <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Homicide</asp:ListItem>
                        <asp:ListItem>Robbery</asp:ListItem>
                        <asp:ListItem>Assaults</asp:ListItem>
                        <asp:ListItem>Burglary</asp:ListItem>
                        <asp:ListItem>Theft</asp:ListItem>
                        <asp:ListItem>Vehicle Theft</asp:ListItem>
                        <asp:ListItem>Organized Crime</asp:ListItem>
                        <asp:ListItem>illegal drug trade </asp:ListItem>
                        <asp:ListItem>Arm Trafficking</asp:ListItem>
                        <asp:ListItem>Corruption</asp:ListItem>
                        
                    </asp:DropDownList>
                    
                    </td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
                   <td>Date Of Investigation:</td>
                   <td class="valid1"><asp:TextBox ID="TextBox3" runat="server" TextMode="Date" AutoPostBack="true" OnTextChanged="date_changed" CssClass="form-control"></asp:TextBox></td>
                   <td class="valid1">
                       <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                   </td>
               </tr>
                
           
               <tr>
                   <td>&nbsp;</td>
                   <td>
                       <asp:Button ID="Button1" runat="server" OnClick="Button4_Click" Text="Button" CssClass="btn btn-primary" />
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
                
           
            </table>
                    
                    <asp:Label ID="Label3" runat="server" Text="Choose Case To Get Detail" CssClass="labelcase"></asp:Label>
                    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="ctype" HeaderText="TYPE" SortExpression="ctype" />
                    <asp:BoundField DataField="cdate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="cdate" />
                    <asp:BoundField DataField="pstation" HeaderText="Police station" SortExpression="pstation" />

                    <asp:BoundField DataField="cstatus" HeaderText="Complaint Status" SortExpression="cstatus" />

                    <asp:CommandField HeaderText="choose" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [cid], [ctype], [cdate], [pstation] FROM [complaint]"></asp:SqlDataSource>
            <br />
                    <asp:Label ID="Label2" runat="server" CssClass="labelcase" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:FormView ID="FormView1" runat="server" Visible="false">
                <ItemTemplate>
                <p>Complaint ID:<%# Eval("cid") %></p>
                <p>Complaint Type:<%# Eval("ctype") %></p>
                <p>Complaint Registration Date:<%# Eval("cdate1") %></p>
                <p>Date Of Crime:<%# Eval("cdate") %></p>
                <p>Buliding Name:<%# Eval("cbuild") %></p>
                <p>Locality:<%# Eval("clocal") %></p>
                <p>Street:<%# Eval("cstreet") %></p>
                <p>Station:<%# Eval("cstation") %></p>
                <p>Complaint Status:<%# Eval("cstatus") %></p>
                <p>Complaint Description: <%# Eval("desc1") %></p>
                <p>Case Detail:<%# Eval("cedetail") %></p>
                <p>Police Station:<%# Eval("psname") %></p>
                </ItemTemplate>
            </asp:FormView>
              <asp:Repeater ID="rptTable" runat="server" Visible="false">
            <HeaderTemplate>
                <p>Prisoner Detail</p>
                <table class="table">
                    <tr>
                        <th>Prisoner First Name</th>
                        <th>Prisoner Last Name</th>
                        <th>Police Station</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("prfname") %></td>
                    <td><%#Eval("prlname") %></td>
                    <td><%#Eval("pstation") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>
        </div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible=false></asp:Label>
    </form>
</body>
</html>
