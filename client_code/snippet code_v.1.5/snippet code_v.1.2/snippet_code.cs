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
using snippet_code_v._1._2.getView;

namespace snippet_code_v._1._2
{
    public partial class snippet_code : Form
    {
        public snippet_code()
        {
            InitializeComponent();
        }

        List<string> fQ = new List<string>();
        List<string> sQ = new List<string>();
        List<string> pV = new List<string>();

        private void Form1_Load(object sender, EventArgs e)
        {
            statusMode.MouseDown += new MouseEventHandler(button1_MouseDown);           
            
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
            /*Form2 theForm2 = new Form2();
            theForm2.Show();*/

            /*// Get the control the Button control is located in. In this case a GroupBox.
            Control control = button1.Parent;
            // Set the text and backcolor of the parent control.
            control.Text = "My Groupbox";
            control.BackColor = Color.Blue;
            // Get the form that the Button control is contained within.
            Form myForm = button1.FindForm();
            // Set the text and color of the form containing the Button.
            myForm.Text = "The Form of My Control";
            myForm.BackColor = Color.Red;*/

            /*listBox1.Items.Add("Creating Method");

            listBox1.Items.Add("Method Calling");

            listBox1.Items.Add("Passing Parameters by Value");

            listBox1.Items.Add("Method Overloading");*/

            //fQ.Add("    /** the snippet returns the minimum between two numbers */ \r\n");
            //fQ.Add("    public static int minFunction(int n1, int n2) {");
            //fQ.Add("        int min;");
            //fQ.Add("        if (n1 > n2)");
            //fQ.Add("            min = n2;");
            //fQ.Add("        else");
            //fQ.Add("            min = n1;");
            //fQ.Add("        return min;");
            //fQ.Add("    }");

            //sQ.Add("    public class ExampleMinNumber {");
            //sQ.Add("    public static void main(String[] args) {");
            //sQ.Add("        int a = 11;");
            //sQ.Add("        int b = 6;");
            //sQ.Add("        int c = minFunction(a, b);");
            //sQ.Add("    System.out.println(\"Minimum Value = \" + c);");
            //sQ.Add("    }");
            //sQ.Add("");
            //sQ.Add("    /** returns the minimum of two numbers */");
            //sQ.Add("    public static int minFunction(int n1, int n2) {");
            //sQ.Add("        int min;");
            //sQ.Add("        if (n1 > n2)");
            //sQ.Add("           min = n2;");
            //sQ.Add("        else");
            //sQ.Add("           min = n1;");
            //sQ.Add("        return min;");
            //sQ.Add("    }");
            //sQ.Add(" }");

            //pV.Add("    public class swappingExample {");
            //pV.Add("    public static void main(String[] args) {");
            //pV.Add("        int a = 30;");
            //pV.Add("        int b = 45;");
            //pV.Add("    System.out.println(\"Before swapping, a = \" +");
            //pV.Add("        a + \" and b = \" + b);");
            //pV.Add("    // Invoke the swap method");
            //pV.Add("        swapFunction(a, b);");
            //pV.Add("    System.out.println(\"\n**Now, Before and After swapping values will be same here**:\");");
            //pV.Add("    System.out.println(\"After swapping, a = \" +");
            //pV.Add("        a + \" and b is \" + b);");
            //pV.Add("      {");
            //pV.Add("    public static void swapFunction(int a, int b) {");
            //pV.Add("    System.out.println(\"Before swapping(Inside), a = \" + a");
            //pV.Add("        + \" b = \" + b);");
            //pV.Add("    // Swap n1 with n2");
            //pV.Add("        int c = a;");
            //pV.Add("            a = b;");
            //pV.Add("            b = c;");
            //pV.Add("    System.out.println(\"After swapping(Inside), a = \" + a");
            //pV.Add("        + \" b = \" + b);");
            //pV.Add("       }");
            //pV.Add("    }");


            //List<string> nList = new List<string>();

            //nList.Add("creating method");
            //nList.Add("method calling");
            //nList.Add("passing parameters by value");

            //listBox1.DataSource = nList;

            xmldatajava1();
            
        }

        private void listBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
           
            //if (listBox1.SelectedIndex == 0)
            //{
            //    listBox2.DataSource = null;
            //    listBox2.DataSource = fQ;
            //}
            //else if (listBox1.SelectedIndex == 1)
            //{
            //    listBox2.DataSource = null;
            //    listBox2.DataSource = sQ;
            //}
            //else if (listBox1.SelectedIndex == 2)
            //{
            //    listBox2.DataSource = null;
            //    listBox2.DataSource = pV;
            //}
            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            string curItem = listBox1.SelectedItem.ToString();
            

            //string searchstring = textBox1.Text;

            //DataRow[] result = ds.Tables[0].Select("Content_c LIKE '%" + searchstring + "%'");

            //DataRow[] filteredRows = CSharpTables.Select("Sourcecode_c LIKE '%" + curItem + "%'");
            DataRow[] filteredRows = CSharpTables.Select("Sourcecode_c LIKE '%" + curItem + "%'");
            List<string> nList = new List<string>();

            int i = 0;
            for (i = 0; i < filteredRows.Length; i++)
            {
                //nList.Add(ds.Tables["CSharp"].Rows[i].ItemArray[0] + " -- " + ds.Tables["CSharp"].Rows[i].ItemArray[1]);
                // System.Diagnostics.Debug.WriteLine(filteredRows[i]["CSharpId"].ToString());
                nList.Add(filteredRows[i]["Sourcecode_c"].ToString());
            }

            listBox2.DataSource = nList;
           

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
            //listBox1.SelectedItems.Clear();

            //for (int i = 0; i < listBox1.Items.Count; i++)
            //{
            //    if (listBox1.Items[i].ToString().Contains(textBox1.Text))
            //    {
            //        listBox1.SetSelected(i, true);
            //    }
            //}
            //label1.Text = listBox1.SelectedItems.Count.ToString() + "item found";


            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            //DataView dv = new DataView(CSharpTables);
            //dv.RowFilter = string.Format("Content_c LIKE '%{0}%'", textBox1.Text);
            //listBox1.DataSource = dv;

            

            string searchstring = textBox1.Text;

            //DataRow[] result = ds.Tables[0].Select("Content_c LIKE '%" + searchstring + "%'");
            DataRow[] filteredRows = CSharpTables.Select("Content_c LIKE '%" + searchstring + "%'");
            List<string> nList = new List<string>();

            int i = 0;

            for (i = 0; i < filteredRows.Length; i++)
            {
                //nList.Add(ds.Tables["CSharp"].Rows[i].ItemArray[0] + " -- " + ds.Tables["CSharp"].Rows[i].ItemArray[1]);

               // System.Diagnostics.Debug.WriteLine(filteredRows[i]["CSharpId"].ToString());
                nList.Add(filteredRows[i]["Content_c"].ToString());
            }

            listBox1.DataSource = nList;

            //CSharpTables = filteredRows.CopyToDataTable();                     

            //dataGridView1.DataSource = CSharpTables;

            //dataGridView1.ColumnCount = 1;
            //dataGridView1.Columns[0].Name = "Content";

            //dataGridView1.Rows.Add(filteredRows);


            //dataGridView1.DataSource = CSharpTables;
            
          //  listBox1.DataSource = CSharpTables.DefaultView;

   
        }

        private void sTACKOVERFLOWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            stackoverflow stackoverflowForm = new stackoverflow();
            stackoverflowForm.Show();

            this.Hide();
            //this.Close();
        }

        private void updateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            update_program updateForm = new update_program();
            updateForm.Show();
        }

        private void viewHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            //WebService MyService = new WebService();
            WebService proxySample = new getView.WebService();
            
            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataCSharp();

            DataTable CSharpTable = CSharpDataSet.Tables["CSharp"];

            //dataGridView1.DataSource = CSharpTable;

            string filePath = "D:\\testxml.xml";
            CSharpDataSet.WriteXml(filePath);

            update_program updateForm = new update_program();
            updateForm.Show();
        }

        
            //WSLogin.WebServiceSoapClient SoapClient = new WSLogin.WebServiceSoapClient();

            //SoapClient.Open();

            //if (SoapClient.State == System.ServiceModel.CommunicationState.Opened)
            //{
            //    MessageBox.Show("true");
            //}
            //else
            //{
            //    MessageBox.Show("false");
            //}

            //WSLogin.WebServiceSoapClient mySer = new WSLogin.WebServiceSoapClient();
            //this.label4.Text = mySer.HelloWorld(this.textBox2.Text);
        
         public void xmldatajava1()
        {
            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];

            //dataGridView1.DataSource = CSharpTables;

            //drtotxt(CSharpTables);


            List<string> nList = new List<string>();
            int i = 0;

            for (i = 0; i <= ds.Tables["CSharp"].Rows.Count - 1; i++)
            {
                //nList.Add(ds.Tables["CSharp"].Rows[i].ItemArray[0] + " -- " + ds.Tables["CSharp"].Rows[i].ItemArray[1]);
                nList.Add("" + ds.Tables["CSharp"].Rows[i].ItemArray[1]);
            }

            listBox1.DataSource = nList;
        }

        public void xmldatajava2()
         {

             string xmlFile = "D:\\testxml.xml";

             DataSet ds = new DataSet();
             ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

             DataTable CSharpTables = ds.Tables["CSharp"];

             //List<string> nList1 = new List<string>();
             //int i = 0;

             //for (i = 0; i <= ds.Tables["CSharp"].Rows.Count - 1; i++)
             //{
                 //nList.Add(ds.Tables["CSharp"].Rows[i].ItemArray[0] + " -- " + ds.Tables["CSharp"].Rows[i].ItemArray[1]);
             //    nList1.Add(" " + ds.Tables["CSharp"].Rows[i].ItemArray[2]);
             //}

             //listBox2.DataSource = nList1;


             

         }

    }
}
