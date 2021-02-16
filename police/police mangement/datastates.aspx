<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datastates.aspx.cs" Inherits="police_and_automation.police.police_mangement.datastates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../primary.css" />
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
        .boro{
            color:red;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        
        <div class="her">
            <h1 class="d-inline" style="color:#ffeb3a;text-align:center;top:75px;left:48%;position:absolute;font-weight:bold">Mumbai Police</h1>
    </div>
        
    <div class="flex-container">
        <div class="flex-item complaintlink">
            <ul class="complainttab">
              <li><asp:HyperLink NavigateUrl="~/police/adminpolice.aspx" runat="server" CssClass="cmplnt" Text="Main Menu" Font-Bold="true"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/police/police mangement/datastates.aspx" runat="server" CssClass="cmplnt" Text="Data Cluster Statistics" Font-Bold="true"></asp:HyperLink></li>
              <li><asp:HyperLink NavigateUrl="~/police/police mangement/datacluster.aspx" Text="Cluster Of Data" runat="server" Font-Bold="True" CssClass="cmplnt"></asp:HyperLink></li>
            </ul>
       </div>
        <div class="flex-item">
            <h2>Important Instructions</h2>
            <p>
                The Below Crime Data was taken from new york open database which is freely available to public.<br /> 
                We apply cluster technique to data and get information.<br />
                Below Data is about<span class="boro"> harresment</span> Crime which is happen <span class="boro">Manhattan New York in between 1/12/2018 to 31/12/2018</span><br />
                Total Number of crime between period of 1/12/2018 to 31/12/2018:908<br />
                Description Of Columns:<br />
                Longitude and Latitude where the crime committed<br />
                Category column represent type of cluster category<br />
                VIC_SEX represent victim sex<br />
                VIC_AGE_GROUP represent victim age group<br />
                VIC_RACE represnts victim racism(body color)
            </p>
        </div>
        <div class="flex-item">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" EnableSortingAndPagingCallbacks="True" PageSize="30">
                <PagerSettings Mode="NumericFirstLast" />
            </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
