<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="missingobject.aspx.cs" Inherits="police_and_automation.police.police_mangement.missingobject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Missing Object</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <style type="text/css">
        .flex-container
        {
            display:flex;
            flex-flow:row wrap;
            justify-content:flex-start;
            align-items:flex-start;
            margin:0px;
        }
        .instruct
        {

        }
        .instructpara
        {
            margin:2px;
        }
        .flex-item
        {
            margin:10px;
        }
        .labelcase{
            font-size:25px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        
        <div class="flex-container">
            <div class="flex-item">
                <h1>Missing Object Form</h1>
                <div class="instruct">
                <p style="font-weight:bold; font-size:20px">Instruction</p>
                <p class="instructpara">This page used for recording of missing object </p>
                <p class="instructpara">Please fill all necessary field with appropiate value</p>
                <p>All the input are complusory</p>
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="labelcase"></asp:Label>
            <table>
                <tr>
                    <td>Missing Object Name:&nbsp; </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Complusory field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                       <br /> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric value accpected" ForeColor="Red" ValidationExpression="^([a-zA-Z\s\d])+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Missing Object Catogory:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Wallet</asp:ListItem>
                            <asp:ListItem>Ornament</asp:ListItem>
                            <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Missing Object Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" OnTextChanged="date_changed" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="date should be selected" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Police Station:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="psname" DataValueField="psname" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT [psname] FROM [pstation]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>
        </div> 

        
    </form>
</body>
</html>
