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
        public string webstr { get; set; }
        public dataoverflow()
        {
            InitializeComponent();
        }

        private void dataoverflow_Load(object sender, EventArgs e)
        {
            showweb();
        }

        public void showweb()
        {
            string xmlFile = "D:\\data\\jsonxml.xml";

            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile, XmlReadMode.InferSchema);

            DataTable xmlshowurl = ds.Tables[1];

            webBrowser1.Navigate(@"javascript:void((function(){var a,b,c,e,f;f=0;a=document.cookie.split('; ');
                                for(e=0;e<a.length&&a[e];e++)
                                {
                                    f++;for(b='.'+location.host;b;b=b.replace(/^(?:%5C.|[^%5C.]+)/,'')){for(c=location.pathname;c;c=c.replace(/.$/,''))
                                {
                                    document.cookie=(a[e]+'; domain='+b+'; path='+c+'; 
                                    expires='+new Date((new Date()).getTime()-1e11).toGMTString());}}}})())");
            webBrowser1.DocumentText = "";
            //string curItem = webstr;

            webBrowser1.Navigate(webstr);
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

        private void uPDATEToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            update_program updateForm = new update_program();
            updateForm.Show();
        }

        private void goToPageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string curItem = webstr;
            System.Diagnostics.Process.Start(curItem);
        }

        private void backToSearchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            stackoverflow stkForm = new stackoverflow();
            stkForm.Show();
            this.Close();
        }


    }
}
