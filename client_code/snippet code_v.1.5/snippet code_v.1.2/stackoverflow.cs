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
    public partial class stackoverflow : Form
    {
        public stackoverflow()
        {
            InitializeComponent();
        }

        private void stackoverflow_Load(object sender, EventArgs e)
        {
            
        }

        void item1_Click(object sender, EventArgs e)
        {
            dataoverflow dataoverflowForm = new dataoverflow();
            dataoverflowForm.Show();

            this.Hide();
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

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            //update_program updateForm = new update_program();
            //updateForm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox5.AppendText("< 349 > How do I invoke a Java method when given the method name as a string?\r\n");
            textBox5.AppendText("The parameters identify the very specific method you need (if there are several overloaded available,");
            textBox5.AppendText("if the method has no arguments, only give methodName).... More\r\n\r\n");
            textBox5.AppendText("< 126 > When is the finalize() method called in Java?\r\n");
            textBox5.AppendText("In general it's best not to rely on finalize() to do any cleaning up etc. ");
            textBox5.AppendText("According to the Javadoc (which it would be worth reading), it is:..... More\r\n\r\n");
            textBox5.AppendText("< 59 > calling another method from the main method in java [duplicate]\r\n");
            textBox5.AppendText("You can only call instance method like do() (which is an illegal method name,\r\n");
            textBox5.AppendText("incidentally) against an instance of the class:.... More");

        }

        private void jAVAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            snippet_code snippetcodeForm = new snippet_code();
            snippetcodeForm.Show();

            this.Hide();
        }

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            update_program updateForm = new update_program();
            updateForm.Show();
        }


    }
}
