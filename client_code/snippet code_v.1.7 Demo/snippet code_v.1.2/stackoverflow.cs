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

namespace snippet_code_v._1._2
{
    public partial class stackoverflow : Form
    {
        public stackoverflow()
        {
            InitializeComponent();
        }

        private void stackoverflow_Load(object sender, EventArgs e)
        {
            
        }

        void item1_Click(object sender, EventArgs e)
        {
            //dataoverflow dataoverflowForm = new dataoverflow();
            //dataoverflowForm.Show();

            //this.Hide();
        }

        //private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        //{
        //    if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
        //        (e.KeyChar != '.'))
        //    {
        //        e.Handled = true;
        //    }

        //    // only allow one decimal point
        //    if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
        //    {
        //        e.Handled = true;
        //    }
        //}

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            //update_program updateForm = new update_program();
            //updateForm.Show();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(textBox1.Text))
            {
                MessageBox.Show("Please in put your Question");
            }
            else
            {
                // Returns JSON string

                //HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.stackexchange.com/2.2/search/advanced?order=desc&sort=activity&accepted=True&title=connect string&site=stackoverflow");
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.stackexchange.com/2.2/search/advanced?order=desc&sort=activity&accepted=True&title=" + textBox1.Text + "&site=stackoverflow");
                request.AutomaticDecompression = DecompressionMethods.Deflate | DecompressionMethods.GZip;
                try
                {
                    WebResponse response = request.GetResponse();
                    using (Stream responseStream = response.GetResponseStream())
                    {
                        StreamReader reader = new StreamReader(responseStream);

                        String str = reader.ReadToEnd();

                        string json = str;

                        XNode node = JsonConvert.DeserializeXNode(json, "Root");

                        //Console.WriteLine(node.ToString());
                        //textBox1.Text = node.ToString();

                        File.WriteAllText(@"D:\\data\\jsonxml.xml", node.ToString());

                        string xmlFile = "D:\\data\\jsonxml.xml";

                        DataSet ds = new DataSet();

                        ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

                        //string xmlData = node.ToString();
                        //System.IO.StringReader xmlSR = new System.IO.StringReader(xmlData);
                        //ds.ReadXml(xmlSR, XmlReadMode.IgnoreSchema);

                        DataTable firstTable = ds.Tables[1];

                        //dataGridView1.DataSource = firstTable;

                        //MessageBox.Show("Success");

                    }
                }
                catch (WebException ex)
                {
                    WebResponse errorResponse = ex.Response;
                    using (Stream responseStream = errorResponse.GetResponseStream())
                    {
                        StreamReader reader = new StreamReader(responseStream, Encoding.GetEncoding("utf-8"));
                        String errorText = reader.ReadToEnd();
                        // log errorText
                    }
                    throw;

                }

                xmldata();
            }
       
        }

        public void xmldata()
        {
            string xmlFile = "D:\\data\\jsonxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable xmlTables = ds.Tables[1];

            List<string> nList = new List<string>();

            int i = 0;

            for (i = 0; i <= ds.Tables[1].Rows.Count - 1; i++)
            {
                nList.Add("< View Score " + ds.Tables[1].Rows[i].ItemArray[2] + " >");
                nList.Add("" + ds.Tables[1].Rows[i].ItemArray[11]);
                nList.Add("" + ds.Tables[1].Rows[i].ItemArray[10] + ".....Link");
                nList.Add("\n");
            }

            listBox1.DataSource = nList;

        }

        private void listBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            itm();
        }

        public void itm()
        {
            string curItem = listBox1.SelectedItem.ToString();
            dataoverflow websnippet = new dataoverflow();
            websnippet.webstr = curItem;
            websnippet.Show();

            this.Hide();

        }

        private void jAVAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            snippet_code snippetcodeForm = new snippet_code();
            snippetcodeForm.Show();

            this.Hide();
        }

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            update_program updateForm = new update_program();
            updateForm.Show();
        }


    }
}
