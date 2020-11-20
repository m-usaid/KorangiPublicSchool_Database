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
    public partial class Form5 : MaterialForm
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void Form5_Load(object sender, EventArgs e)
        {

        }

        private void materialRaisedButton1_Click(object sender, EventArgs e)
        {
            Form attendanceview = new Form6();
            attendanceview.ShowDialog();
        }

        private void materialRaisedButton2_Click(object sender, EventArgs e)
        {
            Form attendanceupdate = new Form7();
            attendanceupdate.ShowDialog();
        }
    }
}
