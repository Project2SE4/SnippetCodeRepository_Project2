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

namespace SnippetConnect
{
    public partial class Phyton : System.Web.UI.Page
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

                string sql = "Delete from PythonId" +

                " where PythonId = @PID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@PID", ID);

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

            using (SqlConnection conn = new SqlConnection(_connStr))
            {

                string sql = "Update Python set Content_python = @ContentP " + " where PythonId = @PID";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue(

                    "@ContentP", tContent.Text.Trim());

                    cmd.Parameters.AddWithValue(

                    "@PID", ID);

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

                string sql = " Select * From Python ";


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

        protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            //lblID.Text = gvData.DataKeys[gvrow.RowIndex].Value.ToString();
            txtCode.Text = gvrow.Cells[3].Text;
            this.ModalPopupExtender1.Show();
        }
    }
}