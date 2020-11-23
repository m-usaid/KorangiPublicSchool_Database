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
    public partial class Form1 : MaterialForm
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {
            Form sform = new Form9();
            sform.ShowDialog();
        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {
            Form staff_form = new Form3();
            staff_form.ShowDialog();
        }

        private void materialRaisedButton3_Click(object sender, EventArgs e)
        {
            Form attendanceform = new Form5();
            attendanceform.ShowDialog();
        }
    }
}
