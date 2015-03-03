using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlClient;
using WindowsFormsApplication3.getView;


namespace WindowsFormsApplication3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
           // SqlConnection conn = new SqlConnection("Data Source=SERAPH;Initial Catalog=snippet_code;Integrated Security=True");
           // string sql = @"SELECT * FROM Csharp ";
           // SqlCommand comm = new SqlCommand(sql, conn);

           // DataSet ds = new DataSet();
           // SqlDataAdapter Da = new SqlDataAdapter(comm);
           // DataTable dt = new DataTable();
           // Da.Fill(ds, "Csharp");

           // return(ds);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //WebService MyService = new WebService();
            WebService proxySample = new getView.WebService(); 
            // Call the GetData method in the Web Service

            DataSet CSharpDataSet = new DataSet();
            CSharpDataSet = proxySample.GetDataCSharp();

            DataTable CSharpTable = CSharpDataSet.Tables["CSharp"];


            dataGridView1.DataSource = CSharpTable;

            string filePath = "D:\\testxml.xml";
            CSharpDataSet.WriteXml(filePath);

            
            
        }
        
        private void button2_Click(object sender, EventArgs e)
        {
            string xmlFile = "D:\\testxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable CSharpTables = ds.Tables["CSharp"];


            dataGridView1.DataSource = CSharpTables;


        } 
        



    }
 }
