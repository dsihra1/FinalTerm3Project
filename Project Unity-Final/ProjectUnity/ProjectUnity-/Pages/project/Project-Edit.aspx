<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project-Edit.aspx.cs" Inherits="ProjectUnity_.Pages.project.Project_Edit" %>

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
           height: 28px;
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
        <a class="dropdown-item" href="../../Pages/production/ProductionHomePage.aspx">Phone Home</a>
        <a class="dropdown-item" href="../../Pages/production/ProdTeamHome.aspx">Team Home</a>
        <a class="dropdown-item" runat="server" id="ppc" href="../../Pages/production/ProdPlan-Create.aspx">Create Plan</a>
        <a class="dropdown-item" runat="server" id="ppe" href="../../Pages/production/ProdPlan-Edit.aspx">Edit Plan</a>
        <a class="dropdown-item" runat="server" id="ppd" href="../../Pages/production/ProdPlan-Delete.aspx">Delete Plan</a>
       
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
              <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Edit</h1>
        </div>
            <div>

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblProjectName" runat="server" Text="Project Name:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtProjectName" runat="server" CssClass="txtbox"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProjectSite" runat="server" Text="Project Site:"></asp:Label>

                 &nbsp;<asp:TextBox ID="txtProjectSite" runat="server" CssClass="txtbox"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblProjectBid" runat="server" Text="Project Bid:"></asp:Label>

                 &nbsp;<asp:TextBox ID="txtProjectBid" runat="server" CssClass="txtbox"></asp:TextBox>
                   <br />
                 <div>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblEstimateStartDate" runat="server" Text="Estimate Start Date:"></asp:Label>
                     &nbsp;<asp:TextBox ID="txtEstimateStartDate" runat="server" CssClass="txtbox"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEstimateStartDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date.">*</asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtEstimateStartDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblEstimateEndDate" runat="server" Text="Estimate End Date:"></asp:Label>
                     &nbsp;<asp:TextBox ID="txtEstimateEndDate" runat="server" CssClass="txtbox"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEstimateEndDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date.">*</asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtEstimateEndDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                 </div>
                <div>
                    <br />

                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                     <asp:Label ID="lblActualStartDate" runat="server" Text="Actual Start Date:"></asp:Label>

                    &nbsp;<asp:TextBox ID="txtActualStartDate" runat="server" CssClass="txtbox"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtActualStartDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date.">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtActualStartDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;


                    <asp:Label ID="lblActualEndDate" runat="server" Text="Actual End Date:"></asp:Label>


                    &nbsp;<asp:TextBox ID="txtActualEndDate" runat="server" CssClass="txtbox"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtActualEndDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date.">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtActualEndDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>

                </div>
                <div>
                    <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    <asp:Label ID="lblEstimateCost" runat="server" Text="Estimate Cost:"></asp:Label>


                    &nbsp;<asp:TextBox ID="txtEstimateCost" runat="server" CssClass="txtbox"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    <asp:Label ID="lblActualCost" runat="server" Text="Actual Cost:"></asp:Label>


                    &nbsp;<asp:TextBox ID="txtActualCost" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                </div>
                <div> 
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;


                    <asp:Label ID="lblCustAcc" runat="server" Text="Customer Accept Bid:"></asp:Label>


                    &nbsp;<asp:TextBox ID="txtCustAcc" runat="server" CssClass="txtbox"></asp:TextBox>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;


                    <asp:Label ID="lblManAcc" runat="server" Text="Management Accept Bid:"></asp:Label>


                    &nbsp;<asp:TextBox ID="txtMangAcc" runat="server" CssClass="txtbox"></asp:TextBox>

                    <br />
                   
                </div>
                <div>
                    &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                       <asp:Label ID="lblCustAccept" runat="server" Text="Customer Accept:"></asp:Label>
                    &nbsp;
                    <asp:RadioButton ID="radCusAccYes" runat="server" Text="Yes" />
                    &nbsp;
                    <asp:RadioButton ID="radCusAccNo" runat="server" Text="No" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

                    <asp:Label ID="radManAcc" runat="server" Text="Management Accept:"></asp:Label>
                    &nbsp;<asp:RadioButton ID="radManAccYes" runat="server" Text="Yes" />
&nbsp;
                    <asp:RadioButton ID="radManAccNo" runat="server" Text="No" />
                    <br />
                </div>
                <div>
                     &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                     <asp:Label ID="lblCurrentPhase" runat="server" Text="Current Phase:"></asp:Label>
                     &nbsp;<asp:TextBox ID="txtCurrentPhase" runat="server" CssClass="txtbox"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="lblFlagged" runat="server" Text="Project is Flagged:"></asp:Label>
                     &nbsp;<asp:RadioButton ID="radFlaggedYes" runat="server" Text="Yes" />
                    &nbsp;
                    <asp:RadioButton ID="radFlaggedNo" runat="server" Text="No" />
                    <br />
                    <div>
                        <br />
                         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                         <asp:Label ID="lblClientName" runat="server" Text="Client's Name:"></asp:Label>


                        &nbsp;<asp:DropDownList ID="ddlClientName" runat="server" CssClass="txtbox" DataSourceID="ObjectDataSource1" DataTextField="cliName" DataValueField="ID">
                        </asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;

                        <asp:Label ID="lblDesignerName" runat="server" Text="Designer's Name:"></asp:Label>

                        &nbsp;<asp:DropDownList ID="ddlDesingerName" runat="server" CssClass="txtbox">
                        </asp:DropDownList>

                    </div>
                </div>
               
            </div>
      </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" CssClass="bigButton" Text="Submit" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" CssClass="bigButton" Text="Clear" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCancel" runat="server" CssClass="bigButton" Text="Cancel" />

        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.CLIENT1TableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.PROJECTTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlDesingerName" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

        <br />
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"></asp:ObjectDataSource>

    </form>
</body>
</html>
