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

namespace snippet_code_v._1._2
{
    public partial class Snippet_codeForm : Form
    {
        public Snippet_codeForm()
        {
            InitializeComponent();
        }

        List<string> fQ = new List<string>();
        List<string> sQ = new List<string>();
        List<string> pV = new List<string>();

        private void Form1_Load(object sender, EventArgs e)
        {
            //xmldataJava();
            statusMode.MouseDown += new MouseEventHandler(button1_MouseDown);
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
            JavaForm jvForm = new JavaForm();
            jvForm.Show();
            this.Hide();
        }

        public void xmldataJava()
        {
            string xmlFile = Application.StartupPath + "\\data\\JavaCode.xml";

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
        }

        public void FindJava()
        {
            string xmlFile = Application.StartupPath + "\\data\\JavaCode.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable JavaTables = ds.Tables["JavaCode"];

            listBox2.Items.Clear();

            string curItem = listBox1.SelectedItem.ToString();
        
            DataRow[] filteredRows = JavaTables.Select("Sourcecode_java LIKE '%" + curItem + "%'");
            List<string> nList = new List<string>();

            int i = 0;
            for (i = 0; i < filteredRows.Length; i++)
            {                
                string str = (filteredRows[i]["Sourcecode_java"].ToString());
                string[] values = str.Split('$');

                foreach (string value in values)
                {
                    if (value.Trim() == "")
                        continue;
                    listBox2.Items.Add(value.Trim());
                }
            }
        
        }

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

            string xmlFile = Application.StartupPath + "\\data\\JavaCode.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["JavaCode"];

            //DataView dv = new DataView(CSharpTables);
            //dv.RowFilter = string.Format("Content_c LIKE '%{0}%'", textBox1.Text);
            //listBox1.DataSource = dv;

            string searchstring = textBox1.Text;

            //DataRow[] result = ds.Tables[0].Select("Content_c LIKE '%" + searchstring + "%'");
            DataRow[] filteredRows = CSharpTables.Select("Content_java LIKE '%" + searchstring + "%'");
            List<string> nList = new List<string>();

            int i = 0;

            for (i = 0; i < filteredRows.Length; i++)
            {
                //nList.Add(ds.Tables["CSharp"].Rows[i].ItemArray[0] + " -- " + ds.Tables["CSharp"].Rows[i].ItemArray[1]);

               // System.Diagnostics.Debug.WriteLine(filteredRows[i]["CSharpId"].ToString());
                nList.Add(filteredRows[i]["Content_java"].ToString());
            }

            listBox1.DataSource = nList;

            FindJava();
   
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
            
            this.Hide();
            //this.Close();
        }

        private void viewHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
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
            
        private void cToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //csharp csharpForm = new csharp();
            //csharpForm.Show();
            PythonForm pythonForm = new PythonForm();
            pythonForm.RefTopythonForm = this;

            VbForm vbForm = new VbForm();
            vbForm.RefTovbForm = this;

            CsharpForm csharpForm = new CsharpForm();
            csharpForm.RefTocsharpForm = this;

            this.Visible = false;
            csharpForm.Show();

            //this.Hide();
            ////this.Close();
        }

        private void vBToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataVb();

            //vb vbForm = new vb();
            //vbForm.Show();

            CsharpForm csharpForm = new CsharpForm();
            csharpForm.RefTocsharpForm = this;

            PythonForm pythonForm = new PythonForm();
            pythonForm.RefTopythonForm = this;

            VbForm vbForm = new VbForm();
            vbForm.RefTovbForm = this;

            this.Visible = false;
            vbForm.Show();

            //this.Hide();
            //this.Close();
        }
        
        private void pYTHONToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataPython();

            //python pythonForm = new python();
            //pythonForm.Show();


            CsharpForm csharpForm = new CsharpForm();
            csharpForm.RefTocsharpForm = this;

            VbForm vbForm = new VbForm();
            vbForm.RefTovbForm = this;

            PythonForm pythonForm = new PythonForm();
            pythonForm.RefTopythonForm = this;

            this.Visible = false;
            pythonForm.Show();

            //this.Hide();
            //this.Close();
        }

        private void btnClipboard_Click(object sender, EventArgs e)
        {
            if (listBox2 != null)
            {
                MessageBox.Show("Please Choose Language");
            }
            else
            {

                for (int i = 0; i < listBox2.Items.Count; i++)
                {
                    listBox2.SetSelected(i, true);
                }
                string s = "";

                foreach (object o in listBox2.SelectedItems)
                {
                    s += o.ToString() + "  ";
                }
                Clipboard.SetText(s);
            }
        }

    }
}
