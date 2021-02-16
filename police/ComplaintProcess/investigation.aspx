<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="investigation.aspx.cs" Inherits="police_and_automation.police.ComplaintProcess.investigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <title></title>

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
        .labelcase{
            font-size:30px;
        }
        .instruct
        {
            width:400px;
        }
        .instructpara
        {
            margin:2px;
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
            <h1>Fill Case Detail</h1>
                <div class="instruct">
                    <p style="font-size:20px;font-weight:bold">Instruction</p>
                    <p class="instructpara">Fill all the below field </p>
                    <p class="instructpara">After filling the form you will get the detail acknowledge of case detail</p>
                </div>
            <table class="auto-style1">
                <tr>
                    <td>Case Detail</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="complusory field" ControlToValidate="TextBox1" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Police Station</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>samta nagar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-primary"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
        
        <asp:Label ID="labelcase" runat="server" CssClass="labelcase" Visible="false" Text="Case Detail"></asp:Label>
       <asp:FormView ID="FormView1" runat="server" Visible="false">
            <ItemTemplate>
                <p>Complaint ID:<%# Eval("cid") %></p>
                <p>Case ID:<%# Eval("ceid") %></p>
                <p>Complaint type:<%# Eval("ctype") %></p>
                <p>Complaint desc:<%# Eval("desc1") %></p>
                <p>Building Number:<%# Eval("cbuild") %></p>
                <p>Locality:<%# Eval("clocal") %></p>
                <p>Station:<%# Eval("cstation") %></p>
                <p>Case detail:<%# Eval("cedetail") %></p>
                <p>Case date:<%# Eval("cedate") %></p>
                <p>Police Station:<%# Eval("psname") %></p>
            </ItemTemplate>
        </asp:FormView>
        <asp:Repeater ID="rptTable" runat="server">
            <HeaderTemplate>
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
    </form>
</body>
</html>
