﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project-Create.aspx.cs" Inherits="ProjectUnity_.Project" %>

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
           
               <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Create</h1>
                
             
             <!--  <asp:Label ID="lblProjectName" runat="server" Text="Project Name:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtProjectName" runat="server"></asp:TextBox>-->

            </div>
            <div>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                 <asp:Label ID="Label1" runat="server" Text="Project Name:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProjectSite" runat="server" Text="Project Site:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtSite" runat="server" CssClass="txtbox"  Height="28px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBidDate" runat="server" Text="Bid Date:"></asp:Label>
&nbsp;<asp:TextBox ID="txtBidDate" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBidDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date." ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBidDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" ForeColor="Red">*</asp:CompareValidator>
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblEstDate" runat="server" Text="Estimate Start Date:"></asp:Label>
                 &nbsp;<asp:TextBox ID="txtEstDate" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEstDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date." ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtEstDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" ForeColor="Red">*</asp:CompareValidator>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                 <asp:Label ID="lblEstEndDate" runat="server" Text="Estimate Finished Date:"></asp:Label>
&nbsp;<asp:TextBox ID="txtEstEndDate" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEstEndDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date." ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtEstEndDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" ForeColor="Red">*</asp:CompareValidator>
                 <br />
&nbsp;<br /> 
            </div>
            <div style="height: 58px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Label ID="lblActDate" runat="server" Text="Actual Start Date:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtActDate" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtActDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date." ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtActDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" ForeColor="Red">*</asp:CompareValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblActEnd" runat="server" Text="Actual End Date:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtActEnd" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtActDate" CssClass="Validator" Display="Dynamic" ErrorMessage="You did not choose a date." ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtActDate" CssClass="Validator" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" ForeColor="Red">*</asp:CompareValidator>
                <br />
                <br />
            </div>
            <div style="height: 58px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblEstCost" runat="server" Text="Estimate Cost:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtEstCost" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="lblActCost" runat="server" Text="Actual Cost:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtActCost" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                <br />
                <br />
            </div>
            <div style="height: 41px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBidCustAcc" runat="server" Text="Customer Accept Bid:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtCustAccept" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblBidManAcc" runat="server" Text="Management Accept Bid:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                <br />
                <br />
            </div>
            <div style="height: 5px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <br />
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCustAccept" runat="server" Text="Customer Accept:"></asp:Label>
                &nbsp;&nbsp; &nbsp;<asp:RadioButton ID="radCustAccYes" runat="server" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radCusAccNo" runat="server" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label>
                &nbsp; Management Accept:&nbsp;&nbsp;
                <asp:RadioButton ID="radManAccYes" runat="server" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radManAccNo" runat="server" Text="No" />
                </label>
                <br />
            </div>
            <div style="height: 44px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCurrentPhase" runat="server" Text="Current Phase: "></asp:Label>
                &nbsp;<asp:TextBox ID="txtCurrentPhase" runat="server" CssClass="txtbox" Height="28px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProjectIsFlagged" runat="server" Text="Project is Flagged:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radFlaggedYes" runat="server" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radFlaggedNo" runat="server" Text="No" />
                <br />
                <br />
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblClientName" runat="server" Text="Client's Name:"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlClientID" runat="server" CssClass="txtbox" Height="28px" DataSourceID="ObjectDataSource1" DataTextField="cliName" DataValueField="ID">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDesignerName" runat="server" Text="Designer's Name:"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlDesignerID" runat="server" CssClass="txtbox" Height="28px" DataSourceID="ObjectDataSource2" DataTextField="designerID" DataValueField="designerID">
                </asp:DropDownList>
                <br />
                <br />
            </div>
            <div style="height: 13px">
                <br />
                <br />
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" CssClass="bigButton" Text="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" CssClass="bigButton" Height="33px" Text="Clear" Width="74px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" CssClass="bigButton" Height="33px" Text="Cancel" Width="74px" />
                <br />
                <br />
            </div>
            <div>
                &nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.CLIENT1TableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.PROJECTAllTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                        <asp:Parameter Name="Original_projName" Type="String" />
                        <asp:Parameter Name="Original_projSite" Type="String" />
                        <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                        <asp:Parameter Name="Original_projEstStart" Type="String" />
                        <asp:Parameter Name="Original_projEstEnd" Type="String" />
                        <asp:Parameter Name="Original_projActStart" Type="String" />
                        <asp:Parameter Name="Original_projActEnd" Type="String" />
                        <asp:Parameter Name="Original_projEstCost" Type="String" />
                        <asp:Parameter Name="Original_projActCost" Type="String" />
                        <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                        <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                        <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                        <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                        <asp:Parameter Name="Original_clientID" Type="Int32" />
                        <asp:Parameter Name="Original_designerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="projName" Type="String" />
                        <asp:Parameter Name="projSite" Type="String" />
                        <asp:Parameter Name="projBidDate" Type="DateTime" />
                        <asp:Parameter Name="projEstStart" Type="String" />
                        <asp:Parameter Name="projEstEnd" Type="String" />
                        <asp:Parameter Name="projActStart" Type="String" />
                        <asp:Parameter Name="projActEnd" Type="String" />
                        <asp:Parameter Name="projEstCost" Type="String" />
                        <asp:Parameter Name="projActCost" Type="String" />
                        <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                        <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                        <asp:Parameter Name="projCurrentPhase" Type="String" />
                        <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                        <asp:Parameter Name="clientID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="projName" Type="String" />
                        <asp:Parameter Name="projSite" Type="String" />
                        <asp:Parameter Name="projBidDate" Type="DateTime" />
                        <asp:Parameter Name="projEstStart" Type="String" />
                        <asp:Parameter Name="projEstEnd" Type="String" />
                        <asp:Parameter Name="projActStart" Type="String" />
                        <asp:Parameter Name="projActEnd" Type="String" />
                        <asp:Parameter Name="projEstCost" Type="String" />
                        <asp:Parameter Name="projActCost" Type="String" />
                        <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                        <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                        <asp:Parameter Name="projCurrentPhase" Type="String" />
                        <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                        <asp:Parameter Name="clientID" Type="Int32" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                        <asp:Parameter Name="Original_projName" Type="String" />
                        <asp:Parameter Name="Original_projSite" Type="String" />
                        <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                        <asp:Parameter Name="Original_projEstStart" Type="String" />
                        <asp:Parameter Name="Original_projEstEnd" Type="String" />
                        <asp:Parameter Name="Original_projActStart" Type="String" />
                        <asp:Parameter Name="Original_projActEnd" Type="String" />
                        <asp:Parameter Name="Original_projEstCost" Type="String" />
                        <asp:Parameter Name="Original_projActCost" Type="String" />
                        <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                        <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                        <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                        <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                        <asp:Parameter Name="Original_clientID" Type="Int32" />
                        <asp:Parameter Name="Original_designerID" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
             </div>

            <div>
            </div>
      
     </asp:Panel>
    </form>
</body>
</html>
