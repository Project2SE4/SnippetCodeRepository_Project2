using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using StackExchangeApi;
using System.Diagnostics;
using System.Net;
using System.IO;
using System.Xml;
using Codeplex.Data;
using System.Runtime.Serialization;
//using Jayrock.Json.Conversion;
using System.Xml.Linq;
using System.Xml.Serialization;
using Newtonsoft.Json;
//using System.Web;
//using System.Web.Services;
using System.Security.Cryptography;
using System.Data.SqlClient;
using snippet_code_v._1._2.com.somee.scradmin;

namespace snippet_code_v._1._2
{
    public partial class dataoverflow : Form
    {
        public string webstr { get; set; }
        public stackoverflow RefToForm1 { get; set; }
        public dataoverflow()
        {
            InitializeComponent();
        }

        private void dataoverflow_Load(object sender, EventArgs e)
        {
            showweb();
        }

        public void showweb()
        {
            string xmlFile = "D:\\data\\jsonxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable xmlshowurl = ds.Tables[1];

            webBrowser1.Navigate(@"javascript:void((function(){var a,b,c,e,f;f=0;a=document.cookie.split('; ');
                                for(e=0;e<a.length&&a[e];e++)
                                {
                                    f++;for(b='.'+location.host;b;b=b.replace(/^(?:%5C.|[^%5C.]+)/,'')){for(c=location.pathname;c;c=c.replace(/.$/,''))
                                {
                                    document.cookie=(a[e]+'; domain='+b+'; path='+c+'; 
                                    expires='+new Date((new Date()).getTime()-1e11).toGMTString());}}}})())");
            webBrowser1.DocumentText = "";
            //string curItem = webstr;

            webBrowser1.Navigate(webstr);
        }
        private void jAVAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            snippet_code snippetcodeForm = new snippet_code();
            snippetcodeForm.Show();

            this.Hide();
        }

        private void sTACKOVERFLOWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //stackoverflow stackoverflowForm = new stackoverflow();
            //stackoverflowForm.Show();

            //this.Hide();
            //this.Close();

            this.RefToForm1.Show();
            this.Close();
        }

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            updateJava();
            updateCsharp();
            updateVb();
            updatePython();

            update_program updateForm = new update_program();
            updateForm.Show();
        }

        public void updateCsharp()
        {
            //WebService MyService = new WebService();
            WebService proxySample = new com.somee.scradmin.WebService();

            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataCSharp();

            DataTable CSharpTable = CSharpDataSet.Tables["CSharp"];

            //dataGridView1.DataSource = CSharpTable;

            string filePath = "D:\\data\\CSharp.xml";
            CSharpDataSet.WriteXml(filePath);
        }

        public void updateJava()
        {
            //WebService MyService = new WebService();
            WebService proxySample = new com.somee.scradmin.WebService();

            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataJava();

            DataTable CSharpTable = CSharpDataSet.Tables["JavaCode"];

            string filePath = "D:\\data\\JavaCode.xml";
            CSharpDataSet.WriteXml(filePath);
        }

        public void updateVb()
        {
            //WebService MyService = new WebService();
            WebService proxySample = new com.somee.scradmin.WebService();

            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataVb();

            DataTable CSharpTable = CSharpDataSet.Tables["VB"];

            string filePath = "D:\\data\\VB.xml";
            CSharpDataSet.WriteXml(filePath);
        }

        public void updatePython()
        {
            //WebService MyService = new WebService();
            WebService proxySample = new com.somee.scradmin.WebService();

            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataPython();

            DataTable CSharpTable = CSharpDataSet.Tables["Python"];

            string filePath = "D:\\data\\Python.xml";
            CSharpDataSet.WriteXml(filePath);
        }
        private void goToPageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string curItem = webstr;
            System.Diagnostics.Process.Start(curItem);
        }

        private void backToSearchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //stackoverflow stkForm = new stackoverflow();
            //stkForm.Show();
            this.RefToForm1.Show();
            this.Close();           
            
        }

        private void cToolStripMenuItem_Click(object sender, EventArgs e)
        {
            csharp csharpForm = new csharp();
            csharpForm.Show();

            this.Close();
        }

        private void vBToolStripMenuItem_Click(object sender, EventArgs e)
        {
            vb vbForm = new vb();
            vbForm.Show();

            this.Close();
        }

        private void pYTHONToolStripMenuItem_Click(object sender, EventArgs e)
        {
            python pythonForm = new python();
            pythonForm.Show();

            this.Close();
        }


    }
}
