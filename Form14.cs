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
    public partial class Form14 : MaterialForm
    {
        public Form14()
        {
            InitializeComponent();
        }

        private void Form14_Load(object sender, EventArgs e)
        {

        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {
            Form exams = new Form15();
            exams.ShowDialog();
        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {
            Form logistics = new Form16();
            logistics.ShowDialog();
        }
    }
}
