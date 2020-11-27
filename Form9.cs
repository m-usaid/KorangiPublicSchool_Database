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
    public partial class Form9 : MaterialForm
    {
        public Form9()
        {
            InitializeComponent();
        }

        private void Form9_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form s_admission = new Form2();
            s_admission.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form s_view = new Form10();
            s_view.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form update_student = new Form12();
            update_student.ShowDialog();
        }
    }
}
