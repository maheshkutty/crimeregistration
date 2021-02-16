<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policestation.aspx.cs" Inherits="police_and_automation.police.police_mangement.policestation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>choose</asp:ListItem>
                            <asp:ListItem>Police Station</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Staff</td>
                    <td>
                        <asp:TextBox ID="txtStaff" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;Jail</td>
                    <td>
                        <asp:TextBox ID="txtJail" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Street</td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Locality</td>
                    <td>
                        <asp:TextBox ID="txtLocal" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Pin Code</td>
                    <td>
                        <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Station</td>
                    <td>
                        <asp:TextBox ID="txtSta" runat="server"></asp:TextBox>
                    </td>
  &nbsp;</td>
                </tr>
            </table>

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="You sucessfully updated the police station data" Visible="False"></asp:Label>
    </form>
</body>
</html>
