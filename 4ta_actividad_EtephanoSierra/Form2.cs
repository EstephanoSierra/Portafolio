using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _4ta_actividad_EtephanoSierra
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("adios :c");
            this.Hide();
            Form1 b = new Form1();
            b.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void dataGripToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            datagrip a = new datagrip();
            a.Show();
        }

        private void consultasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            consultas c = new consultas();
            c.Show();
        }

        private void insertarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            insertar d = new insertar();
            d.Show();
        }
    }
}
