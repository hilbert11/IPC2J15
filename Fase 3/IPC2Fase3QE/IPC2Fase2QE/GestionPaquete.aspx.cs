using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase3QE
{
    public partial class CrearPaquete : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int codcliente = conexion.ObtenerCodigoCliente(DropDownList1.Text);
            int codimpuesto = conexion.ObtenerCodigoImpuesto(DropDownList2.Text);
            int codsucursal = conexion.ObtenerCodigoSucursal(DropDownList3.Text);
            //MessageBox.Show("" + extraer);
            int estadoModificacion = 1;
            String Tabla = "Paquete";
            String Campos = "Peso, Valor, Costo, Impuesto, Comision, Total, Stock, Cod_Cliente, Cod_Lote, Estado, Cod_Impuesto, EstadoModificacion, Cod_sucursal";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + codcliente + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + codimpuesto + "','" + estadoModificacion + "','" + codsucursal + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            this.TextBox6.Text = "";
            this.TextBox7.Text = "";
            //this.TextBox8.Text = "";
            this.TextBox9.Text = "";
            this.TextBox10.Text = "";
            //this.TextBox11.Text = "";
            //this.TextBox12.Text = "";



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