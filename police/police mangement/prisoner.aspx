<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prisoner.aspx.cs" Inherits="police_and_automation.police.police_mangement.prisoner" %>

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
        .instruct
        {
            width:400px;
        }
        .instructpara
        {
            margin:2px;
        }
        .flex-item
        {
            margin:10px;
        }
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin: 0px;
            background-color: #fff;
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
           <asp:Label runat="server" ID="labelpr" Text="Number Of Criminals"></asp:Label><asp:TextBox ID="TextBox3" runat="server" AutoPostBack="true" CssClass="auto-style1" Width="153px"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" CssClass="valid1" ErrorMessage="Only Put Numeric Values" ValidationExpression="\d+" ForeColor="Red"></asp:RegularExpressionValidator>
           <br />
           <asp:Button ID="Button2" runat="server" Text="Button" OnClick="criminal_number"  CssClass="btn btn-primary"/>
                 </div>
                  </div>
        <div ID="div1" runat="server" Visible="false" class="flex-container">
            <div class="flex-item">
           <div class="instruct">
               <p style="font-size:20px;font-weight:bold">Instructions</p>
               <p class="instructpara">This page helps us to record the criminal data</p>
               <p class="instructpara">This page redirected from the case detail page</p>
               <p class="instructpara">please fill the complusory field with appropiate values</p>
               <p class="instructpara">First we specifies the nummber of criminal after this </p>
               <p class="instructpara">This page record the criminal data based on the number of criminals</p>
               <p class="instructpara">After filling last criminal record this page is rediected to case investigation page</p>
               <p class="instructpara">After redirection please fill the case detail</p>
           </div>
            <br />
                <div>
            <table>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red">complusory field</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="only alphabets accepted" ForeColor="Red" ValidationExpression="^([a-zA-Z\s])+$" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" ForeColor="Red">complusory field</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only alphabets accepted" ForeColor="Red" ValidationExpression="^([a-zA-Z\s])+$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-primary" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
