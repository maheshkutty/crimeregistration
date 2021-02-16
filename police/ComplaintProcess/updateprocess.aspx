<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateprocess.aspx.cs" Inherits="police_and_automation.police.ComplaintProcess.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../primary.css" />
    <title></title>
    <style>
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
            <div class="sinfo">
            <p class="sdata">Search BY Follwing Data</p>
            <p class="sdata">Should Provide At Least One Data</p>
            </div>
            <table>
                <tr>
                    <td>
                        Complaint ID
                    </td>
                    <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="only numeric value accpected" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Complaint Type:</td>
                    <td><asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
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
                    </asp:DropDownList></td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
                   <td>Date Of Investigation:</td>
                   <td><asp:TextBox ID="TextBox6" runat="server" TextMode="Date" CssClass="form-control" AutoPostBack="true" OnTextChanged="date_checked"></asp:TextBox></td>
                   <td class="valid1">
                       <asp:Label ID="labeldate" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                   </td>
               </tr>
                
           
               <tr>
                   <td>&nbsp;</td>
                   <td>
                       <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" CssClass="btn btn-primary" />
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
                
           
            </table>
        
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged " OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="cbuild" HeaderText="Buliding Name" SortExpression="cbuild" />
                    <asp:BoundField DataField="cstreet" HeaderText="Street Name" SortExpression="cstreet" />
                    <asp:BoundField DataField="ctype" HeaderText="Complaint Type" SortExpression="ctype" />
                    <asp:BoundField DataField="pstation" HeaderText="Police Station" SortExpression="pstation" />
                    <asp:CommandField HeaderText="Update Data" ShowSelectButton="True" />
        
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True"  />
        
                </Columns>
            </asp:GridView>



                <asp:Label ID="lbldrop" runat="server" Visible="false" Text="Choose Update Option"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False" AutoPostBack="true">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Case Detail</asp:ListItem>
                <asp:ListItem>Prisoner Data</asp:ListItem>

                <asp:ListItem>Make Complaint Complete</asp:ListItem>

            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:policeConnectionString %>" SelectCommand="SELECT c.cid,c.cbuild,c.ctype,c.cstreet,c.pstation from complaint as c,case1 as ce where c.cid=ce.cid "></asp:SqlDataSource>
           <br />
             



            <asp:Label ID="Label1" runat="server" Text="Case Detail" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Columns="40" Rows="10" TextMode="MultiLine" Visible="False" CssClass="auto-style1" Width="363px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Visible="False" CssClass="btn btn-primary" />
            <br />
            <br />
        </div>
        <div>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="fname1" runat="server" Text="First Name" Visible="false"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only alphabets accpected" ForeColor="Red" ControlToValidate="TextBox2" ValidationExpression="^([a-zA-Z\s])+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lname1" runat="server" Text="Last Name" Visible="false"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="valid1">
                        <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only alphabets accpected" ForeColor="Red" ControlToValidate="TextBox3" ValidationExpression="^([a-zA-Z\s])+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="pstation1" runat="server" Text="Police Station" Visible="false"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Visible="false" CssClass="form-control">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>samta nagar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Button" Visible="false" OnClick="Button3_Click" CssClass="btn btn-primary" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>                 
            </table>
            </div>
            </div>
            </div>
    </form>
</body>
</html>
