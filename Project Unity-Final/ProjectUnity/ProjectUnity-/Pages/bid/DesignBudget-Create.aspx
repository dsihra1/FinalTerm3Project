<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignBudget-Create.aspx.cs" Inherits="ProjectUnity_.Design_Budget" %>

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

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Create Design Budget"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Client Details"></asp:Label>
                <br />
                <asp:Label ID="lblClientName" runat="server" Text="Client Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlClientName" runat="server" Width="173px" DataSourceID="ObjectDataSource1" DataTextField="cliName" DataValueField="ID">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                
                
                    <asp:Label ID="lblClientAddress" runat="server" Text="Client Address"></asp:Label>
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:TextBox ID="txtClientAddress" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClientAddress" ErrorMessage="Client Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                
                
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Client Contact Person"></asp:Label>
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:TextBox ID="txtClientContact" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClientContact" ErrorMessage="Client Contact Person is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                
                
                    <br />
                    
                
                
                    <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:TextBox ID="txtPhone" runat="server" Width="166px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblContactDate" runat="server" Text="Contact Date"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtContactDate" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactDate" ErrorMessage="Contact Date is a Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="NBD Staff Details"></asp:Label>
                <br />
                <asp:Label ID="lblSalesAssoc" runat="server" Text="Sales Associate"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlSalesAssoc" runat="server" Width="172px" DataSourceID="ObjectDataSource2" DataTextField="Employee" DataValueField="ID" ></asp:DropDownList>
                
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSalesPhone" runat="server" Text="Sales Associate Phone"></asp:Label>
                    
                        &nbsp;&nbsp;
                <asp:TextBox ID="txtSalesPhone" runat="server" Width="167px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSalesPhone" ErrorMessage="Sales Associate Phone is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                
                
                    <asp:Label ID="lblDesignerName" runat="server" Text="Designer"></asp:Label>
                    &nbsp;
                <asp:DropDownList ID="ddlDesignerName" runat="server" Width="170px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                
                
                    <asp:Label ID="lblDesignerPhone" runat="server" Text="Designer Phone"></asp:Label>
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:TextBox ID="txtDesignerPhone" runat="server" Width="161px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDesignerPhone" ErrorMessage="Designer Phne is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                
            

            
                
                    <br />
                <br />
                    
                
            

            
                
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Project Details"></asp:Label>
                
                
                    <br />
                <br />
                
                
                    <asp:Label ID="lblBudget" runat="server" Text="Budget Submitted"></asp:Label>
                    
                        &nbsp;<asp:TextBox ID="txtBudgetDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBudgetDate" ErrorMessage="Budget SubMitted Date is  Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Estimated Begin Date"></asp:Label>
                    
                        &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEstBeginDate" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Estimated Completion Date"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtEstComplDate" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEstComplDate" ErrorMessage="Completion Date is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;
                <asp:Label ID="lblProjSite" runat="server" Text="Project Site"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlProjSite" runat="server" Width="185px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Label ID="lblBidAmount" runat="server" Text="Bid Amount"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:TextBox ID="txtBidAmount" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBidAmount" ErrorMessage="Bid Amount is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                  
                        <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddTask" runat="server" Text="Add More" CssClass="bigButton"/>                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <asp:Button ID="btnCreateBudget" runat="server" Text="Create" CssClass="bigButton" Width="105px"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClearInfo" runat="server" Text="Clear" CssClass="bigButton" Width="105px"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.CLIENT1TableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.SalesListTableAdapter"></asp:ObjectDataSource>
                <br />
        </asp:Panel>

        
    </form>
</body>
</html>
