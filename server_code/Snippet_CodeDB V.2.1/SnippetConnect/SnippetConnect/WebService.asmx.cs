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
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Persist Security Info=True;User ID=sa;Password=5430213000");
        //private string Text;
        [WebMethod]

     
        public DataSet GetDataCSharp()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=SnippetDatabase;Integrated Security=True;");
            string sql = @"SELECT * FROM CSharp ";
            SqlCommand comm = new SqlCommand(sql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter Da = new SqlDataAdapter(comm);
            // DataTable dt = new DataTable();
            Da.Fill(ds, "CSharp");

            return ds;
        }

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

        
    }
}
