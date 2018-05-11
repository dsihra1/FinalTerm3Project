﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDelete.aspx.cs" Inherits="ProjectUnity_.EmployeeDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
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
            <a href = "../Bid-Home.aspx" id="designBid">Design Bids</a>
            <a href = "Employee-Home.aspx">Employees</a>
            <a href = "../report/ReportHome.aspx" id="reports">Reports</a>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">
            <h1>Employee Delete</h1>

            <label style="margin-right:20px;">Full Name:</label>
            <asp:DropDownList ID="ddlFullName" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            Job Description:
        <asp:GridView ID="gvDesc" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnDelete" runat="server" Height="33px" Text="Delete" CssClass="bigButton" />
        </div>
    </form>
</body>
</html>
