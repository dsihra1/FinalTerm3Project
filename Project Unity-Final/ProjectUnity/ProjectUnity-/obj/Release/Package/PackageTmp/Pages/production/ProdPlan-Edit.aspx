<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdPlan-Edit.aspx.cs" Inherits="ProjectUnity_.ProdPlan_Edit" %>

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
            <asp:Label ID="Label1" runat="server" Text="Select a Project For which you want to edit a Plan" Font-Bold="True" Font-Size="Large" style="margin:40px;"></asp:Label>
            <asp:DropDownList ID="ddlProjSelect" runat="server" AutoPostBack="True" DataSourceID="ProjDetailDataSoiurce" DataTextField="projName" DataValueField="ID" Width="166px">
            </asp:DropDownList>

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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

            <asp:Button ID="btnUpdatePlan" runat="server" Text="Update" CssClass="bigButton" />
            <asp:Button ID="btnCancelChanges" runat="server" Text="Cancel" CssClass="bigButton" />
            <asp:ObjectDataSource ID="ProjDetailDataSoiurce" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.PROJECTTableAdapter" OnSelecting="ProjDetailDataSoiurce_Selecting"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
