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
using System.Configuration;

namespace SnippetConnect
{
    public partial class Login : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //SqlConnection cn = new SqlConnection("Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                //{
                //    txtUser.Text = Request.Cookies["username"].Value;
                //    txtPass.Attributes["value"] = Request.Cookies["password"].Value;
                //}
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            //cn.Open();
            //SqlCommand cmd = new SqlCommand("Select * From Admin where Username =@username and Password=@password", cn);
            //cmd.Parameters.AddWithValue("@username", txtUser.Text);
            //cmd.Parameters.AddWithValue("@password", txtPass.Text);

               DataTable dt = new DataTable();

               using (SqlConnection conn = new SqlConnection(_connStr))
               {

                   string sql = "Select * From Admin where Username =@username and Password=@password";

                   using (SqlCommand cmd = new SqlCommand(sql, conn))
                   {
                       cmd.Parameters.AddWithValue("@username", txtUser.Text);
                       cmd.Parameters.AddWithValue("@password", txtPass.Text);

                       using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                       {

                           da.Fill(dt);
                           if (dt.Rows.Count > 0)
                           {

                               Response.Redirect("homeform.aspx?Parameter=" + "Welcome : " + txtUser.Text);


                           }
                           else
                           {
                               ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "Myscript1", @"alert('Invalid Username or Password !!');", true);

                           }

                       }
                   }
               }


            //if (cbRem.Checked)
            //{
            //    Response.Cookies["username"].Expires = DateTime.Now.AddDays(30);
            //    Response.Cookies["password"].Expires = DateTime.Now.AddDays(30);
            //}
            //else
            //{
            //    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
            //    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

            //}
            //Response.Cookies["username"].Value = txtUser.Text.Trim();
            //Response.Cookies["password"].Value = txtPass.Text.Trim();

        }
    }
}