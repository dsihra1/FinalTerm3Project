<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionHomePage.aspx.cs" Inherits="ProjectUnity_.ProductionHomePage" %>

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

            <asp:Label ID="lblSelectPlanProject" runat="server" Text="Choose A Project Plan To View:"></asp:Label>
&nbsp;
            <asp:DropDownList ID="ddlSelectProd" runat="server" Height="23px" Width="143px" AutoPostBack="True" DataSourceID="obsProduction" DataTextField="projName" DataValueField="clientID">
            </asp:DropDownList>
                 <br />
            <br />
                 <asp:Label ID="lblProjectBidInfo" runat="server" Font-Bold="True" Font-Size="Large" Text="Project Bid Information"></asp:Label>
                 <br />
            <br />
            <asp:DetailsView ID="dvProduction" runat="server" Height="50px" Width="513px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="dsProjectBid">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="projName" HeaderText="Name" SortExpression="projName" />
                    <asp:BoundField DataField="projSite" HeaderText="Project Site" SortExpression="projSite" />
                    <asp:BoundField DataField="projEstStart" HeaderText="Estimated Start Date" SortExpression="projEstStart" />
                    <asp:BoundField DataField="projEstEnd" HeaderText="Estimated End Date" SortExpression="projEstEnd" />
                    <asp:BoundField DataField="projEstCost" DataFormatString="{0:c}" HeaderText="Bid Amount" SortExpression="projEstCost" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>

                 <br />
                 <asp:Label ID="lblMatReq" runat="server" Font-Bold="True" Font-Size="Large" Text="Material Requirements"></asp:Label>
                 <br />
                 <br />
                 <asp:Label ID="lblPlants" runat="server" Font-Bold="True" Font-Size="Large" Text="Plants"></asp:Label>
                 <br />
                 <br />
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsPlantsInfo" ForeColor="#333333" GridLines="None" Width="972px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" />
                         <asp:BoundField DataField="matDesc" HeaderText="Description" SortExpression="matDesc" />
                         <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                         <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                         <asp:BoundField DataField="ExtendedPrice" DataFormatString="{0:c}" HeaderText="ExtendedPrice" ReadOnly="True" SortExpression="ExtendedPrice" />
                         <asp:BoundField DataField="mreqDeliver" DataFormatString="{0:d}" HeaderText="Required Delivery Date" SortExpression="mreqDeliver" />
                         <asp:BoundField DataField="mreqInstall" DataFormatString="{0:d}" HeaderText="Required Install Date" SortExpression="mreqInstall" />
                     </Columns>
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
                 <br />
                 <asp:Label ID="lblPottery" runat="server" Font-Bold="True" Font-Size="Large" Text="Pottery"></asp:Label>
                 <br />
                 <br />
                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsPotteryInfo" ForeColor="#333333" GridLines="None" Width="972px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" />
                         <asp:BoundField DataField="matDesc" HeaderText="Description" SortExpression="matDesc" />
                         <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                         <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                         <asp:BoundField DataField="ExtendedPrice" DataFormatString="{0:c}" HeaderText="ExtendedPrice" ReadOnly="True" SortExpression="ExtendedPrice" />
                         <asp:BoundField DataField="mreqDeliver" DataFormatString="{0:d}" HeaderText="Required Delivery Date" SortExpression="mreqDeliver" />
                         <asp:BoundField DataField="mreqInstall" DataFormatString="{0:d}" HeaderText="Required Install Date" SortExpression="mreqInstall" />
                     </Columns>
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
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="lblMaterials" runat="server" Font-Bold="True" Font-Size="Large" Text="Materials"></asp:Label>
                 <br />
                 <br />
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsProdMaterialInfo" ForeColor="#333333" GridLines="None" Width="972px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="Qty" HeaderText="Quantiti" SortExpression="Qty" />
                         <asp:BoundField DataField="matDesc" HeaderText="Description" SortExpression="matDesc" />
                         <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                         <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                         <asp:BoundField DataField="ExtendedPrice" DataFormatString="{0:c}" HeaderText="ExtendedPrice" ReadOnly="True" SortExpression="ExtendedPrice" />
                         <asp:BoundField DataField="mreqDeliver" DataFormatString="{0:d}" HeaderText="Required Deliver Date" SortExpression="mreqDeliver" />
                         <asp:BoundField DataField="mreqInstall" DataFormatString="{0:d}" HeaderText="Required Install Date" SortExpression="mreqInstall" />
                     </Columns>
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
                 <br />
                 <asp:Label ID="lblTools" runat="server" Font-Bold="True" Font-Size="Large" Text="Tools"></asp:Label>
                 <br />
                 <br />
                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="dsToolsINfo" ForeColor="#333333" GridLines="None" Width="302px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="toolDesc" HeaderText="Description" SortExpression="toolDesc" />
                     </Columns>
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
                 <br />
                 <asp:ObjectDataSource ID="dsProdMaterialInfo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.ProdMaterialsDataTableAdapter">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlSelectProd" Name="clientID" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                 <br />
                 <asp:ObjectDataSource ID="dsPlantsInfo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.ProdPlantsDataTableAdapter">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlSelectProd" Name="clientID" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                 <asp:ObjectDataSource ID="dsPotteryInfo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.ProdPotteryDataTableAdapter">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlSelectProd" Name="clientID" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                 <br />
                 <asp:ObjectDataSource ID="dsToolsINfo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.TOOLTableAdapter">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlSelectProd" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                 <br />
                 <asp:ObjectDataSource ID="dsProjectBid" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.ProjectFilterTableAdapter">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlSelectProd" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:ObjectDataSource>

            <br />
            <asp:ObjectDataSource ID="obsProduction" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectUnity.NBD_SBDataSetTableAdapters.PROJECTAllTableAdapter" UpdateMethod="Update">
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
            <br />

        </div>
        </asp:Panel>
    </form>
</body>
</html>
