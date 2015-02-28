using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SnippetConnect
{
    public partial class Language : System.Web.UI.Page
    {
        string _ProjectSnippet = ConfigurationManager.ConnectionStrings["ProjectSnippet"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               // PopulateData();

            }

            try
            {
                lblAdmin.Text = Request.QueryString["Parameter"].ToString();
            }
            catch (Exception ex)
            {
                lblAdmin.Text = "";
            }
        }
    }
}