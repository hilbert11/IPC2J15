using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class CrearPaquete : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int extraer = conexion.ObtenerCodigoCliente(DropDownList1.Text);
            MessageBox.Show("" + extraer);
            String Tabla = "Paquete";
            String Campos = "Peso, Valor, Costo, Impuesto, Comision, Total, Stock, Cod_Cliente";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + extraer + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            this.TextBox6.Text = "";
            this.TextBox7.Text = "";

            if (conexion.Registrar(Tabla, Campos, Valores))
            {
                MessageBox.Show("Creado :D");
            }
            else
            {
                MessageBox.Show("Error :(");
            }
        }
    }
}