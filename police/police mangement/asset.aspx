<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asset.aspx.cs" Inherits="police_and_automation.police.asset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    
    <style type="text/css">
      
        
   
        
    </style>
    <link rel="stylesheet" href="../../primary.css" />
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
        <h1 class="header">Assets Mangement</h1>
        <div class="c1">
            <table>
                
            <tr class="tableh">
                
                <td class="auto-style3">Asset Name:</td>
                <td class="auto-style3" >
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtName" ErrorMessage="Name cannot be empty" ForeColor="Red" ></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="only in words" ForeColor="#3333CC" ValidationExpression="^([a-zA-Z\s])+$" ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr class="tableh">
                <td class="auto-style5">Asset Category:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Stationary</asp:ListItem>
                        <asp:ListItem>Arms &amp; Ammunition</asp:ListItem>
                        <asp:ListItem>Vehicles</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Category cannot be empty" ForeColor="Red" ></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr class="tableh">
                <td class="auto-style1">Asset Unit:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtUnit" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUnit" ErrorMessage="ExistingUnit cannot be empty" ForeColor="Red" ></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUnit" ErrorMessage="cannot be negative" ForeColor="#0033CC" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr class="tableh">
                <td class="auto-style5">Required Unit:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtReq" runat="server" CssClass="form-control"></asp:TextBox>
                
                    </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtReq" ErrorMessage="RequiredUnit cannot be empty" ForeColor="Red" ></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtReq" ErrorMessage="cannot be negative" ForeColor="#0033CC" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr class="tableh">
                <td >Police Station</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="psname" DataValueField="psname" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem Selected="True">select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [psname] FROM [pstation]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr class="tableh">
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
        <script src="../../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
</body>
</html>
