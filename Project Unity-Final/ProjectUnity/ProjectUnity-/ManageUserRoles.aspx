<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUserRoles.aspx.cs" Inherits="ProjectUnity_.Manage_User_Roles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            margin-left: 440px;
        }
        .auto-style1 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-expand-sm bg-light">

  <!-- Links -->
  <ul class="navbar-nav">
   <li class="nav-item">
        	<a   href = "HomePage.aspx" id="home"><img src="Images/Nature.png" class ="auto-style1"/></a>
        </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/project/ProjectHome.aspx" id="projects">Projects</a><br />
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/production/ProductionHomePage.aspx" id="production">Production</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/bid/Bid-Home.aspx" id="designBid">Design Bids</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/employee/Employee-Home.aspx">Employees</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/report/ReportHome.aspx" id="reports">Reports</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "" id="about">About</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "Pages/client/Client-Home.aspx" id="clients">Clients</a>
           </li>
       <li class="nav-item">
            <a class="nav-link" href = "" id="help">Help</a>
           </li>
       <li class="nav-item">
            <asp:LinkButton ID="BtnLogout" runat="server" class="nav-link" OnClick="BtnLogout_Click">Log Out</asp:LinkButton>
           </li>
      </ul>
              </nav>
        </div>
        <asp:Panel ID="Content" runat="server" Visible="False">
           <div class="auto-style2">
                <asp:Label ID="lblUsername" runat="server" Text="Select a user to Change Role  :"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlusers" runat="server" AutoPostBack="True" DataSourceID="dsUsers" DataTextField="UserName" DataValueField="Id">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <asp:Label ID="lblRoleAssign" runat="server" Text="Select a Role   :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlUserRoles" runat="server" AutoPostBack="True" DataSourceID="dsUserRoles" DataTextField="Name" DataValueField="Id">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnAssignRole" runat="server" OnClick="BtnAssignRole_Click" Text="Assign Role" />
                <br />
                <br />
                <asp:Label ID="lblUser" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:SqlDataSource ID="dsUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserName], [Id] FROM [AspNetUsers]"></asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="dsUserRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [Id] FROM [AspNetRoles]"></asp:SqlDataSource>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br />
            </div>
       
        </asp:Panel>
    </form>
</body>
</html>
