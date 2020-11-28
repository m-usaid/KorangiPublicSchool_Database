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
    public partial class Form17 : MaterialForm
    {
        public Form17()
        {
            InitializeComponent();
        }

        private void Form17_Load(object sender, EventArgs e)
        {

        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {
            Form newclass = new Form18();
            newclass.ShowDialog();
        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {
            Form update = new Form19();
            update.ShowDialog();
        }
    }
}
