using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _5tocompu_get_y_set.formularios
{
    public partial class calculadora : Form
    {
        clases.operaciones asd = new clases.operaciones();
        public calculadora()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a;
            int b;
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("alguno de los espacios esta vacio");
            }
            else
            {
                a = Convert.ToInt32(textBox1.Text);
                b = Convert.ToInt32(textBox2.Text);

                label1.Text = Convert.ToString(asd.sum(a, b));
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int a;
            int b;
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("alguno de los espacios esta vacio");
            }
            else
            {
                a = Convert.ToInt32(textBox1.Text);
                b = Convert.ToInt32(textBox2.Text);

                label1.Text = Convert.ToString(asd.res(a, b));
            }
        }
        private void button3_Click(object sender, EventArgs e)
        {
            int a;
            int b;
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("alguno de los espacios esta vacio");
            }
            else
            {
                a = Convert.ToInt32(textBox1.Text);
                b = Convert.ToInt32(textBox2.Text);

                label1.Text = Convert.ToString(asd.mul(a, b));
            }
        }
        private void button4_Click(object sender, EventArgs e)
        {
            double a;
            double b;
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("alguno de los espacios esta vacio");
            }else if (Convert.ToInt32(textBox2.Text) == 0)
            {
                MessageBox.Show("no se puede dividir dentro de cero");
            }

            else
            {

                a = Convert.ToDouble(textBox1.Text);
                b = Convert.ToDouble(textBox2.Text);

                label1.Text = Convert.ToString(asd.div(a, b));
            }
        }
        }
    }
