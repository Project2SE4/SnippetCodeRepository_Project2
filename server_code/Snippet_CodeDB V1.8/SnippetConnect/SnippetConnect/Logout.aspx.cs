using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SnippetConnect
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["admin"]!=null)
            {
                HttpCookie c = new HttpCookie("admin");

                c.Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Add(c);
            }
            Response.Redirect("Login.aspx");
        }
    }
}