using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string rdtxt = ReadTextFile("D:\\filename.txt");

            //List<string> nList = new List<string>();
            //nList.Add(rdtxt);

            //listBox1.DataSource = nList;

            //textBox1.Text = rdtxt;

            string text = rdtxt;

            //text = text.Replace(" ", " " + System.Environment.NewLine);
            text = text.Replace(" ", "\r\n");

            richTextBox1.Text = text;
        }

        public string ReadTextFile(string path)
        {
            try
            {
                string outstring = null;
                System.IO.StreamReader sr = default(System.IO.StreamReader);
                sr = new System.IO.StreamReader(path);
                outstring = sr.ReadToEnd();
                sr.Close();
                return outstring;
            }
            catch (Exception ex)
            {
            }
            return string.Empty;
        }
    }
}
