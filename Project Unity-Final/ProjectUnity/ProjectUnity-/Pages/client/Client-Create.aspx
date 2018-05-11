<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client-Create.aspx.cs" Inherits="ProjectUnity_.Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <title>Home Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .calendar{
            float:right;
        }
        .container
        {
            padding-top:100px;
        }
        .txtbox
        {
            width: 166px;
           
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
       
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" id="menu" visible="false" runat="server" style="left: 0; right: 0; top: 0; height: 43px">
            
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
        	<a class="navbar-brand" href = "../../HomePage.aspx" id="home"><img src="../../Images/Nature.png" class ="auto-style1"/> Project Unity</a>

    </li>
       </ul>
             
<ul class="navbar-nav" runat="server" id="clientnavbar">
      
             <li class="nav-item dropdown" >
      <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
        Clients
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/client/ClientHome.aspx">Client Home</a>
        <a class="dropdown-item" href="../../Pages/client/Client-Create.aspx">Create Client</a>
        <a class="dropdown-item" href="../../Pages/client/Client-Edit.aspx">Edit Client</a>
        <a class="dropdown-item" runat="server" id="ede" href="../../Pages/client/Client-Delete.aspx">Delete Client</a>
        
      </div>
    </li>
    </ul>
<ul class="navbar-nav" runat="server" id="projectsnav">
     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="projectnavbar" data-toggle="dropdown">
        Projects
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/project/ProjectHome.aspx">Project Home</a>
        <a class="dropdown-item" href="../../Pages/project/Project-Create.aspx">Create Project</a>
        <a class="dropdown-item" href="../../Pages/project/Project-Edit.aspx">Edit Project</a>
        <a class="dropdown-item" runat="server" id="pde" href="../../Pages/project/Project-Delete.aspx">Delete Project</a>
        
      </div>
    </li>
    </ul>
  <ul class="navbar-nav" runat="server" id="bidsnav">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="bidnavbar" data-toggle="dropdown">
        Bids
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/bid/BidHome.aspx">Bid Home</a>
        <a class="dropdown-item" href="../../Pages/bid/Bid-Create.aspx">Create Bid</a>
        <a class="dropdown-item" href="../../Pages/bid/Bid-Edit.aspx">Edit Bid</a>
        <a class="dropdown-item" runat="server" id="bde" href="../../Pages/bid/Bid-Delete.aspx">Delete Bid</a>
        <a class="dropdown-item"  href="../../Pages/bid/DesignBudget-Create.aspx">Create Budget </a>
                            
        
      </div>
    </li>
      </ul>
             <ul class="navbar-nav" runat="server" id="productionnav">
     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="productionnavbar" data-toggle="dropdown">
        Production
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/production/ProductionHomePage.aspx">Plan Home</a>
        <a class="dropdown-item" href="../../Pages/production/ProdTeamHome.aspx">Team Home</a>
        <a class="dropdown-item" runat="server" id="ppc" href="../../Pages/production/ProdPlan-Create.aspx">Create Plan</a>
        <a class="dropdown-item" runat="server" id="ppe" href="../../Pages/production/ProdPlan-Edit.aspx">Edit Plan</a>
        <a class="dropdown-item" runat="server" id="ppd" href="../../Pages/production/ProdPlan-Delete.aspx">Delete Plan</a>
        <a class="dropdown-item" runat="server" id="A1" href="../../Pages/production/Timesheet.aspx">Timesheet</a>
                           
       
      </div>
    </li>
                 </ul>
             <ul class="navbar-nav" runat="server" id="reportsnav">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="reportnavbar" data-toggle="dropdown" >
        Reports
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/report/ReportHome.aspx">Report Home</a>
        <a class="dropdown-item" href="../../Pages/report/ReportAdmin.aspx">Admin Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportDailyCost.aspx">Daily Cost Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportDesign.aspx">Design Bid Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportProduction.aspx">Production Report</a>
        
        
       
      </div>
    </li>
</ul>
             <ul class="navbar-nav" runat="server" id="employeenav">
     <li class="nav-item dropdown"id="liemployee">
      <a class="nav-link dropdown-toggle" href="#" id="employeenavbar" data-toggle="dropdown" >
        Employees
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/employee/Employee-Home.aspx">Employee Home</a>
        <a class="dropdown-item" href="../../Pages/employee/Employees.aspx">Create Employee</a>
        <a class="dropdown-item" href="../../Pages/employee/EmployeeEdit.aspx">Edit Employee</a>
        <a class="dropdown-item" href="../../Pages/employee/EmployeeDelete.aspx">Delete Employee</a>
        
       
      </div>
    </li>
     
    </ul>

<ul class="nav navbar-nav navbar-right" runat="server" id="managenav">
       
       <li class="nav-item">
            <a class="nav-link" href = "../ManageUserRoles.aspx" id="manage">Manage User Roles</a>
           </li>
    </ul>
            <ul class="nav navbar-nav navbar-right" runat="server" id="logoutnav">
       <li class="nav-item">
            <asp:LinkButton ID="BtnLogout" runat="server" class="nav-link" OnClick="BtnLogout_Click" CausesValidation="False">Log Out</asp:LinkButton>
           </li>
      </ul>
              </nav>     <asp:Panel ID="Content" runat="server" Visible="False">
        <div class="container">

            
            <h1>Client Create</h1>
            
            
            
            <table>
                <tr>
                    <td><asp:Label ID="lblSales" runat="server" ForeColor="#000000" Text="Sales Person:"></asp:Label></td>
                    <td><asp:DropDownList ID="ddSales" runat="server" AutoPostBack="True" DataSourceID="dsSalesPerson" DataTextField="Employee" DataValueField="ID" CssClass="txtbox"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblName" runat="server" ForeColor="#000000" Text="Client Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfName" runat="server" ErrorMessage="Client Name Required" ForeColor="Red" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAddress" runat="server" ForeColor="#000000" Text="Client Address:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfAddress" runat="server" ErrorMessage="Client Address Required" Font-Italic="False" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCity" runat="server" ForeColor="#000000" Text="Client City:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddCity" runat="server" AutoPostBack="True" DataSourceID="dsCity" DataTextField="city" DataValueField="ID" CssClass="txtbox"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblProvince" runat="server" ForeColor="#000000" Text="Client Province:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddProvince" runat="server" AutoPostBack="True" DataSourceID="dsProvince" DataTextField="cliProvince" DataValueField="ID" CssClass="txtbox"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPostal" runat="server" ForeColor="#000000" Text="Client Postal Code:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPostal" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rePostalCode" runat="server" ErrorMessage="Improper Format" ForeColor="Red" ControlToValidate="txtPostal" ValidationExpression="^[A-Z]\d[A-Z] \d[A-Z]\d$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhone" runat="server" ForeColor="#000000" Text="Client Phone Number:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rePhone" runat="server" ErrorMessage="Improper Format" ForeColor="Red" ControlToValidate="txtPhone">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConFirst" runat="server" ForeColor="#000000" Text="Client Contact First Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConFirst" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConFirst" runat="server" ErrorMessage="Client Contact First Name Required" ForeColor="Red" ControlToValidate="txtConFirst">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConLast" runat="server" ForeColor="#000000" Text="Client Contact Last Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConLast" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConLast" runat="server" ErrorMessage="Client Contact Last Name Required" ForeColor="Red" ControlToValidate="txtConLast">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConPosition" runat="server" ForeColor="#000000" Text="Client Contact Position:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConPosition" runat="server" CssClass="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfConPosition" runat="server" ErrorMessage="Client Contact Position Required" ForeColor="Red" ControlToValidate="txtConLast">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCreate" runat="server" CssClass="btn" Text="Create" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" CssClass="btn" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ObjectDataSource ID="dsSalesPerson" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.SalesListTableAdapter"></asp:ObjectDataSource>
                    </td>
                    <td>
                        <asp:ObjectDataSource ID="dsCity" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.CITYTableAdapter"></asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ObjectDataSource ID="dsProvince" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.CLIENT1TableAdapter"></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            <div style="margin:30px; position: absolute; top: 100px;">
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
              </asp:Panel>
        
          
    </form>
</body>
</html>
