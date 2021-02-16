<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateassets.aspx.cs" Inherits="police_and_automation.police.police_mangement.updateassets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <title></title>
    <style type="text/css">
        .instruct
        {

        }
        .instructpara
        {
            margin:2px;
        }
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
            margin:10px;
        }
    </style>
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
        <div class="flex-container">

            <div class="flex-item">
                <h1>Assets Update Page</h1>
                <div class="instruct">
                    <p style="font-weight:bold; font-size:20px">Instruction</p>
                    <p class="instructpara">This page is helps to update record of police station assets</p>
                    <p class="instructpara">Please fill all necessary field with appropiate value</p>
                    <p class="instructpara">This page require the assets ID to upadte asset record</p>
                    <p class="instructpara">In case you dont know assets ID <a href="viewasset.aspx">click here</a> to know</p>
                </div>
            <table class="auto-style1">
                <tr>
                    <td>Asset ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="complusory field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="only numeric vaalue accpected" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Asset Required Unit</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="complusory field" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only numeric value accpected" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Asset Total Unit</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="complusory field" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only numeric value accpected" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
