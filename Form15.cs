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
    public partial class Form15 : MaterialForm
    {
        public Form15()
        {
            InitializeComponent();
        }

        private void Form15_Load(object sender, EventArgs e)
        {
            
        }

        private void materialRaisedButton3_Click(object sender, EventArgs e)
        {
            Form create = new Form16();
            create.ShowDialog();
        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {
            Form show = new Form24();
            show.ShowDialog();
        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {

        }
    }
}
