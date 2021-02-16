<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="police_and_automation.civilian.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 145px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-size:100%;
        }
        .footer {
           
            background-color:#800000;
            color: #FBC423;
            text-align: center;
            font-family:Verdana;
            font-size:medium;   
            height:37px;
            width:100%
        }
        </style>
</head>




<body style="background-color:#FFE4B5" >
    <form id="form1" runat="server">
       <div id="wrapper">
            <div id="banner">
                <img class="auto-style1" src="../appdata/Images/editpolice.JPG"></div>
                    <asp:Menu class="Menu1" runat="server" BackColor="#800000" BorderColor="#FF9900" BorderStyle="None" Font-Bold="False" Font-Names="Verdana" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#FBC423" Height="37px" Orientation="Horizontal" Width="100%" OnMenuItemClick="Menu1_MenuItemClick" ItemWrap="True" >
                        <DynamicHoverStyle Width="35px" />
                    <DynamicMenuItemStyle BackColor="#3333FF" />
                    <Items>
                        <asp:MenuItem Text="Police" Value="Police1"></asp:MenuItem>
                        <asp:MenuItem Text="Contact" Value="Contact"></asp:MenuItem>
                        <asp:MenuItem Text="about us" Value="about us"></asp:MenuItem>
                        <asp:MenuItem Text="login" Value="login"></asp:MenuItem>
                        <asp:MenuItem Text="Complaint" Value="Complaint"></asp:MenuItem>
                        <asp:MenuItem Text="Feedback" Value="Feedback"></asp:MenuItem>
                        <asp:MenuItem Text="History" Value="History"></asp:MenuItem>
                    </Items>
                     <StaticSelectedStyle BackColor="#ff4d4d" />
                    <StaticMenuItemStyle HorizontalPadding="60px" />
                    <StaticMenuStyle VerticalPadding="5px" />
                    <StaticHoverStyle BackColor="#ff4d4d" />
                </asp:Menu>
            <div id="content-area" class="auto-style3">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
                
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:AdRotator ID="Adrotator1" runat="server" Advertisementfile="~/civilian/XMLFile1.xml" Height="600px" Width="100%" />
                        <asp:Timer ID="Timer1" runat="server" Interval="2000"></asp:Timer>
            <h2>Mumbai Police Motto</h2>
<p>Mumbai Police shall ensure the Rule of Law, enforce the law of the land impartially and firmly without fear or favour, and strive to create a fear free environment that is conducive to growth and development.

Mumbai Police will remain committed to maintaining public order, preventing and detecting crime, maintaining and promoting communal harmony, ensuring a smooth flow of traffic, and taking strong action against terrorism, organized crime, anti-social / illicit activities / elements.

We will serve and protect all, particularly the downtrodden, the weak, women, minorities, senior citizen's, slums dwellers, the poor & other marginalized sections of society. Prompt & compassionate response to every call of citizen's in distress.

We will keep our personal integrity high, work as a team to make the force corruption-free, bring in transparency in our functioning, strive continuously to raise the professional skills and work for the welfare of our force.

Making Mumbai a safer and better place to live is our mission and we will work for this in partnership with the community.<p>
           <h2>Contact the police</h2>
<p>Contact the police by calling 100 to report emergencies or by calling women's helpline 181 incase of women's emergency.</p>                   
                </ContentTemplate>
            </asp:UpdatePanel>
            </div>
          
            <div class="footer"><p>&copy; Copyright 2019. All rights reserved</p></div>
           </div>
    </form>


</body>
</html>
