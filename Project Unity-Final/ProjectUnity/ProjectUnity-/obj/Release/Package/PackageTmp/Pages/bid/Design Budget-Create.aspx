<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Design Budget-Create.aspx.cs" Inherits="ProjectUnity_.Design_Budget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Design Bids</title>
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
            <a href = "Bid-Home.aspx" id="designBid">Design Bids</a>
            <a href = "../employee/Employee-Home.aspx">Employees</a>
            <a href = "../report/ReportHome.aspx" id="reports">Reports</a>
            <a href = "" id="about">About</a>
            <a href = "../client/Client-Home.aspx" id="clients">Clients</a>
            <a href = "" id="help">Help</a>
        </nav>
	</div>

    <form id="form1" runat="server">
        <div class="container">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Create Design Budget"></asp:Label>

            <table>
                <tr>
                    <th><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Client Details"></asp:Label></th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblClientName" runat="server" Text="Client Name"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlClientName" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblClientAddress" runat="server" Text="Client Address"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtClientAddress" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClientAddress" ErrorMessage="Client Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Client Contact Person"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtClientContact" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClientContact" ErrorMessage="Client Contact Person is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblContactDate" runat="server" Text="Contact Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtContactDate" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactDate" ErrorMessage="Contact Date is a Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <th><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="NBD Staff Details"></asp:Label></th>
                </tr>
                <tr>
                    <td><asp:Label ID="lblSalesAssoc" runat="server" Text="Sales Associate"></asp:Label></td>
                    <td><asp:DropDownList ID="ddlSalesAssoc" runat="server" ></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblSalesPhone" runat="server" Text="Sales Associate Phone"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtSalesPhone" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSalesPhone" ErrorMessage="Sales Associate Phone is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblDesignerName" runat="server" Text="Designer"></asp:Label></td>
                    <td><asp:DropDownList ID="ddlDesignerName" runat="server" ></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblDesignerPhone" runat="server" Text="Designer Phone"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDesignerPhone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDesignerPhone" ErrorMessage="Designer Phne is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <th><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Project Details"></asp:Label></th>
                </tr>
                <tr>
                    <td><asp:Label ID="lblBudget" runat="server" Text="Budget Submitted"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtBudgetDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBudgetDate" ErrorMessage="Budget SubMitted Date is  Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Estimated Begin Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEstBeginDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEstBeginDate" ErrorMessage="Begin Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Estimated Completion Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEstComplDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEstComplDate" ErrorMessage="Completion Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblProjSite" runat="server" Text="Project Site"></asp:Label></td>
                    <td><asp:DropDownList ID="ddlProjSite" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblBidAmount" runat="server" Text="Bid Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtBidAmount" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBidAmount" ErrorMessage="Bid Amount is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>          

            <table>
                <tr>
                    <th>
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Budget Details"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <th>Task</th>
                    <th>Date</th>
                    <th>Hours</th>    
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlTask" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtDate1" ErrorMessage="Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtHours" ErrorMessage="Hours is Required" ForeColor="Red">*</asp:RequiredFieldValidator>                      
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlTask0" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtDate2" ErrorMessage="Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtHours1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtHours1" ErrorMessage="Hours is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlTask1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtDate3" ErrorMessage="Date Is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHours2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtHours2" ErrorMessage="Hours is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <div>
                <asp:Label ID="lblTotalHrs" runat="server" Text="Total Hours:" style="margin-right:20px;"></asp:Label>
                <asp:TextBox ID="txtTotalhrs" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnAddTask" runat="server" Text="Add More" CssClass="bigButton"/>                
                <asp:Button ID="btnCreateBudget" runat="server" Text="Create" CssClass="bigButton"/>
                <asp:Button ID="btnClearInfo" runat="server" Text="Clear" CssClass="bigButton"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
