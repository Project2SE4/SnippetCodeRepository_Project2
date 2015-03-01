using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using AjaxControlToolkit;

namespace SnippetConnect
{
    public partial class PopupCode : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridData();
            }
        }

        protected void BindGridData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from SourceCode", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvdetails.DataSource = dt;
            gvdetails.DataBind();
        }
        
        protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            //lblID.Text = gvdetails.DataKeys[gvrow.RowIndex].Value.ToString();
            lblname.Text = gvrow.Cells[2].Text;
            this.ModalPopupExtender1.Show();
        }
    }
}