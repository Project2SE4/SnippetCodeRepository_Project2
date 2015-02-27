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
using System.IO;

namespace SnippetConnect
{
    public partial class HomeSite : System.Web.UI.MasterPage
    {
       SqlConnection con = new SqlConnection("Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["AdminID"] != null)
            {
                lblLogin.Text = "Welcome to :: " + Session["AdminID"].ToString();
            }

            else
            {
                //catch (Exception ex)
                lblLogin.Text = "";

            }

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    //long SelectID;

        //    System.IO.FileStream fs1 = null;
        //    getView.WebService ls1 = new getView.WebService();
        //    byte[] b1 = null;
                     
        //    b1 = ls1.DownloadFile("D:\\Source.txt");
        //    fs1 = new FileStream("E:\\Source.txt", FileMode.Create);
        //    fs1.Write(b1, 0, b1.Length);
        //    fs1.Close();
        //    fs1 = null;
        //    Label1.Text = "File downloaded successfully";
        //}

        
    }
}