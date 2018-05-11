<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionHomePage.aspx.cs" Inherits="ProjectUnity_.ProductionHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Production</title>
    <link rel = "stylesheet" href="../../style/ReportStyle.css" type ="text/css" />
    <script src ="script/jquery-3.2.1.js"></script>
    <script src ="script/ReportScript.js"></script>
</head>
<body>

    <div class ="sideNav">
		<nav>
        	<a href = "../../HomePage.aspx" id="home"><img src="../../Images/Unicodelogo.png" class ="imgWarp"/></a>
            <a href = "../project/ProjectHome.aspx" id="projects">Projects</a>
            <a href = "ProductionHomePage.aspx" id="production">Production</a>
            <a href = "../bid/Bid-Home.aspx" id="designBid">Design Bids</a>
            <a href = "../employee/Employee-Home.aspx">Employees</a>
            <a href = "../report/ReportHome.aspx" id="reports">Reports</a>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="lblTitleProduction" runat="server" Text="Production plan"></asp:Label>

            <asp:Label ID="lblSelectPlanProject" runat="server" Text="Choose A Project Plan To View:"></asp:Label>
&nbsp;
            <asp:DropDownList ID="ddlSelectProd" runat="server" Height="23px" Width="143px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DetailsView ID="dvProduction" runat="server" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>

            <br />
            <asp:ObjectDataSource ID="obsProduction" runat="server"></asp:ObjectDataSource>
            <br />

        </div>
    </form>
</body>
</html>
