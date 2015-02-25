using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace snippet_code_v._1._1
{
    public partial class stackoverflow : Form
    {
        public stackoverflow()
        {
            InitializeComponent();
        }

        private void stackoverflow_Load(object sender, EventArgs e)
        {

        }

        private void flowButton1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
                (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // only allow one decimal point
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void homeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            snippet_code snippet_codeForm = new snippet_code();
            snippet_codeForm.Show();

            this.Hide();
        }

    }
}
