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
        //<add name="ConnStr" connectionString="workstation id=snippetconnect.mssql.somee.com;packet size=4096;user id=scrproject;pwd=5430213000;data source=snippetconnect.mssql.somee.com;persist security info=False;initial catalog=snippetconnect" providerName="System.Data.SqlClient"/>
        //SqlConnection con = new SqlConnection("Data Source=snippetconnect.mssql.somee.com;Persist Security Info=True;User ID=scrproject;Password=5430213000");
        //private string Text;

        [WebMethod]

        public DataSet GetDataCSharp()
        {
            SqlConnection con = new SqlConnection("Data Source=snippetconnect.mssql.somee.com;Persist Security Info=True;User ID=scrproject;Password=5430213000");
            string sql = @"SELECT * FROM CSharp ";
            SqlCommand comm = new SqlCommand(sql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter Da = new SqlDataAdapter(comm);
            // DataTable dt = new DataTable();
            Da.Fill(ds, "CSharp");

            
            return ds;
        }

        [WebMethod]

        public DataSet GetDataJava()
        {
            SqlConnection con = new SqlConnection("Data Source=snippetconnect.mssql.somee.com;Persist Security Info=True;User ID=scrproject;Password=5430213000");
            string sql = @"SELECT * FROM JavaCode ";
            SqlCommand comm = new SqlCommand(sql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter Da = new SqlDataAdapter(comm);
            // DataTable dt = new DataTable();
            Da.Fill(ds, "JavaCode");


            return ds;
        }

        [WebMethod]

        public DataSet GetDataVb()
        {
            SqlConnection con = new SqlConnection("Data Source=snippetconnect.mssql.somee.com;Persist Security Info=True;User ID=scrproject;Password=5430213000");
            string sql = @"SELECT * FROM VB ";
            SqlCommand comm = new SqlCommand(sql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter Da = new SqlDataAdapter(comm);
            // DataTable dt = new DataTable();
            Da.Fill(ds, "VB");


            return ds;
        }

        [WebMethod]

        public DataSet GetDataPython()
        {
            SqlConnection con = new SqlConnection("Data Source=snippetconnect.mssql.somee.com;Persist Security Info=True;User ID=scrproject;Password=5430213000");
            string sql = @"SELECT * FROM Python ";
            SqlCommand comm = new SqlCommand(sql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter Da = new SqlDataAdapter(comm);
            // DataTable dt = new DataTable();
            Da.Fill(ds, "Python");


            return ds;
        }
        
       
        
    }
}
