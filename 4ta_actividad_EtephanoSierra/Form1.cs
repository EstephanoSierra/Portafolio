using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _4ta_actividad_EtephanoSierra
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection a = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DANY\Desktop\Nueva carpeta\sobras\Progra 2\4ta_actividad_EtephanoSierra\Database1.mdf;Integrated Security=True");

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("rellene todos los campos");
            }
            else { 
            a.Open();
            SqlCommand cmd = new SqlCommand("SELECT nombre, contraseña FROM usuarios where nombre=@nombre AND contraseña=@contraseña", a);
            cmd.Parameters.AddWithValue("@nombre", textBox1.Text);
            cmd.Parameters.AddWithValue("@contraseña", textBox2.Text);
            SqlDataAdapter adat = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adat.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                MessageBox.Show("BIENVENIDO");
                this.Hide();
                Form2 b = new Form2();
                b.Show();
            }
            else
            {
                MessageBox.Show("usuario no encontrado");
            }
            a.Close();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
