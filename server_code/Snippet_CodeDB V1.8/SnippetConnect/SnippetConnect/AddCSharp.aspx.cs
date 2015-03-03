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
        //   //int returnValue = 0;

        // get the connection

        //using (SqlConnection conn = new SqlConnection(_connStr))

        // {

        // // write the sql statement to execute

        // string sql = "INSERT INTO manage (Language, Content, SourceCode) VALUES " + "(@Language, @Content, @SourceCode)";

        // // instantiate the command object to fire

        // using (SqlCommand cmd = new SqlCommand(sql, conn))

        // {

        //    // attach the parameter to pass, if no parameter is in the sql no need to attach

        //SqlParameter[] prms = new SqlParameter[3];

        //prms[0] = new SqlParameter("@Language", SqlDbType.NVarChar, 50);

        //prms[0].Value = ddlLang.Text.Trim();

        //prms[1] = new SqlParameter("@Content", SqlDbType.NVarChar, 50);

        //prms[1].Value = ddlContent.Text.Trim();

        //prms[2] = new SqlParameter("@SourceCode", SqlDbType.NVarChar, 500);

        //prms[2].Value = txtSC.Text.Trim();

        //cmd.Parameters.AddRange(prms);

        //conn.Open();

        
        //cmd.ExecuteNonQuery();

        //conn.Close();
        Response.Redirect("manage.aspx");

          //}

  //}
        
        }
    }
}