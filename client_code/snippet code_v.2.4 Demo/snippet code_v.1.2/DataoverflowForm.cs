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
using System.Net.NetworkInformation;

namespace snippet_code_v._1._2
{
    public partial class DataoverflowForm : Form
    {
        public string webstr { get; set; }
        public StackoverflowForm RefToForm1 { get; set; }
        public DataoverflowForm()
        {
            InitializeComponent();
        }

        private void dataoverflow_Load(object sender, EventArgs e)
        {
            showweb();
        }

        public void showweb()
        {
            string xmlFile = Application.StartupPath + "\\data\\jsonxml.xml";

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
            JavaForm javaForm = new JavaForm();
            javaForm.Show();

            this.Close();
        }

        private void sTACKOVERFLOWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //stackoverflow stackoverflowForm = new stackoverflow();
            //stackoverflowForm.Show();

            //this.Hide();
            //this.Close();
            bool connection = NetworkInterface.GetIsNetworkAvailable();
            if (connection == true)
            {
                StackoverflowForm stackoverflowForm = new StackoverflowForm();
                stackoverflowForm.Show();
            }
            else
            {
                MessageBox.Show("Not Available Please Connect Internet");
                Snippet_codeForm spc = new Snippet_codeForm();
                spc.Show();
            }

            //this.RefToForm1.Show();
            this.Close();
        }

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            bool connection = NetworkInterface.GetIsNetworkAvailable();
            if (connection == true)
            {
                updateJava();
                updateCsharp();
                updateVb();
                updatePython();

                update_program updateForm = new update_program();
                updateForm.Show();
            }
            else
            {
                MessageBox.Show("Not Available Please Connect Internet");
                Snippet_codeForm spc = new Snippet_codeForm();
                spc.Show();
            }
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

            string filePath = Application.StartupPath + "\\data\\CSharp.xml";
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

            string filePath = Application.StartupPath + "\\data\\JavaCode.xml";
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

            string filePath = Application.StartupPath + "\\data\\VB.xml";
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

            string filePath = Application.StartupPath + "\\data\\Python.xml";
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
            CsharpForm csharpForm = new CsharpForm();
            csharpForm.Show();

            this.Close();
        }

        private void vBToolStripMenuItem_Click(object sender, EventArgs e)
        {
            VbForm vbForm = new VbForm();
            vbForm.Show();

            this.Close();
        }

        private void pYTHONToolStripMenuItem_Click(object sender, EventArgs e)
        {
            PythonForm pythonForm = new PythonForm();
            pythonForm.Show();

            this.Close();
        }


    }
}
