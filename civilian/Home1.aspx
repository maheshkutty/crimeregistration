<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="police_and_automation.civilian.Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../appdata/slider.css" />
    <link rel="stylesheet" href="../primary.css" />
    <style>
     
        img{
            height:100px;
            width:100%;
        }
    </style>
        <script src="../appdata/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
        <script src="../appdata/JavaScriptSlider.js" type="text/javascript"></script>

</head>
<body>
    <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:50%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <div>
        <ul class="nav1" >
            
            <li><a href="reg.aspx" class="link1">Sign Up</a></li>
            <li><a class="link1" href="login.aspx">LOGIN</a></li>
            <li><a class="link1" href="contact.aspx">Contact Us</a></li>
            <li class="dropdown1">
                <a href="javascript:void(0)" class="dropbtn1 link1">Services</a>
                    <div class="dropdown-content1">
                       <a class="link1" href="complaintinfo.aspx">Complaint</a><br />
                       <a class="link1" href="">Noc Letter</a><br />
                       <a href="../GIS DATA/index.html" class="link1">Crime Map</a>
                    </div>
            </li>
            <li><a class="link1" href="aboutus.aspx">About Us</a></li>
            <li><a class="link1" href="Home1.aspx">Home</a></li>
        </ul>
    </div>
      <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px; width:auto; height:350px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1330px; height:350px;overflow:hidden;">
            <div>
                <img data-u="image" src="../appdata/picture/P1.jpg" />
            </div>
            <div>
                <img data-u="image" src="../appdata/picture/P2.jpg" />
            </div>
            <div>
                <img data-u="image" src="../appdata/picture/P3.jpg" />
            </div>
            <div>
                <img data-u="image" src="../appdata/picture/P4.jpg" />
            </div>
            <div>
                <img data-u="image" src="../appdata/picture/police5.jpg" />
            </div>
            
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb051" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:55px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <div>
           <h2>Mumbai Police Motto</h2>
<p>Mumbai Police shall ensure the Rule of Law, enforce the law of the land impartially and firmly without fear or favour, and strive to create a fear free environment that is conducive to growth and development.

Mumbai Police will remain committed to maintaining public order, preventing and detecting crime, maintaining and promoting communal harmony, ensuring a smooth flow of traffic, and taking strong action against terrorism, organized crime, anti-social / illicit activities / elements.

We will serve and protect all, particularly the downtrodden, the weak, women, minorities, senior citizen's, slums dwellers, the poor & other marginalized sections of society. Prompt & compassionate response to every call of citizen's in distress.

We will keep our personal integrity high, work as a team to make the force corruption-free, bring in transparency in our functioning, strive continuously to raise the professional skills and work for the welfare of our force.

Making Mumbai a safer and better place to live is our mission and we will work for this in partnership with the community.<p>
           <h2>Contact the police</h2>
<p>Contact the police by calling 100 to report emergencies or by calling women's helpline 181 incase of women's emergency.</p>   
    </div>
       <div class="footer"><p class="footer-align">&copy; Copyright 2019. All rights reserved</p>
           </div>
</body>

</html>
