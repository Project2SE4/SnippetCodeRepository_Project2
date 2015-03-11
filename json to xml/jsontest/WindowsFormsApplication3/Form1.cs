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

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.stackexchange.com/2.2/search/advanced?order=desc&sort=activity&site=stackoverflow");
    try {
        WebResponse response = request.GetResponse();
        using (Stream responseStream = response.GetResponseStream()) {
            StreamReader reader = new StreamReader(responseStream, Encoding.UTF8);

            String str =  reader.ReadToEnd();
            //Console.WriteLine(str);

            //XmlDocument doc = new XmlDocument();
            //DynamicJson.Parse(str);

            string json = @"{
                    '?xml': {
                         '@version': '1.0',
                         '@standalone': 'no'
                       },
                       'root': {
                         'person': [
                          {
                             '@id': '1',
                            'name': 'Alan',
                            'url': 'http://www.google.com'
                          },
                         {
                            '@id': '2',
                            'name': 'Louis',
                            'url': 'http://www.yahoo.com'
                          }
                        ]
                      }
                    }";

            //string json = str;

            //XmlDocument doc = (XmlDocument)JsonConvert.DeserializeXmlNode(json);

            XNode node = JsonConvert.DeserializeXNode(json, "Root");
            Console.WriteLine(node.ToString());
            textBox1.Text = node.ToString();
            
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
    }
}
