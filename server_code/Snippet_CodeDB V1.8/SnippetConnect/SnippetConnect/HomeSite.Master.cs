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
using System.IO;

namespace SnippetConnect
{
    public partial class HomeSite : System.Web.UI.MasterPage
    {
       SqlConnection con = new SqlConnection("Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["AdminID"] != null)
            {
                lblLogin.Text = "Welcome to :: " + Session["AdminID"].ToString();
            }

            else
            {
                //catch (Exception ex)
                lblLogin.Text = "";

            }

        }

        
    }
}