using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectUnity_
{
    public partial class Manage_User_Roles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.IsInRole("Admin"))
            {
                this.Content.Visible = true;
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

        protected void BtnAssignRole_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
            RoleManager<IdentityRole> roleMgr = new RoleManager<IdentityRole>(roleStore);
            IdentityResult userResult = manager.AddToRole(ddlusers.SelectedValue,ddlUserRoles.SelectedItem.Text);
            if(userResult.Succeeded)
            {
                lblUser.Text ="User:" + ddlusers.SelectedItem.ToString() + " " + "Assigned To Role : " + ddlUserRoles.SelectedItem.ToString();
            }


        }
    }
}