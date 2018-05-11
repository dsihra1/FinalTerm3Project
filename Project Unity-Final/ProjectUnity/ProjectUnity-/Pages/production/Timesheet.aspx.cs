using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectUnity_.Pages.production
{
    public partial class Timesheet : System.Web.UI.Page
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

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            
            
            string shiftstart = txtShiftStart.Text;
            string shiftend = txtShiftEnd.Text;
            shiftstart = shiftstart.Substring(shiftstart.IndexOf("T")+1);
            shiftend = shiftend.Substring(shiftend.IndexOf("T") + 1);
            int breakduration = Convert.ToInt32(txtBreakDuration.Text);
            string starthr = shiftstart.Substring(0, shiftstart.IndexOf(":"));
            string startmin = shiftstart.Substring(shiftstart.IndexOf(":")+1);
            string endhr = shiftend.Substring(0, shiftend.IndexOf(":"));
            string endmin = shiftend.Substring(shiftend.IndexOf(":")+1);
            txtTotalHours.Text = "Shift Start Time:" + shiftstart + "\n";
            txtTotalHours.Text += "Shift End Time:" + shiftend + "\n";
            txtTotalHours.Text += "Break Duration:" + breakduration.ToString() + "mins";
            int start = Convert.ToInt32(starthr) * 60 + Convert.ToInt32(startmin);
            int end = Convert.ToInt32(endhr) * 60 + Convert.ToInt32(endmin);
            int totalworked = (end - start) - breakduration;
            totalworked = totalworked / 60;
            lblTotalHours.Text = totalworked.ToString();
        }
    }       
}
    
