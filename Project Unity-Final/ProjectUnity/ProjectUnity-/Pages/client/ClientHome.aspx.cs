using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectUnity;
using System.Data;
using ProjectUnity.NBD_SBDataSetTableAdapters;


namespace ProjectUnity_.Pages.client
{
    public partial class Client_Home : System.Web.UI.Page
    {
        private static  NBD_SBDataSet dsnbd;
        private static DataRow[] rows;
        PROJECTTableAdapter daproj = new PROJECTTableAdapter();
        int clientID;
        
        static Client_Home()
        {
            dsnbd = new NBD_SBDataSet();
            CLIENT1TableAdapter daclidet = new CLIENT1TableAdapter();
           
            
            try
            {
                daclidet.Fill(dsnbd.CLIENT1);
                            
            }
            catch { }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            if (this.IsPostBack)
            {
                this.lstCliInfo.Visible = true;
                this.BtnShowBid.Visible = true;
            }
            
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

        protected void btnClientSelect_Click(object sender, EventArgs e)
        {
            if((ddClient.SelectedIndex!=0)&&(ddlCity.SelectedIndex!=0))
            {
                if (dsnbd.CLIENT1.Count > 0)
                {
                    string criteria = GetClientCriteria();
                    rows = (criteria.Length > 0) ? dsnbd.CLIENT1.Select(criteria) : dsnbd.CLIENT1.Select();
                    if (rows.Length==0)
                    {
                        lblStatus.Text = "No Matching Records";
                    }
                    else
                    {
                        DisplayCliData();
                    }
                }
                this.lstCliInfo.Visible = true;
                this.BtnShowBid.Visible = true;
            }
            
            else if (txtClientName.Text != "")
            {
                if (dsnbd.CLIENT1.Count > 0)
                {
                    string criteria  = (this.txtClientName.Text.Length > 0) ? "cliName Like '" + this.txtClientName.Text + "*'" : "";
                    rows = (criteria.Length > 0) ? dsnbd.CLIENT1.Select(criteria) : dsnbd.CLIENT1.Select();
                    if (rows.Length==0)
                    {
                        lblStatus.Text = "No Matching Records";
                    }
                    else
                    {
                        DisplayCliData();
                    }
                   
                }

                this.lstCliInfo.Visible = true;
                this.BtnShowBid.Visible = true;
            }
            

           else if (txtPhone.Text!="")
            {
                string criteria  = (this.txtPhone.Text.Length > 0) ? "cliPhone =" + this.txtPhone.Text : "";
                rows = (criteria.Length > 0) ? dsnbd.CLIENT1.Select(criteria) : dsnbd.CLIENT1.Select();
                if (rows.Length == 0)
                {
                    lblStatus.Text = "No Matching Records";
                }
                else
                {
                    DisplayCliData();
                }
                this.lstCliInfo.Visible = true;
                this.BtnShowBid.Visible = true;
            }
           
            else
            {

                string criteria = "Please select a search criteria";
                lblStatus.Text = criteria.ToString();
               
            }
            
           
        }

        private string GetClientCriteria()
        {
            string criteria = "";
            if((ddClient.SelectedValue!="")&&(ddlCity.SelectedValue!=""))
            {
                criteria = (this.ddClient.SelectedValue.Length > 0) ? "ID =" + this.ddClient.SelectedValue + "AND cityID=" + ddlCity.SelectedValue : "";
            }
            
            
            
           
            return criteria;
        }

        private void DisplayCliData()
        {

            this.lstCliInfo.Items.Clear();
            foreach (DataRow row in rows)
            {
                this.lstCliInfo.Items.Add(row.ItemArray[1].ToString() + ": " + row.ItemArray[2].ToString() + " " + row.ItemArray[4].ToString());
                clientID = Convert.ToInt32(row.ItemArray[0]);
            }
            Session["Data"] = clientID;
            //lblStatus.Text = "Clients Found: " + ((rows.Length > 0) ? rows.Length.ToString() : "0");
             

        }

        protected void BtnShowBid_Click(object sender, EventArgs e)
        {
            this.lstbidInfo.Items.Clear();
            try
            {
                daproj.Fill(dsnbd.PROJECT,Convert.ToInt32(Session["Data"]));
            }
            catch { }
            
           
            foreach (DataRow r in dsnbd.PROJECT)
            {
                this.lstbidInfo.Items.Add("Project Name:" +r.ItemArray[1].ToString() +"   " + "Project Site:" + r.ItemArray[2].ToString() + "   " +"Bid Date:"+ r.ItemArray[3].ToString());
                
                
            }
            this.lstbidInfo.Visible = true;
            this.btnBidReport.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../report/ReportDesign.aspx");
        }
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("~/Login.aspx");

        }
    }
}