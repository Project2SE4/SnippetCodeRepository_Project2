using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Diagnostics;

namespace SnippetConnect
{
    public partial class HomeSite : System.Web.UI.MasterPage
    {
       SqlConnection con = new SqlConnection("Data Source=USAK-WACKINESS\\SQLEXPRESS;Initial Catalog=ProjectSnippet;User ID=sa;Password=sa1234");
       protected void Page_Load(object sender, EventArgs e)
       {

          // try
           if (Session["USER_ID"] != null)
           {
               lblLogin.Text = "Wellcome to :: " + Session["USER_ID"].ToString();
           }

           else
           {
               //catch (Exception ex)
               lblLogin.Text = "";
                
           }

          

       }

        protected void btnView_Click(object sender, EventArgs e)
        {
            getView.WebService myCusDetail = new getView.WebService();
            DataTable dt = myCusDetail.DetailCustomer(this.txtTest.Text);
            if (dt.Rows.Count > 0)
            {
                this.lblID.Text = (string)dt.Rows[0]["ID"];
               this.lblLang.Text = (string)dt.Rows[0]["Language"];
               this.lblContent.Text = (string)dt.Rows[0]["Content"];
               this.lblSC.Text = (string)dt.Rows[0]["SourceCode"];

            }
        }
    }
}