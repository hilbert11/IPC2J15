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
    public partial class Form1 : Form
    {
        ServicioWebCliente.ServicioWebSoapClient servicio = new ServicioWebCliente.ServicioWebSoapClient();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Form2 vis = new Form2();
            vis.Show();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form3 hola2 = new Form3();
            //this.Visible = false;
            hola2.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            Form4 vis = new Form4();
            vis.Show();
        }

       

        
    }
}
