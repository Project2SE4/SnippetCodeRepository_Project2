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
using System.Net.NetworkInformation;
using System.Security.Cryptography;
using System.Data.SqlClient;
//using WindowsFormsApplication5.com.somee.scradmin;
using System.Text.RegularExpressions;

namespace WindowsFormsApplication5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            xmldataJava();
            //statusMode.MouseDown += new MouseEventHandler(button1_MouseDown);
        }
        public void xmldataJava()
        {
            string xmlFile = "D:\\data\\JavaCode.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["JavaCode"];

            List<string> nList = new List<string>();
            int i = 0;

            for (i = 0; i <= ds.Tables["JavaCode"].Rows.Count - 1; i++)
            {
                nList.Add("" + ds.Tables["JavaCode"].Rows[i].ItemArray[1]);
            }

            listBox1.DataSource = nList;
        }
        private void listBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            FindJava();
            //parse();
        }

        public void FindJava()
        {
            string xmlFile = "D:\\data\\JavaCode.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable JavaTables = ds.Tables["JavaCode"];

            //listBox2.Items.Clear();
            richTextBox1.Clear();

            string curItem = listBox1.SelectedItem.ToString();

            DataRow[] filteredRows = JavaTables.Select("Sourcecode_java LIKE '%" + curItem + "%'");
            //List<string> nList = new List<string>();

            int i = 0;
            for (i = 0; i < filteredRows.Length; i++)
            {
                string str = (filteredRows[i]["Sourcecode_java"].ToString());

                //string[] values = str.Split('$');
                string values = str;

                parse(values);

                //foreach (string value in values)
                //{
                //    if (value.ToString() == "")
                //        continue;
                //    //listBox2.Items.Add(value.ToString());
                //    //richTextBox1.SelectedText = value.ToString();
                //    parse(value);
                //}

            }

            
        }

        public void parse(string v)
        {
            
            Regex r = new Regex("\\n");
            String[] lines = r.Split(v);
            
            foreach (string l in lines)
            {
                ParseLine(l);
            }
        }

        public void ParseLine(string line) 
        {
            Regex r = new Regex("([ \\t{}();])");
            String [] tokens = r.Split(line);

            foreach (string token in tokens) {
              // Set the token's default color and font.
              richTextBox1.SelectionColor = Color.Black;
              //richTextBox1.SelectionFont = new Font("Microsoft Sans Serif", 8, FontStyle.Regular);
                
              // Check for a comment.
              if (token == "/**" || token.StartsWith("/**")) {
                // Find the start of the comment and then extract the whole comment.
                int index = line.IndexOf("/**");
                string comment = line.Substring(index, line.Length - index);
                richTextBox1.SelectionColor = Color.Green;
                //richTextBox1.SelectionFont = new Font("Microsoft Sans Serif", 8, FontStyle.Regular);
                richTextBox1.SelectedText = comment;
                break;
          }
      
              // Check whether the token is a keyword. 
              String [] keywords = { "public", "void", "using", "static", "class" }; 
              for (int i = 0; i < keywords.Length; i++) {
                if (keywords[i] == token) {
                  // Apply alternative color and font to highlight keyword.
                  richTextBox1.SelectionColor = Color.Blue;
                  //richTextBox1.SelectionFont = new Font("Microsoft Sans Serif", 8, FontStyle.Bold);
                  break;
          }
      }
      richTextBox1.SelectedText = token;
    }    
    richTextBox1.SelectedText = "\n";
    }


    }
}
