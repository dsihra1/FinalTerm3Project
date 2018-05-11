using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectUnity;
using ProjectUnity.NBD_SBDataSetTableAdapters;
using System.Data.Sql;

namespace ProjectUnity_.Pages.report
{
    public partial class ReportDesign : System.Web.UI.Page
    {
        private static NBD_SBDataSet dsnbd;
        private static DataRow[] rows;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            dsnbd = new NBD_SBDataSet();
            ProjectDataReportTableAdapter daproj = new ProjectDataReportTableAdapter();
            PlantsDataReportTableAdapter daplant = new PlantsDataReportTableAdapter();
            MaterialsDataReportTableAdapter damat = new MaterialsDataReportTableAdapter();
            PotterysDataReportTableAdapter dapot = new PotterysDataReportTableAdapter();
            LabourdataTableAdapter dalab = new LabourdataTableAdapter();
            ClientBidTableAdapter dacliid = new ClientBidTableAdapter();

            if (User.Identity.IsAuthenticated)
            {
               
               
                if (Session["Data"] is null)
                {
                    Response.Redirect("../../Pages/client/ClientHome.aspx");
                }
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
                int cliID = Convert.ToInt32(Session["Data"]);
               
                {

                }
                try
                {
                    daproj.Fill(dsnbd.ProjectDataReport, cliID);
                    daplant.Fill(dsnbd.PlantsDataReport, cliID);
                    dapot.Fill(dsnbd.PotterysDataReport, cliID);
                    damat.Fill(dsnbd.MaterialsDataReport, cliID);
                    dalab.Fill(dsnbd.Labourdata, cliID);
                    
                }
                catch { }
                rows = dsnbd.ProjectDataReport.Select();
                foreach (DataRow r in rows)
                {
                    lblClientName.Text = "Client Name:" + "\t" + r.ItemArray[0].ToString();
                    lblClientAddress.Text = "Client Address:" + r.ItemArray[1].ToString();
                    lblCLientContact.Text = "Client Contact:" + r.ItemArray[2].ToString();
                    lblDPhone.Text = "Phone:" + r.ItemArray[3].ToString();
                    lblDesigner.Text = r.ItemArray[4].ToString();
                    string biddate = r.ItemArray[5].ToString();
                    biddate = biddate.Substring(0, biddate.IndexOf(" "));
                    lblBidDate.Text = "Bid Date:"+"\t\t"+biddate;
                    lblSite.Text = "Project Site:"+"\t\t"+r.ItemArray[6].ToString();
                    lblBegindate.Text ="Estimated Begin Date:"+"\t\t"+ r.ItemArray[7].ToString();
                    lblEndDAte.Text ="Estimated End Date:"+"\t\t"+ r.ItemArray[8].ToString();
                    lblBidAmount.Text ="Bid Amount:"+"\t\t"+"$"+ r.ItemArray[9].ToString();

                }
                rows = dsnbd.PlantsDataReport.Select();
                foreach (DataRow r in rows)
                {
                   
                    lblQty2.Text = rows[0][0].ToString();
                    lblQty1.Text = rows[1][0].ToString();
                    lblQty3.Text = rows[2][0].ToString();
                    lbldesc1.Text = rows[1][1].ToString();
                    lblDesc2.Text = rows[0][1].ToString();
                    lblDesc3.Text = rows[2][1].ToString();
                    lblSize1.Text = rows[1][3].ToString();
                    lblSize2.Text = rows[0][3].ToString();
                    lblSize3.Text = rows[2][3].ToString();
                    lblUnitp1.Text = "$" + rows[1][4].ToString();
                    lblUnitp2.Text = "$" + rows[0][4].ToString();
                    lblUnitp3.Text = "$" + rows[2][4].ToString();
                    lblExtP1.Text = "$" + rows[1][5].ToString();
                    lblExtp2.Text = "$" + rows[0][5].ToString();
                    lblExtp3.Text= "$" + rows[2][5].ToString();
                }
                if(dsnbd.PotterysDataReport.Count>0)
                {
                    rows = dsnbd.PotterysDataReport.Select();

                    foreach (DataRow r in rows)
                    {
                        lblpoqty1.Text = rows[0][0].ToString();
                        lblpoqty2.Text = rows[1][0].ToString();
                        lblpodesc1.Text = rows[0][1].ToString();
                        lblpodesc2.Text = rows[1][1].ToString();
                        lblposize1.Text = rows[0][3].ToString();
                        lblposize2.Text = rows[1][3].ToString();
                        lblpoup1.Text = "$" + rows[0][4].ToString();
                        lblpoup2.Text = "$" + rows[1][4].ToString();
                        lblpoext1.Text = "$" + rows[0][5].ToString();
                        lblpoext2.Text = "$" + rows[1][5].ToString();
                    }
                }
               

                rows = dsnbd.MaterialsDataReport.Select();
                foreach (DataRow r in rows)
                {
                    lblmqty1.Text = rows[0][0].ToString();
                    lblmqty2.Text = rows[1][0].ToString();
                    lblmdesc1.Text = rows[0][1].ToString();
                    lblmdesc2.Text = rows[1][1].ToString();
                    lblmsize1.Text = rows[0][3].ToString();
                    
                    lblmup1.Text = "$" + rows[0][4].ToString();
                    lblmup2.Text = "$" + rows[1][4].ToString();
                    lblmext1.Text = "$" + rows[0][5].ToString();
                    lblmext2.Text = "$" + rows[1][5].ToString();
                }
                rows = dsnbd.Labourdata.Select();
                foreach (DataRow r in rows)
                {
                    lblh1.Text = rows[2][0].ToString();
                    lblh2.Text = rows[0][0].ToString();
                    lblh3.Text = rows[1][0].ToString();
                    lblwrkdesc1.Text = rows[2][1].ToString();
                    lblwrkdesc2.Text = rows[0][1].ToString();
                    lblwrkdesc3.Text = rows[1][1].ToString();
                    lbllup1.Text="$"+ rows[2][2].ToString();
                    lbllup2.Text = "$" + rows[0][2].ToString();
                    lbllup3.Text = "$" + rows[1][2].ToString();
                    int ext1 = Convert.ToInt32(lblh1.Text) * Convert.ToInt32(rows[2][2]);
                    lbllext1.Text = "$" + ext1.ToString();
                    int ext2 = Convert.ToInt32(lblh2.Text) * Convert.ToInt32(rows[0][2]);
                    lbllext2.Text = "$" + ext2.ToString();
                    int ext3 = Convert.ToInt32(lblh3.Text) * Convert.ToInt32(rows[1][2]);
                    lbllext3.Text = "$" + ext3.ToString();


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