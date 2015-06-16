using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace IPC2Practica1
{
    public partial class Form2 : Form
    {
        ServicioWebCliente.ServicioWebSoapClient servicio = new ServicioWebCliente.ServicioWebSoapClient();
        
        public Form2()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 hola = new Form1();
            hola.Show();
            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String Tabla = "Cliente";
            String Campos = "Nombre, DPI, Direccion, Telefono";
            String Valores = "'" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "'";

            this.textBox1.Text = "";
            this.textBox2.Text = "";
            this.textBox3.Text = "";
            this.textBox4.Text = "";


            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Cliente Creado");
            }
            else
            {

                MessageBox.Show("Hay error :(");
            }
        }
    }
}
