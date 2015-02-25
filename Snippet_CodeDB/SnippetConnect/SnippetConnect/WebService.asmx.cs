using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;


namespace SnippetConnect
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
   
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        SqlConnection con = new SqlConnection("Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True");
        //private string Text;
        [WebMethod]

        //public byte[] DownloadFile(string FName)
        //{
        //    System.IO.FileStream fs1 = null;
        //    fs1 = System.IO.File.Open(FName, FileMode.Open, FileAccess.Read);
        //    byte[] b1 = new byte[fs1.Length];
        //    fs1.Read(b1, 0, (int)fs1.Length);
        //    fs1.Close();
        //    return b1;
        //}
              

        //public DataTable dwnl()
        //{
        //    int ID=0;
        //    long SelectID;

        //    try
        //    {
        //        //con.Open();
        //        SqlCommand myCMD = new SqlCommand("SELECT * FROM Download where Id = @ID", con);
        //        myCMD.Parameters.AddWithValue("@ID", SelectID);

        //        SqlDataAdapter da = new SqlDataAdapter();
        //        da = new SqlDataAdapter(myCMD);
        //        DataSet ds = new DataSet();
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        //con.Close(); 
        //       // if (dt.Rows.Count == 0) 
        //          //  return;
        //        DataRow row = dt.Rows[0];
                
        //        int i = 1;

        //        string fileName = "D:\\update.txt";

        //        Save(row("Files"), fileName);

        //        this.Text = "Success!";
        //        // Me.BackColor = Color.Chartreuse()
        //        //Interaction.MsgBox("Download Complete");


        //    }
        //    catch (Exception ex)
        //    {
        //        //MessageBox.Show(ex.Message, "Connection Failed!", MessageBoxButtons.AbortRetryIgnore);

        //    }

        //}

        public DataTable DetailCustomer(string strID)
        {
            SqlConnection objConn = new SqlConnection();
            SqlCommand objCmd = new SqlCommand();
            SqlDataAdapter dtAdapter = new SqlDataAdapter();

            DataSet ds = new DataSet();
            DataTable dt = null;
            string strConnString = null;
            StringBuilder strSQL = new StringBuilder();

            strConnString = "Data Source=CHAT69\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True;";

            strSQL.Append(" SELECT * FROM (Contents JOIN Languages ON Contents.contents_id = Languages.languages_id) JOIN SourceCode ON Contents.contents_id = SourceCode.sourcecodes_id ");
            strSQL.Append(" WHERE [contents_id] = '" + strID + "' ");

            objConn.ConnectionString = strConnString;
            var _with1 = objCmd;
            _with1.Connection = objConn;
            _with1.CommandText = strSQL.ToString();
            _with1.CommandType = CommandType.Text;
            dtAdapter.SelectCommand = objCmd;

            dtAdapter.Fill(ds);
            dt = ds.Tables[0];

            dtAdapter = null;
            objConn.Close();
            objConn = null;

            return dt;

        }

        //private void Save(byte[] dataArray, string fileName)
        //{
        //    // Create random data to write to the file. 

        //    FileStream fileStream = new FileStream(fileName, FileMode.Create);

        //    try
        //    {
        //        // Write the data to the file, byte by byte. 
        //        for (int i = 0; i <= dataArray.Length - 1; i++)
        //        {
        //            fileStream.WriteByte(dataArray[i]);
        //        }

        //    }
        //    finally
        //    {
        //        fileStream.Close();
        //    }


        //}
    }
}
