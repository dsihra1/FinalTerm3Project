<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportAdim.aspx.cs" Inherits="ProjectUnity_.Pages.report.ReportAdim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
    <link rel = "stylesheet" href="../../style/ReportStyle.css" type ="text/css" />
    <script src ="script/jquery-3.2.1.js"></script>
    <script src ="script/ReportScript.js"></script>
</head>
<body>

    <div class ="sideNav">
		<nav>
        	<a href = "../../HomePage.aspx" id="home"><img src="../../Images/Unicodelogo.png" class ="imgWarp"/></a>
            <a href = "../project/ProjectHome.aspx" id="projects">Projects</a>
            <a href = "../production/ProductionHomePage.aspx" id="production">Production</a>
            <a href = "../bid/Bid-Home.aspx" id="designBid">Design Bids</a>
            <a href = "../employee/Employee-Home.aspx">Employees</a>
            <a href = "ReportHome.aspx" id="reports">Reports</a>
                <div>
                    <a href = "ReportDailyCost.aspx">Daily Cost</a>
                    <a href = "ReportProduction.aspx">Production</a>
                    <a href = "ReportDesign.aspx">Designer Work</a>
                    <a href = "ReportAdim.aspx">Admin</a>
                </div>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">
            <h1>Admin Reports</h1>

        </div>
    </form>
</body>
</html>
