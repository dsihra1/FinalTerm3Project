<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="ProjectUnity_.Employees" %>

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
            <h1>Employee</h1>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblWorkerType" runat="server" Text="Worker Description:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlWorkerType" runat="server" AutoPostBack="True" DataSourceID="SQlWorkerType" DataTextField="wrkTypeDesc" DataValueField="ID" Height="16px" Width="118px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="bigButton"/>
                <asp:Button ID="bntClear" runat="server" Text="Clear" CssClass="bigButton"/>      
            </div>
        </div>
    </form>
</body>
</html>
