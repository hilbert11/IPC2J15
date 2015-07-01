using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase3QE
{
    public partial class CrearSucursal : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int var = conexion.ObtenerCodigoSede(DropDownList1.Text);
            
            String Tabla = "Sucursal";
            String Campos = "Nombre_sucursal, Direccion, Capacidad, Telefono, Cod_sede";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + var + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            MessageBox.Show(""+ var);

            if (conexion.Registrar(Tabla, Campos, Valores))
            {
                MessageBox.Show("Sucursal Registrada! :D");
            }
            else
            {
                MessageBox.Show("Error :(");
            }
        }
    }
}