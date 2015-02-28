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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=USAK-WACKINESS\\SQLEXPRESS;Initial Catalog=ProjectSnippet;User ID=sa;Password=sa1234");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    txtUser.Text = Request.Cookies["username"].Value;
                    txtPass.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select * From Admin where Username =@username and Password=@password", cn);
            cmd.Parameters.AddWithValue("@username", txtUser.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);


            if (cbRem.Checked)
            {
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["username"].Value = txtUser.Text.Trim();
            Response.Cookies["password"].Value = txtPass.Text.Trim();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Session["USER_ID"] = txtUser.Text;
                Response.Redirect("HomeForm.aspx?Parameter=" + "Welcome : " + txtUser.Text);
               
                

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "Myscript1", @"alert('Invalid User or Password !!');", true);

            }
        }
    }
}