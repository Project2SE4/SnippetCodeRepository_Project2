using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace snippet_code_v._1._2
{
    public partial class dataoverflow : Form
    {
        public dataoverflow()
        {
            InitializeComponent();
        }

        private void dataoverflow_Load(object sender, EventArgs e)
        {

        }

        private void updateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            update_program updateForm = new update_program();
            updateForm.Show();
        }

        private void jAVAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            snippet_code snippetcodeForm = new snippet_code();
            snippetcodeForm.Show();

            this.Hide();
        }

        private void sTACKOVERFLOWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            stackoverflow stackoverflowForm = new stackoverflow();
            stackoverflowForm.Show();

            this.Hide();
            //this.Close();
        }
    }
}
