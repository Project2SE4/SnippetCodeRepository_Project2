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

namespace SnippetConnect
{
    public partial class Manage : System.Web.UI.Page
    {
        //string _ProjectSnippet = ConfigurationManager.ConnectionStrings["ProjectSnippet"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               // PopulateData();

            }

            // try
            if (Session["USER_ID"] != null)
            {
                lblAdmin.Text = "Wellcome to :: " + Session["USER_ID"].ToString();
            }

            else
            {
                //catch (Exception ex)
                lblAdmin.Text = "";

            }

        }

        //protected void EditRow(object sender, GridViewEditEventArgs e)
        //{

        //    gvData.EditIndex = e.NewEditIndex;

        //    this.PopulateData();

        //}

        //protected void CancelEditRow(object sender, GridViewCancelEditEventArgs e)
        //{

        //    gvData.EditIndex = -1;

        //    this.PopulateData();

        //}

        //protected void DeleteRow(object sender, GridViewDeleteEventArgs e)
        //{

        //    var autoID = gvData.DataKeys[e.RowIndex].Value;

        //    using (SqlConnection conn = new SqlConnection(_ProjectSnippet))
        //    {

        //        string sql = "Delete from manage" +

        //        " where ID = @ID";

        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {

        //            cmd.Parameters.AddWithValue(

        //            "@ID", ID);

        //            conn.Open();

        //            cmd.ExecuteNonQuery();

        //            conn.Close();

        //        }

        //    }

        //    lblMessage.Text =

        //    "Record has been deleted successfully !";

        //    lblMessage.ForeColor = System.Drawing.

        //    Color.Red;

        //    this.PopulateData();

        //}

        //protected void ChangePage(object sender, GridViewPageEventArgs e)
        //{

        //    gvData.PageIndex = e.NewPageIndex;

        //    this.PopulateData();

        //}

        //protected void UpdateRow(object sendedr, GridViewUpdateEventArgs e)
        //{

        //    var ID = gvData.DataKeys[e.RowIndex].Value;

        //    GridViewRow row = gvData.Rows[e.RowIndex] as GridViewRow;

        //    TextBox tLanguage = row.FindControl("txtLang") as TextBox;

        //    TextBox tContent = row.FindControl("txtContent") as TextBox;

        //    TextBox tSourceCode = row.FindControl("txtSC") as TextBox;

        //    DropDownList dropActive = row.FindControl("dropActive") as DropDownList;

        //    using (SqlConnection conn = new SqlConnection(_ProjectSnippet))
        //    {

        //        string sql = "Update manage set Language = @Language,Content=@Content, SourceCode= @SourceCode" + " where ID = @ID";

        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {

        //            cmd.Parameters.AddWithValue(

        //            "@Language", tLanguage.Text.Trim());

        //            cmd.Parameters.AddWithValue(

        //            "@Content", tContent.Text.Trim());

        //            cmd.Parameters.AddWithValue(

        //            "@SourceCode", tSourceCode.Text.Trim());

        //            cmd.Parameters.AddWithValue(

        //            "@ID", ID);

        //            conn.Open();

        //            cmd.ExecuteNonQuery();

        //            conn.Close();

        //        }

        //    }

        //    lblMessage.Text =

        //    "Record updated successfully !";

        //    gvData.EditIndex = -1;

        //    this.PopulateData();

        //}
        //private void PopulateData()
        //{

        //    DataTable table = new DataTable();

        //    using (SqlConnection conn = new SqlConnection(_ProjectSnippet))
        //    {

        //        string sql = " SELECT * FROM "; 

        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {

        //            using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
        //            {

        //                ad.Fill(table);

        //            }

        //        }

        //    }

        //    gvData.DataSource = table;

        //    gvData.DataBind();

        

        //}

        
    }
}