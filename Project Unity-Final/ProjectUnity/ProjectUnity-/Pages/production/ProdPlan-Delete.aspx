﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdPlan-Delete.aspx.cs" Inherits="ProjectUnity_.ProdPlan_Delete" %>

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
            width: 15%;
           
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
                            <a class="dropdown-item" runat="server" id="A2" href="../../Pages/bid/DesignBudget-Create.aspx">Create Budget </a>
        
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
            <asp:LinkButton ID="BtnLogout" runat="server" class="nav-link" OnClick="BtnLogout_Click">Log Out</asp:LinkButton>
           </li>
      </ul>
              </nav>
    
         <asp:Panel ID="Content" runat="server" Visible="false">
        <div class="container">
            <asp:Label ID="lblProjectSelect" runat="server" Text="Select a Project For which you want to delete a production plan" style="margin:40px;"></asp:Label>
            <asp:DropDownList ID="ddlProjectNameSelect" runat="server" AutoPostBack="True" Width="166px">
            </asp:DropDownList>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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
            <asp:Button ID="btnDeleteProdPlan" runat="server" Text="Delete" CssClass="bigButton"/>
            <asp:Button ID="btnCancelDelete" runat="server" Text="Cancel" CssClass="bigButton"/>

        </div>
            </asp:Panel>
    </form>
</body>
</html>