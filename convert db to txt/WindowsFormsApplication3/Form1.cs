using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Security.Cryptography;
using System.Data.SqlClient;

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
            SqlConnection constr = new SqlConnection(Properties.Settings.Default.conn);
        }

        public void wrtgentxt()
        {
            //string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            //string filePath = "D:\\";
            string dbFile = "D:\\" + "filename" + ".txt";

            writeFileFromDB(dbFile);
        }

        public void writeFileFromDB(string dbFile)
        {
            //create connection
            SqlCommand comm = new SqlCommand();
            comm.Connection = new SqlConnection(Properties.Settings.Default.conn);
            try
            {
                string sql = string.Empty;
                sql = sql + "SELECT id, name ";
                sql = sql + "FROM testDL";

                comm.CommandText = sql;
                comm.Connection.Open();

                SqlDataReader sqlReader = comm.ExecuteReader();

                // Open the file for write operations.  If exists, it will overwrite due to the "false" parameter
                using (StreamWriter file = new StreamWriter(dbFile))
                {
                    while (sqlReader.Read())
                    {
                        file.WriteLine(sqlReader["id"] + "\t" + sqlReader["name"]);
                    }
                }

                sqlReader.Close();
                comm.Connection.Close();
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }

        //public void genfile()
        //{
        //    string dbFile = "D:\\"+"filename"+".txt";
        //    //"D:\\" + "frmGrid_" + dr["TABLE_NAME"].ToString() + ".Designer.cs"
        //    gotogen(dbFile);
        //}

        //public void gotogen(string desFile)
        //{
        //    string wrttxt = "1234";
        //    WriteTextFile(desFile, wrttxt);
        //}
        //public void WriteTextFile(string desFile, string wrttxt)
        //{
        //    try
        //    {
        //        System.IO.StreamWriter sw = default(System.IO.StreamWriter);
        //        sw = new System.IO.StreamWriter(desFile, false);
        //        sw.Write(wrttxt);
        //        sw.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //    }
        //}

        private void button1_Click(object sender, EventArgs e)
        {
            //genfile();
            wrtgentxt();
            MessageBox.Show("success");
        }


    }
}
