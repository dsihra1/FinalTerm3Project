﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee-Home.aspx.cs" Inherits="ProjectUnity_.Pages.employee.Employee_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee</title>
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
            <a href = "Employee-Home.aspx">Employees</a>
            <a href = "../report/ReportHome.aspx" id="reports">Reports</a>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Choose An Employee To View:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddEmployee" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:DetailsView ID="dvEmployee" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
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
            <asp:ObjectDataSource ID="odsEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.DataTable1TableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
