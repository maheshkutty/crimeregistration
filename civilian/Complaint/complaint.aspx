<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complaint.aspx.cs" Inherits="police_and_automation.civilian.complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <meta name="viewport" content="width=device-width, intial-scale=1" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../primary.css" rel="stylesheet" />
    <style>
        .flex-container{
            display:flex;
            flex-flow:row wrap;
            justify-content:flex-start;
            align-items:flex-start;
            margin:0px;
        }
        .complaintlink{
            background-color:#ffeb3a;
            width:300px;
            color:black;
        }
        .flex-item{
            margin:10px;

        }
        .complainttab{
            list-style-type:none;
            width:300px;
        }
        .cmplnt
        {
            width:300px;
            color:black;
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
            height:50px;
            text-align:center;
        }
        li:hover
        {
            width:300px;
            height:50px;
            background-color:#ffdd00;
        }
        labelcom{
            font-size:20px;
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
              <li><asp:HyperLink NavigateUrl="~/civilian/Complaint/complaint.aspx" Text="New Registration" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/civilian/Complaint/complaintview.aspx" Text="Complaint History" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
            </ul>
       </div>
        
        <div class="c1 flex-item">
            <h1>Complaint Registration</h1>
            
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="labelcom" Visible="False"></asp:Label>
            
        <table>
            <tr>
                <td>Description<span class="imp">*</span></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" ></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Description is complusory" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only alphanumeric value accpected" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9\s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Building Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only alphanumeric value accpected" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9\s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Street Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="only alphanumeric value accpected" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9\s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Locality</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="only alphanumeric value accpected" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9\s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Station</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="only alphabets accpected" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="^([a-zA-Z/s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>District:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="only alphabets accpected" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^([a-zA-Z\s])+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Pin Code<span class="imp">*</span></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Pin code is complusory" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid pin code" ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Date Of Crime<span class="imp">*</span></td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" CssClass="form-control" AutoPostBack="true" OnTextChanged="date_check"></asp:TextBox>
                </td>
                <td class="valid1">
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date of crime is complusory" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td>Time Of Crime<span class="imp">*</span></td>
                <td>
                    
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Time" CssClass="form-control"></asp:TextBox>
                    
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Police Station</td>
                <td>
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>meghwaadi</asp:ListItem>
                        <asp:ListItem>Samta Nagar</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Police Station"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Type Of Crime<span class="imp">*</span></td>
                <td class="auto-style4">
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
                <td class="valid1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Selection of crime is complusory" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Crime evidence:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="valid1">
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="file should be jpeg format" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="upload jpeg and gifs only" ForeColor="Red" ValidationExpression="^(([a-zA-Z):|(\\{2}\w+\$?)(\\(\w[\w].*))(.jpg|.JPG|.gif|.GIF|.jpeg)$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
            </div>
            </div>
        
    </form>

    </body>
</html>
