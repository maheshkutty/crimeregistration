<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datacluster.aspx.cs" Inherits="police_and_automation.police.police_mangement.datacluster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../primary.css" />
    <style>
        img
        {
            height:400px;
            width:600px;
        }
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
        .boro{
            color:red;
        }
    </style>

</head>
<body>
     <div class="her">
        <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:48%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
    <div>
        <h2>Important Instructions</h2>
        <p>
            Below images was made from newyork crime open database <br />
            Below images is about <span class="boro">Harresment</span> Crime which is happen in <span class="boro">Manhatten New York in between 1/12/2018 to 31/12/2018</span><br />
            Different color points represents type of cluster
        </p>
    </div>
    <form id="form1" runat="server">
        
        
      <div class="flex-container">
        <div class="flex-item complaintlink">
            <ul class="complainttab">
              <li><asp:HyperLink NavigateUrl="~/police/adminpolice.aspx" runat="server" CssClass="cmplnt" Text="Main Menu" Font-Bold="true"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/police/police mangement/datastates.aspx" runat="server" CssClass="cmplnt" Text="Data Cluster Statistics" Font-Bold="true"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/police/police mangement/datacluster.aspx" Text="Cluster Of Data" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
            </ul>
           
       </div>
          <div class="flex-item">
            <p>Below Image show the scatter plot of crime data based on age of civilian </p>
            <img src="../../appdata/cluster/cluster_age.png" />
            <br />
            <p>Below Image show the scatter plot of crime data based on age of civilian </p>
            <img src="../../appdata/cluster/cluster_race.png" />
            <br />
            <p>Below Image show the scatter plot of crime data based on age of civilian </p>
            <img src="../../appdata/cluster/cluster_sex.png" />
        </div>
    </form>
</body>
</html>
