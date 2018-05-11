<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportDesign.aspx.cs" Inherits="ProjectUnity_.Pages.report.ReportDesign" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
            margin:auto;
            
        }
        .auto-style6 {
            left: 0px;
            top: 0px;
        }
        .auto-style7 {
            width: 500px
        }
        .auto-style8 {
            margin-left: 40px;
        }
        .auto-style10 {
            width: 101px;
        }
        .auto-style11 {
            width: 280px;
        }
        .auto-style12 {
            width: 74px;
        }
        .auto-style13 {
            width: 100px;
        }
        .auto-style19 {
            width: 201px;
        }
        .auto-style20 {
            width: 262px;
        }
        .auto-style21 {
            width: 94px;
        }
        .auto-style22 {
            width: 95px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
       
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" id="menu" visible="false" runat="server" style="left: 0; right: 0; top: 0; height: 43px">
            
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
        	<a class="navbar-brand" href = "HomePage.aspx" id="home"><img src="../../Images/Nature.png" class ="auto-style1"/> Project Unity</a>

    </li>
       </ul>
             
<ul class="navbar-nav" runat="server" id="clientnavbar">
      
             <li class="nav-item dropdown" >
      <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
        Clients
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/client/ClientHome.aspx">Home</a>
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
        <a class="dropdown-item" href="../../Pages/project/ProjectHome.aspx">Home</a>
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
        <a class="dropdown-item" href="../../Pages/bid/BidHome.aspx">Home</a>
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
        <a class="dropdown-item" href="../../Pages/production/ProductionHomePage.aspx">Home</a>
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
        <a class="dropdown-item" href="../../Pages/report/ReportHome.aspx">Home</a>
        <a class="dropdown-item" href="../../Pages/report/ReportAdmin.aspx">Admin Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportDailyCost.aspx">Daily Cost Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportDesign.aspx">Design Bid Report</a>
        <a class="dropdown-item" href="../../Pages/report/ReportProduction.aspx">Production Report</a>
        
        
       
      </div>
    </li>
</ul>
             <ul class="navbar-nav" runat="server" id="employeenav">
     <li class="auto-style6"id="liemployee">
      <a class="nav-link dropdown-toggle" href="#" id="employeenavbar" data-toggle="dropdown" >
        Employees
      </a>
                       <div class="dropdown-menu">
        <a class="dropdown-item" href="../../Pages/employee/Employee-Home.aspx">Home</a>
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
       
        <asp:Panel ID="Content" runat="server">
             <div class="container">
                 <hr />
                 <asp:Label ID="Label1" class="center" runat="server" Text="Natural by Design" Font-Bold="True" Font-Size="XX-Large"></asp:Label>



                 <br />



                 &nbsp;
                 <asp:Label ID="lblheading2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Design Bid"></asp:Label>
                 <br />
                 &nbsp;
                 <br />
                 <asp:Label ID="lblclienthead" runat="server" Font-Bold="True" Font-Size="Large" Text="Client"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="lbltest" runat="server"></asp:Label>
                 <br />
                 <table style="border-style: none; border-width: inherit; border-color: #000000; width100%:;">
                     <tr>
                         <td class="auto-style2" style="width: 500px">
                             <asp:Label ID="lblClientName" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style1" style="width: 500px">
                             <asp:Label ID="lblClientAddress" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style1" style="width: 500px">
                             <asp:Label ID="lblCLientContact" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style1" style="width: 500px">
                             <asp:Label ID="lblPhone" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
                 <asp:Label ID="lblSecondhead" runat="server" Font-Bold="True" Font-Size="Large" Text="NBD Staff"></asp:Label>
                 <br />
                 <table style="border: thin none #000000; width: 50">
                     <tr>
                         <td style="width: 200px">
                             <asp:Label ID="lblSaleshead" runat="server" Text="Sales Associate"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblSales" runat="server"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblSPhonehead" runat="server" Text="Phone"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblSPhone" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 200px">
                             <asp:Label ID="lblDesignerHEad" runat="server" Text="Designer"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblDesigner" runat="server"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblDPhonehead" runat="server" Text="Phone"></asp:Label>
                         </td>
                         <td style="width: 200px">
                             <asp:Label ID="lblDPhone" runat="server"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
                 <asp:Label ID="lblThirdhead" runat="server" Font-Bold="True" Font-Size="Large" Text="Project"></asp:Label>
                 <br />
                 <table class="auto-style7" style="border: thin double #000000">
                     <tr>
                         <td style="width: 500px">
                             <asp:Label ID="lblBidDate" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 500px">
                             <asp:Label ID="lblBegindate" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8" style="width: 500px">
                             <asp:Label ID="lblEndDAte" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8" style="width: 500px">
                             <asp:Label ID="lblSite" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style8" style="width: 500px">
                             <asp:Label ID="lblBidAmount" runat="server" Width="500px"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
                 <asp:Label ID="lblThirdHEading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Material Requirements"></asp:Label>
                 <br />
                 <table style="width: 800px" class="w-50">
                     <tr>
                         <td colspan="5">
                             <asp:Label ID="lblpHead" runat="server" Font-Bold="True" Font-Size="Large" Text="Plants" Width="800px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblQtyHEad" runat="server" Text="Quantity"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblDescHEad" runat="server" Text="Description"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblSizehead" runat="server" Text="Size"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblUnitpHead" runat="server" Text="Unit Price"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblExtHEad" runat="server" Text="Extended Price"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblQty1" runat="server" Width="200px"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lbldesc1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblSize1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblUnitp1" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblExtP1" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblQty2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblDesc2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblSize2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblUnitp2" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblExtp2" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblQty3" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblDesc3" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblSize3" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblUnitp3" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblExtp3" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">&nbsp;</td>
                         <td class="auto-style11">&nbsp;</td>
                         <td class="auto-style12">&nbsp;</td>
                         <td class="auto-style13">&nbsp;</td>
                         <td style="width: 150px">&nbsp;</td>
                     </tr>
                     <tr>
                         <td colspan="5">
                             <asp:Label ID="lblPoHEad" runat="server" Font-Bold="True" Font-Size="Large" Text="Pottery"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblpoqty1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblpodesc1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblposize1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblpoup1" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblpoext1" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblpoqty2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblpodesc2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblposize2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblpoup2" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblpoext2" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">&nbsp;</td>
                         <td class="auto-style11">&nbsp;</td>
                         <td class="auto-style12">&nbsp;</td>
                         <td class="auto-style13">&nbsp;</td>
                         <td style="width: 150px">&nbsp;</td>
                     </tr>
                     <tr>
                         <td colspan="5">
                             <asp:Label ID="lblmathead" runat="server" Font-Bold="True" Font-Size="Large" Text="Materials"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblmqty1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblmdesc1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">
                             <asp:Label ID="lblmsize1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style13">
                             <asp:Label ID="lblmup1" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblmext1" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="lblmqty2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style11">
                             <asp:Label ID="lblmdesc2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style12">&nbsp;</td>
                         <td class="auto-style13">
                             <asp:Label ID="lblmup2" runat="server"></asp:Label>
                         </td>
                         <td style="width: 150px">
                             <asp:Label ID="lblmext2" runat="server"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
                 <asp:Label ID="lblLabourHEad" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Labour Requirements"></asp:Label>
                 <br />
                 <table style="width: 800px">
                     <tr>
                         <td class="auto-style19">
                             <asp:Label ID="lbllQuantity" runat="server" Text="Hours"></asp:Label>
                         </td>
                         <td class="auto-style20">
                             <asp:Label ID="lblldeschead" runat="server" Text="Description"></asp:Label>
                         </td>
                         <td class="auto-style21">&nbsp;</td>
                         <td class="auto-style22">
                             <asp:Label ID="lblluphead" runat="server" Text="Unit Price"></asp:Label>
                         </td>
                         <td>
                             <asp:Label ID="lblmexthead" runat="server" Text="Extended Price"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style19">
                             <asp:Label ID="lblh1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style20">
                             <asp:Label ID="lblwrkdesc1" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style21">&nbsp;</td>
                         <td class="auto-style22">
                             <asp:Label ID="lbllup1" runat="server"></asp:Label>
                         </td>
                         <td>
                             <asp:Label ID="lbllext1" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style19">
                             <asp:Label ID="lblh2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style20">
                             <asp:Label ID="lblwrkdesc2" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style21">&nbsp;</td>
                         <td class="auto-style22">
                             <asp:Label ID="lbllup2" runat="server"></asp:Label>
                         </td>
                         <td>
                             <asp:Label ID="lbllext2" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style19">
                             <asp:Label ID="lblh3" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style20">
                             <asp:Label ID="lblwrkdesc3" runat="server"></asp:Label>
                         </td>
                         <td class="auto-style21">&nbsp;</td>
                         <td class="auto-style22">
                             <asp:Label ID="lbllup3" runat="server"></asp:Label>
                         </td>
                         <td>
                             <asp:Label ID="lbllext3" runat="server"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
                 <br />



             </div>
    
        </asp:Panel>
        
    </form>
    
    
    
</body>
</html>
