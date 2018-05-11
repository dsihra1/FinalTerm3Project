<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="ProjectUnity_.Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects</title>
    <link rel = "stylesheet" href="../../style/ReportStyle.css" type ="text/css" />
    <script src ="script/jquery-3.2.1.js"></script>
    <script src ="script/ReportScript.js"></script>
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
            <h1>Project Page</h1>
            <table>
                <tr>
                    <td><asp:Label ID="lblProjectName" runat="server" Text="Project Name:"></asp:Label></td>
                    <td><asp:TextBox ID="txtProjectName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblProjectSite" runat="server" Text="Project Site:"></asp:Label></td>
                    <td><asp:TextBox ID="txtSite" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblBidDate" runat="server" Text="Bid Date:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtBidDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBidDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBidDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEstDate" runat="server" Text="Estimate Start Date:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEstDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEstDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtEstDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEstEndDate" runat="server" Text="Estimate Finished Date:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEstEndDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEstEndDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtEstEndDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblActDate" runat="server" Text="Actual Date:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtActDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtActDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtActDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblActEnd" runat="server" Text="Actual End Date:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtActEnd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtActDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtActDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Estimate Cost:"></asp:Label></td>
                    <td><asp:TextBox ID="txtEstCost" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Actual Cost:</td>
                    <td><asp:TextBox ID="txtActCost" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblBidCustAcc" runat="server" Text="Customer Accept Bid:"></asp:Label></td>
                    <td><asp:TextBox ID="txt" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblBidManAcc" runat="server" Text="Management Accept Bid:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
            </table>

            <div>
                <asp:Label ID="lblBidCus" runat="server" Text="Customer Accept:"></asp:Label>
                <asp:RadioButtonList ID="radCusAcc" runat="server">
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="radCusDecline" runat="server">
                </asp:RadioButtonList>
            </div>
            <div>
                <label>Management Accept:</label>
                <asp:RadioButtonList ID="radManAcc" runat="server">
                </asp:RadioButtonList>
                <asp:RadioButtonList ID="radManDec" runat="server">
                </asp:RadioButtonList>
            </div>

            <table>
                <tr>
                    <td>
                        Current Phase:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Project is Flagged:
                    </td>
                    <td>
                        <asp:RadioButton ID="radFlagged" runat="server" Text="Yes" />
                        <asp:RadioButton ID="radFlaggedNo" runat="server" Text="No" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Client&#39;s Name:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlClientID" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Designer&#39;s Name:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDesignerID" runat="server" Height="16px" Width="131px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="bigButton"/>
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bigButton"/>
                <asp:Button ID="btnCancel" runat="server"  Text="Cancel" CssClass="bigButton"/>
            </div>
        </div>
    </form>
</body>
</html>
