<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportProduction.aspx.cs" Inherits="ProjectUnity_.Pages.report.ReportProduction" %>

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
            <h1>Production Reports</h1>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Project:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Labour Cost:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Stage of Production:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Product used...</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server">Quantity Used...</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add Products..." />
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="Finish" style="margin:20px;"/>
            <asp:Button ID="Button3" runat="server" Text="Cancel" style="margin:20px;"/>
        </div>
    </form>
</body>
</html>
