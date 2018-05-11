<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectEdit.aspx.cs" Inherits="ProjectUnity_.ProjectEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project</title>
    <link rel = "stylesheet" href="../../style/ReportStyle.css" type ="text/css" />
    <script src ="script/jquery-3.2.1.js"></script>
    <script src ="script/ReportScript.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>

    <div class ="sideNav">
		<nav>
        	<a href = "../../HomePage.aspx" id="home"><img src="../../Images/Unicodelogo.png" class ="imgWarp"/></a>
            <a href = "ProjectHome.aspx" id="projects">Projects</a>
            <a href = "../production/ProductionHomePage.aspx" id="production">Production</a>
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
            <h1>Project Edit</h1>
            <table>
                <tr>
                    <td>Project Name:</td>
                    <td><asp:TextBox ID="txtProName" runat="server"></asp:TextBox></td>
                    <td>Project Site:</td>
                    <td>
                <asp:TextBox ID="txtSite" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Bid Date:</td>
                    <td>
                <asp:TextBox ID="txtBidDate" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Estimate Start Date:</td>
                    <td>
                <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        Estimate End Date:</td>
                    <td>
                <asp:TextBox ID="txtEstEndDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Actual Start Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                    <td>
                        Actual End Date:</td>
                    <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Estimate Cost: </td>
                    <td>
                <asp:TextBox ID="txtEstCost" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        Actual Cost:
                    </td>
                    <td>
                <asp:TextBox ID="txtActCost" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Customer Accept Bid: </td>
                    <td>
                        <asp:CheckBox ID="chkCustomerAccept" runat="server" Text="Yes" />
                    </td>
                    <td>Management Accept Bid:</td>
                    <td>
                        <asp:CheckBox ID="chkManAccept" runat="server" Text="Yes" />
                    </td>
                </tr>
                </table>

            <div>
                Customer Accept:
                <asp:RadioButton ID="rdbCustAcceptYes" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbCustAcceptNo" runat="server" Text="No" />
            </div>
                
            <div>
                Management Accept:
                <asp:RadioButton ID="radMagtAccept" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radMagtAccept2" runat="server" Text="No" />
            </div>

            <table>
                <tr>
                    <td>Current Phase:</td>
                    <td> <asp:TextBox ID="txtPhase" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Project is Flagged:</td>
                    <td>
                <asp:RadioButton ID="radIsFlaggedYes" runat="server" Text="Yes" />
                <asp:RadioButton ID="radIsFlaggedNo" runat="server" Text="No" />
                    </td>
                </tr>
                <tr>
                    <td>Client&#39;s Name:</td>
                    <td> <asp:DropDownList ID="ddlClientName" runat="server" Height="16px" Width="132px">
                </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Designer&#39;s Name:</td>
                    <td>
                <asp:DropDownList ID="ddlDesigner" runat="server" Height="16px" Width="151px">
                </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="bigButton"/>
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="bigButton"/>
        </div>
    </form>
</body>
</html>
