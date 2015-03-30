using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Diagnostics;
using System.Text;


namespace SnippetConnect
{
    
    public partial class Manage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if (Session["AdminID"] != null)
            {
                lblAdmin.Text = "Welcome to :: " + Session["AdminID"].ToString();
            }

            else
            {
               
                lblAdmin.Text = "";

            }
            
        }


    }
}