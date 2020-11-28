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
    public partial class Form16 : MaterialForm
    {
        public Form16()
        {
            InitializeComponent();
        }

        private void Form16_Load(object sender, EventArgs e)
        {

        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {
            Form classroom = new Form17();
            classroom.ShowDialog();
        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {

        }
    }
}
