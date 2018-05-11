using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectUnity_
{
    public partial class EmployeeEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                if (User.IsInRole("Admin"))
                {

                    this.menu.Visible = true;
                    this.Content.Visible = true;


                }
                if (User.IsInRole("Designer"))
                {
                    this.menu.Visible = true;
                    this.productionnav.Visible = false;
                    this.employeenav.Visible = false;
                    this.projectsnav.Visible = false;
                    this.clientnavbar.Visible = false;
                    this.managenav.Visible = false;
                    this.Content.Visible = true;
                }
                if (User.IsInRole("ProductionWorker"))
                {


                    this.menu.Visible = true;
                    this.employeenav.Visible = false;
                    this.projectsnav.Visible = false;
                    this.bidsnav.Visible = false;
                    this.clientnavbar.Visible = false;
                    this.managenav.Visible = false;
                    this.ppc.Visible = false;
                    this.ppe.Visible = false;
                    this.ppd.Visible = false;
                    this.Content.Visible = true;


                }
                if (User.IsInRole("ProductionManager"))
                {


                    this.menu.Visible = true;
                    this.employeenav.Visible = false;
                    this.projectsnav.Visible = false;
                    this.bidsnav.Visible = false;
                    this.clientnavbar.Visible = false;
                    this.managenav.Visible = false;
                    this.Content.Visible = true;

                }
                if (User.IsInRole("SalesAssociate"))
                {

                    this.menu.Visible = true;
                    this.employeenav.Visible = false;
                    this.projectsnav.Visible = false;
                    this.bidsnav.Visible = false;
                    this.managenav.Visible = false;
                    this.productionnav.Visible = false;
                    this.Content.Visible = true;
                }
            }
            else
            {

                Response.Redirect("~/Login.aspx");
            }

        }
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");
        }
    }
}