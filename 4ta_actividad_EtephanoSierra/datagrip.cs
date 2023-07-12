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
    public partial class datagrip : Form
    {
        public datagrip()
        {
            InitializeComponent();
        }

        SqlConnection a = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DANY\Desktop\Nueva carpeta\sobras\Progra 2\4ta_actividad_EtephanoSierra\Database1.mdf;Integrated Security=True");



        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int datos = e.RowIndex;
            if (datos != -1)
            {
                textBox1.Text = (string)dataGridView1.Rows[datos].Cells[1].Value;
                textBox2.Text = (string)dataGridView1.Rows[datos].Cells[2].Value;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            a.Open();
            SqlCommand cmd = a.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM usuarios";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            adapt.Fill(dt);
            dataGridView1.DataSource = dt;
            a.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            a.Open();
            SqlCommand cmd = a.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from usuarios where usuario='" + textBox1.Text + "'";
            cmd.ExecuteNonQuery();
            a.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            a.Open();
            SqlCommand cmd = a.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into usuarios values('"+textBox1.Text+ "','" + textBox2.Text + "')";
            
            cmd.ExecuteNonQuery();


            SqlCommand cmo = a.CreateCommand();
            cmo.CommandType = CommandType.Text;
            cmo.CommandText = "SELECT * FROM usuarios";
            cmo.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(cmo);
            adapt.Fill(dt);
            dataGridView1.DataSource = dt;
            a.Close();
        }
    }
}
