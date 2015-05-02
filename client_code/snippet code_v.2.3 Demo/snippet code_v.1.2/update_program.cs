using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;

namespace snippet_code_v._1._2
{
    public partial class update_program : Form
    {
        public update_program()
        {
            InitializeComponent();
        }

        private string source_file = "";
        private string destination_file = "";

        private void update_program_Load(object sender, EventArgs e)
        {
            try
            {
                string[] args = Environment.GetCommandLineArgs();
                source_file = args[1].Replace("@", " ");
                destination_file = args[2].Replace("@", " ");
                System.IO.File.Copy(source_file, destination_file, true);
            }
            catch (Exception ex)
            {

            }
        }
        

        private void timer1_Tick_1(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(destination_file))
            {
                Process.Start(destination_file);
            }
            this.Hide();
            //Application.Exit();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(destination_file))
            {
                Process.Start(destination_file);
            }
            this.Hide();
            //Application.Exit();
        }


        
    }
}
