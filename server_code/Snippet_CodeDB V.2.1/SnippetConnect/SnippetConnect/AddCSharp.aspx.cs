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
    public partial class Add : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //SqlConnection con = new SqlConnection("Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True");
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
         using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Insert into CSharp(Content_c, Sourcecode_c) values(@ContentC, @SourcecodeC)";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ContentC", txtCont.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@SourcecodeC", txtSC.Text.Trim());


                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                    Response.Redirect("CSharp.aspx");
                    PopulateData();
                }
                
            }
        }
        private void PopulateData()
        {
                        
            DataTable table = new DataTable();

            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = " SELECT * FROM CSharp ";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {

                        ad.Fill(table);

                    }

                }

            }

        
        
        }
    }
}