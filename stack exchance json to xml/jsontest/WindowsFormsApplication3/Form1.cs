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

namespace WindowsFormsApplication3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Returns JSON string

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.stackexchange.com/2.2/search/advanced?order=desc&sort=activity&accepted=True&title=connect string&site=stackoverflow");
            request.AutomaticDecompression = DecompressionMethods.Deflate | DecompressionMethods.GZip;
        try {
        WebResponse response = request.GetResponse();
        using (Stream responseStream = response.GetResponseStream()) {
        StreamReader reader = new StreamReader(responseStream);

            String str =  reader.ReadToEnd();

            string json = str;

            XNode node = JsonConvert.DeserializeXNode(json, "Root");

            //Console.WriteLine(node.ToString());
            //textBox1.Text = node.ToString();

            File.WriteAllText(@"D:\\testxml.xml", node.ToString());

            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable firstTable = ds.Tables[1];

            //dataGridView1.DataSource = firstTable;
            

        }
    }
    catch (WebException ex) {
        WebResponse errorResponse = ex.Response;
        using (Stream responseStream = errorResponse.GetResponseStream())
        {
            StreamReader reader = new StreamReader(responseStream, Encoding.GetEncoding("utf-8"));
            String errorText = reader.ReadToEnd();
            // log errorText
        }
        throw;

        }
            
             


    }

        private void Form1_Load(object sender, EventArgs e)
        {
            
           
        }

        public void xmldataJava()
        {
            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables[1];

            List<string> nList = new List<string>();
            int i = 0;

            for (i = 0; i <= ds.Tables[1].Rows.Count - 1; i++)
            {
                nList.Add("" + ds.Tables[1].Rows[i].ItemArray[10]);
            }

            listBox1.DataSource = nList;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            xmldataJava();
 
        }

        private void listBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            showweb();
        }

        public void showweb()
        {
            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable JavaTables = ds.Tables[1];

            webBrowser1.DocumentText = "";
            string curItem = listBox1.SelectedItem.ToString();

            webBrowser1.Navigate(curItem);
        }

    }
}
