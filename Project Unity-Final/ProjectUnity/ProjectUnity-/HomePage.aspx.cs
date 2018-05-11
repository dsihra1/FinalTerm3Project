using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homepage
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(User.Identity.IsAuthenticated)
            {
                lblUsername.Text = User.Identity.Name;

                if (User.IsInRole("Admin"))
                {

                    this.menu.Visible = true;
                    this.Content.Visible = true;
                    String todayDate = DateTime.Today.ToShortDateString();
                    this.txtDate.Text = todayDate;

                    if (this.calendar.SelectedDate.ToShortDateString() != todayDate)
                    {
                        this.txtDate.Text = this.calendar.SelectedDate.ToShortDateString();
                    }


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
                    String todayDate = DateTime.Today.ToShortDateString();
                    this.txtDate.Text = todayDate;

                    if (this.calendar.SelectedDate.ToShortDateString() != todayDate)
                    {
                        this.txtDate.Text = this.calendar.SelectedDate.ToShortDateString();
                    }
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
                    this.A2.Visible = true;
                    String todayDate = DateTime.Today.ToShortDateString();
                    this.txtDate.Text = todayDate;

                    if (this.calendar.SelectedDate.ToShortDateString() != todayDate)
                    {
                        this.txtDate.Text = this.calendar.SelectedDate.ToShortDateString();
                    }


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
                    String todayDate = DateTime.Today.ToShortDateString();
                    this.txtDate.Text = todayDate;

                    if (this.calendar.SelectedDate.ToShortDateString() != todayDate)
                    {
                        this.txtDate.Text = this.calendar.SelectedDate.ToShortDateString();
                    }

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
                    String todayDate = DateTime.Today.ToShortDateString();
                    this.txtDate.Text = todayDate;

                    if (this.calendar.SelectedDate.ToShortDateString() != todayDate)
                    {
                        this.txtDate.Text = this.calendar.SelectedDate.ToShortDateString();
                    }
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
        protected void btnCalendar_Click(object sender, EventArgs e)
        {
            this.calendar.Visible = true;

        }

    }
}