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
using System.Xml;
using AjaxControlToolkit;
using System.Drawing;
using System.Text.RegularExpressions;

namespace SnippetConnect
{
    public partial class CSharp : System.Web.UI.Page
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

                string sql = "Delete from CSharp" +

                " where CSharpId = @CID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@CID", ID);

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

        //protected void UpdateRow(object sendedr, GridViewUpdateEventArgs e)
        //{

        //    var ID = gvData.DataKeys[e.RowIndex].Value;

        //    GridViewRow row = gvData.Rows[e.RowIndex] as GridViewRow;

        //    TextBox tContent = row.FindControl("txtCont") as TextBox;
        //    TextBox tSC = row.FindControl("txtSC") as TextBox;

        //    using (SqlConnection conn = new SqlConnection(_connStr))
        //    {

        //        string sql = "Update CSharp set Content_c = @ContentC, Sourcecode_c = @SourcecodeC  " + " where CSharpId = @CID";

        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {

        //            cmd.Parameters.AddWithValue(

        //            "@ContentC", tContent.Text.Trim());

        //            cmd.Parameters.AddWithValue(

        //            "@SourcecodeC", tSC.Text.Trim());

        //            cmd.Parameters.AddWithValue(

        //            "@CID", ID);

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

            gvData.DataSource = table;

            gvData.DataBind();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Update CSharp set Content_c = @ContentC, Sourcecode_c = @SourcecodeC  " + " where CSharpId = @CID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ContentC", txtContent.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@SourcecodeC", txtSC.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@CID", Convert.ToInt32(lblID.Text));

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    conn.Close();

                    lblMessage.Text ="Updated Successfully";
                    lblMessage.ForeColor = Color.Green;
                    PopulateData();
                }
                
            }
        }
                
           

        protected void imgbtnedit_Click(object sender, ImageClickEventArgs e)
        {
           
            ImageButton btndetail = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetail.NamingContainer;
            lblID.Text = gvData.DataKeys[gvrow.RowIndex].Value.ToString();
            txtContent.Text = gvrow.Cells[2].Text.Replace("&quot;", "\"").Replace("&#39;", "'").Replace("&amp;", "&").Replace("&lt;", "<").Replace("&gt;", ">").Replace("&nbsp;", " ").Replace("&euro;", "€");
            txtSC.Text = gvrow.Cells[3].Text.Replace("&quot;", "\"").Replace("&#39;", "'").Replace("&amp;", "&").Replace("&lt;", "<").Replace("&gt;", ">").Replace("&nbsp;", " ").Replace("&euro;", "€");
            
            this.ModalPopupExtender2.Show();
        }
           protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            //lblID.Text = gvData.DataKeys[gvrow.RowIndex].Value.ToString();

            //string sc = gvrow.Cells[3].Text;
            //string sced = sc;
            //sced = sced.Replace(" ", " " + System.Environment.NewLine);
            //sced = sced.Replace("&amp;", "&");

            //lblContent.Text = gvrow.Cells[2].Text;
            txtCode.Text = gvrow.Cells[3].Text.Replace("&quot;", "\"").Replace("&#39;", "'").Replace("&amp;", "&").Replace("&lt;", "<").Replace("&gt;", ">").Replace("&nbsp;", " ").Replace("&euro;", "€");
            
            this.ModalPopupExtender1.Show();
        }

    }
}