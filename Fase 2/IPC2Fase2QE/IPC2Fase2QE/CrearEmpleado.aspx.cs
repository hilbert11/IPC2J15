using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class CrearEmpleado : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Tabla = "Empleados";
            String Campos = "Nombres, Apellidos, DPI, Direccion, Telefono, Correo, Sueldo, Rol, Contraseña, Usuario";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList1.Text + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            this.TextBox6.Text = "";
            this.TextBox7.Text = "";
            this.TextBox8.Text = "";
            this.TextBox9.Text = "";

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