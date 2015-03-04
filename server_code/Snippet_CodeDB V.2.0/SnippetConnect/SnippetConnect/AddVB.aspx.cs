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
    public partial class AddVB : System.Web.UI.Page
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

                string sql = " SELECT * FROM VB ";

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

                string sql = "Insert into VB(Content_vb, Sourcecode_vb) values(@ContentV, @SourcecodeV)";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ContentV", txtCont.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@SourcecodeV", txtSC.Text.Trim());

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                    Response.Redirect("VB.aspx");
                    PopulateData();
                }

            }
        }
    }
}