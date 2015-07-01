using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase3QE
{
    public partial class CrearSede : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1(object sender, EventArgs e)
        {
            String Tabla = "Sede";
            String Campos = "Nombre_sede, Comision, Peso";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";


            if (conexion.Registrar(Tabla, Campos, Valores))
            {
                MessageBox.Show("Sede Registrada! :D");
            }
            else
            {
                MessageBox.Show("Error :(");
            }
        }

    }
}