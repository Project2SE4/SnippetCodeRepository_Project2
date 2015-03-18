using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//using System.Web;
//using System.Web.Services;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlClient;
using snippet_code_v._1._2.com.somee.scradmin;

namespace snippet_code_v._1._2
{
    public partial class csharp : Form
    {
        public csharp()
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

            snippet_code javaForm = new snippet_code();
            javaForm.Show();

            this.Hide();


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

            listBox2.Items.Clear();

            string curItem = listBox1.SelectedItem.ToString();
          
            DataRow[] filteredRows = CSharpTables.Select("Sourcecode_c LIKE '%" + curItem + "%'");
            List<string> nList = new List<string>();

            int i = 0;
            for (i = 0; i < filteredRows.Length; i++)
            {
               
                string str = (filteredRows[i]["Sourcecode_c"].ToString());
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
            stackoverflow stackoverflowForm = new stackoverflow();
            stackoverflowForm.Show();

            this.Hide();
            //this.Close();
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
            vb vbForm = new vb();
            vbForm.Show();

            this.Hide();
        }

        private void pYTHONToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //xmldataPython();
            python pythonForm = new python();
            pythonForm.Show();

            this.Hide();

        }

        private void btnClipboard_Click(object sender, EventArgs e)
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
