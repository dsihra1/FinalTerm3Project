<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client-Create.aspx.cs" Inherits="ProjectUnity_.Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client</title>
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
            <a href = "../employee/Employee-Home.aspx">Employees</a>
            <a href = "../report/ReportHome.aspx" id="reports">Reports</a>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">

            <table>
                <tr>
                    <td><asp:Label ID="lblSales" runat="server" ForeColor="#000000" Text="Sales Person:"></asp:Label></td>
                    <td><asp:DropDownList ID="ddSales" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblName" runat="server" ForeColor="#000000" Text="Client Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfName" runat="server" ErrorMessage="Client Name Required" ForeColor="Red" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAddress" runat="server" ForeColor="#000000" Text="Client Address:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfAddress" runat="server" ErrorMessage="Client Address Required" Font-Italic="False" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCity" runat="server" ForeColor="#000000" Text="Client City:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddCity" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblProvince" runat="server" ForeColor="#000000" Text="Client Province:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddProvince" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPostal" runat="server" ForeColor="#000000" Text="Client Postal Code:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPostal" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rePostalCode" runat="server" ErrorMessage="Improper Format" ForeColor="Red" ControlToValidate="txtPostal">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhone" runat="server" ForeColor="#000000" Text="Client Phone Number:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rePhone" runat="server" ErrorMessage="Improper Format" ForeColor="Red" ControlToValidate="txtPhone">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConFirst" runat="server" ForeColor="#000000" Text="Client Contact First Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConFirst" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConFirst" runat="server" ErrorMessage="Client Contact First Name Required" ForeColor="Red" ControlToValidate="txtConFirst">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConLast" runat="server" ForeColor="#000000" Text="Client Contact Last Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConLast" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConLast" runat="server" ErrorMessage="Client Contact Last Name Required" ForeColor="Red" ControlToValidate="txtConLast">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConPosition" runat="server" ForeColor="#000000" Text="Client Contact Position:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConPosition" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConPosition" runat="server" ErrorMessage="Client Contact Position Required" ForeColor="Red" ControlToValidate="txtConLast">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <div style="margin:30px;">
                <asp:Button ID="btnCreate" runat="server" Text="Create" CssClass="bigButton"/>
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bigButton"/>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
