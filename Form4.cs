using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaterialSkin.Controls;
using System.Windows.Forms;

namespace Korangi_Public_School
{
    public partial class Form4 : MaterialForm
    {
        public Form4()
        {
            InitializeComponent();
            if (radioButton2.Checked == true)
            {
                textBox5.Enabled = false;
                listBox1.Enabled = false;
                button1.Enabled = false;
            }
        }

        private void Form4_Load(object sender, EventArgs e)
        {
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string sub = textBox5.Text;
            listBox1.Items.Add(sub);
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
            {
                textBox5.Enabled = false;
                listBox1.Enabled = false;
                button1.Enabled = false;
                textBox7.Enabled = true;
            }
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                textBox5.Enabled = true;
                listBox1.Enabled = true;
                button1.Enabled = true;
                textBox7.Enabled = false;
            }
        }
    }
}
