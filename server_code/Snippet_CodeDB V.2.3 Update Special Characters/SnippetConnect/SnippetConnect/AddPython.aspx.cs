using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SnippetConnect
{
    public partial class AddPython : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                PopulateData();

            }
            if (Session["AdminID"] != null)
            {
                lblAdmin.Text = "Welcome to :: " + Session["AdminID"].ToString();
            }

            else
            {

                lblAdmin.Text = "";
            }
        }

       
        private void PopulateData()
        {

            DataTable table = new DataTable();

            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = " SELECT * FROM Python ";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {

                        ad.Fill(table);

                    }

                }

            }



        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Insert into Python(Content_python, Sourcecode_python) values(@ContentP, @SourcecodeP)";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ContentP", txtCont.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@SourcecodeP", txtSC.Text.Trim());

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully'); window.location = '" + Page.ResolveUrl("~/Python.aspx") + "';", true);
                    //Response.Redirect("Python.aspx");
                    PopulateData();
                }

            }
        }
    }
}