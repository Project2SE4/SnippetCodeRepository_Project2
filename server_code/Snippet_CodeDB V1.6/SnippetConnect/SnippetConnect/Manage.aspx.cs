using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Diagnostics;
using System.Text;
using AjaxControlToolkit;

namespace SnippetConnect
{
    
    public partial class Manage : System.Web.UI.Page
    {
        

        string _connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {

                PopulateData();

            }
            //if (!Page.IsPostBack)
            //{
            //    LoadData();
            //} 

            if (Session["AdminID"] != null)
            {
                lblAdmin.Text = "Welcome to :: " + Session["AdminID"].ToString();
            }

            else
            {
               
                lblAdmin.Text = "";

            }
        }

        protected void EditRow(object sender, GridViewEditEventArgs e)
        {

            gvData.EditIndex = e.NewEditIndex;

            this.PopulateData();

        }

        protected void CancelEditRow(object sender, GridViewCancelEditEventArgs e)
        {

            gvData.EditIndex = -1;

            this.PopulateData();

        }

        protected void DeleteRow(object sender, GridViewDeleteEventArgs e)
        {

            var ID = gvData.DataKeys[e.RowIndex].Value;

            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Delete from SourceCode" +

                " where sourcecodes_id = @ID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ID", ID);

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                }

            }

            lblMessage.Text =

            "Record has been deleted successfully !";

            lblMessage.ForeColor = System.Drawing.

            Color.Red;

            this.PopulateData();

        }

        protected void ChangePage(object sender, GridViewPageEventArgs e)
        {

            gvData.PageIndex = e.NewPageIndex;

            this.PopulateData();

        }

        protected void UpdateRow(object sendedr, GridViewUpdateEventArgs e)
        {

            var ID = gvData.DataKeys[e.RowIndex].Value;

            GridViewRow row = gvData.Rows[e.RowIndex] as GridViewRow;

            TextBox tContent = row.FindControl("txtCont") as TextBox;

            TextBox tLanguage = row.FindControl("txtLang") as TextBox;
                        
            TextBox tSourceCode = row.FindControl("txtSC") as TextBox;

            
            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Update manage set Language = @Language,Content=@Content, SourceCode= @SourceCode" + " where ID = @ID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@Language", tLanguage.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@Content", tContent.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@SourceCode", tSourceCode.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@ID", ID);

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                }

            }

            lblMessage.Text =

            "Record updated successfully !";

            gvData.EditIndex = -1;

            this.PopulateData();

        }
        private void PopulateData()
        {

            DataTable table = new DataTable();

            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Select Contents.contents_id, Contents.contents_name, Languages.language_type, SourceCode.code From (Contents JOIN Languages ON Contents.contents_id = Languages.languages_id) JOIN SourceCode ON Contents.contents_id = SourceCode.sourcecodes_id";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                    {

                        ad.Fill(table);

                    }

                }

            }

            gvData.DataSource = table;

            gvData.DataBind();

        }

        protected void gvData_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HyperLink tmplnk1 = new HyperLink();
                tmplnk1 = (HyperLink)e.Row.Cells[1].FindControl("hyplnk1");
                tmplnk1.Attributes.Add("onclick", String.Format("javascript:CallPage('{0}?qs={1}');", "PopupCode.aspx", e.Row.Cells[2].Text));
                tmplnk1 = null;
            }
        }

       
        
    }
}