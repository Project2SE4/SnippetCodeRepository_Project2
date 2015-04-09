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
using snippet_code_v._1._2.com.somee.scradmin;
using System.Text.RegularExpressions;


namespace snippet_code_v._1._2
{
    public partial class CsharpForm : Form
    {
        public Snippet_codeForm RefTocsharpForm { get; set; }
        public Snippet_codeForm RefTovbForm { get; set; }
        public Snippet_codeForm RefTopythonForm { get; set; }
        public CsharpForm()
        {
            InitializeComponent();
        }

        List<string> fQ = new List<string>();
        List<string> sQ = new List<string>();
        List<string> pV = new List<string>();

        private void Form1_Load(object sender, EventArgs e)
        {
            statusMode.MouseDown += new MouseEventHandler(button1_MouseDown);
            xmldataCsharp();
            statusMode.Hide();
        }

        void button1_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == System.Windows.Forms.MouseButtons.Right)
            {
                MenuItem item1 = new MenuItem();
                item1.Text = "OFFLINE";
                item1.Click += new EventHandler(item1_Click);

                MenuItem item2 = new MenuItem();
                item2.Text = "ONLINE";
                item2.Click += new EventHandler(item2_Click);

                ContextMenu menu = new ContextMenu();
                menu.MenuItems.Add(item1);
                menu.MenuItems.Add(item2);

                statusMode.ContextMenu = menu;
            }
        }

        void item1_Click(object sender, EventArgs e)
        {
            statusMode.Text = "OFFLINE";
        }

        void item2_Click(object sender, EventArgs e)
        {
            statusMode.Text = "ONLINE";
        }
        private void jAVAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataJava();

            JavaForm javaForm = new JavaForm();
            javaForm.Show();

            //this.Hide();
            //this.Close();
            
            //this.RefTocsharpForm.Show();
            this.Close();


        }
     
        private void listBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
               FindCsharp();
        }

        public void FindCsharp()
        {
            string xmlFile = "D:\\data\\CSharp.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            //listBox2.Items.Clear();
            richTextBox1.Clear();

            string curItem = listBox1.SelectedItem.ToString();
          
            DataRow[] filteredRows = CSharpTables.Select("Sourcecode_c LIKE '%" + curItem + "%'");
            //List<string> nList = new List<string>();

            int i = 0;
            for (i = 0; i < filteredRows.Length; i++)
            {
               
                string str = (filteredRows[i]["Sourcecode_c"].ToString());
                //string[] values = str.Split('$');
                string values = str;

                parse(values);

                //foreach (string value in values)
                //{
                //    if (value.ToString() == "")
                //        continue;
                //    listBox2.Items.Add(value.ToString());
                //}
            }
           
        }

        //--------------------------------------------------------------------------------------------------

        /*Control Label color*/
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
            String[] tokens = r.Split(line);

            foreach (string token in tokens)
            {
                // Set the token's default color and font.
                richTextBox1.SelectionColor = Color.Black;
                //richTextBox1.SelectionFont = new Font("Microsoft Sans Serif", 8, FontStyle.Regular);

                // Check for a comment.
                if (token == "/*" || token.StartsWith("/*"))
                {
                    // Find the start of the comment and then extract the whole comment.
                    int index = line.IndexOf("/*");
                    string comment = line.Substring(index, line.Length - index);
                    richTextBox1.SelectionColor = Color.Green;
                    //richTextBox1.SelectionFont = new Font("Microsoft Sans Serif", 8, FontStyle.Regular);
                    richTextBox1.SelectedText = comment;
                    break;
                }

                // Check whether the token is a keyword. 
                String[] keywords = { "public", "void", "using", "static", "class" };
                for (int i = 0; i < keywords.Length; i++)
                {
                    if (keywords[i] == token)
                    {
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

        //------------------------------------------------------------------------------------------------------

        private void FindMyString(string searchString)
        {
            // Ensure we have a proper string to search for. 
            if (searchString != string.Empty)
            {
                // Find the item in the list and store the index to the item. 
                int index = listBox1.FindString(searchString);
                // Determine if a valid index is returned. Select the item if it is valid. 
                if (index != -1)
                    listBox1.SetSelected(index, true);
                else
                    MessageBox.Show("The search string did not match any items in the ListBox");
            }
        }

        private void searchBtn_Click(object sender, EventArgs e)
        {

            string xmlFile = "D:\\data\\CSharp.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            string searchstring = textBox1.Text;
           
            DataRow[] filteredRows = CSharpTables.Select("Content_c LIKE '%" + searchstring + "%'");
            List<string> nList = new List<string>();

            int i = 0;

            for (i = 0; i < filteredRows.Length; i++)
            {              
                nList.Add(filteredRows[i]["Content_c"].ToString());
            }

            listBox1.DataSource = nList;

            FindCsharp();

        }

        private void sTACKOVERFLOWToolStripMenuItem_Click(object sender, EventArgs e)
        {
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

            this.Close();
        }

        private void viewHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void uPDATEToolStripMenuItem_Click(object sender, EventArgs e)
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

        private void cToolStripMenuItem_Click(object sender, EventArgs e)
        {
            xmldataCsharp();
        }

        public void xmldataCsharp()
        {
            string xmlFile = "D:\\data\\CSharp.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            List<string> nList = new List<string>();
            int i = 0;

            for (i = 0; i <= ds.Tables["CSharp"].Rows.Count - 1; i++)
            {
                nList.Add("" + ds.Tables["CSharp"].Rows[i].ItemArray[1]);
            }

            listBox1.DataSource = nList;
        }  

        private void vBToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataVb();
            VbForm vbForm = new VbForm();
            vbForm.Show();

            //this.Hide();
            this.Close();
        }

        private void pYTHONToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataPython();
            PythonForm pythonForm = new PythonForm();
            pythonForm.Show();

            //this.Hide();
            this.Close();

        }

        private void btnClipboard_Click(object sender, EventArgs e)
        {
            //for (int i = 0; i < listBox2.Items.Count; i++)
            //{
            //    listBox2.SetSelected(i, true);
            //}
            //string s = "";
            //foreach (object o in listBox2.SelectedItems)
            //{
            //    s += o.ToString() + "  ";
            //}
            //Clipboard.SetText(s);

            if (richTextBox1 != null)
            {
                MessageBox.Show("Please Choose Language or Content");
            }
            else
            {

                StringBuilder sb = new StringBuilder();

                foreach (string line in richTextBox1.Lines)
                    sb.AppendLine(line);

                Clipboard.SetText(sb.ToString());
            }
        }

    }
}
