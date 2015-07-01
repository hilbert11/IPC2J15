using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using IPC2Fase3QE.Models;
using System.Windows.Forms;
namespace IPC2Fase3QE.Account
{
    public partial class Register : Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Tabla = "Clientes";
            String Campos = "Nombre, Apellido, Direccion, DPI, NIT, Telefono, Usuario, Contraseña, Casilla";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + 0 + "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            this.TextBox6.Text = "";
            this.TextBox7.Text = "";
            this.TextBox8.Text = "";

            if (conexion.Registrar(Tabla, Campos, Valores))
            {
                MessageBox.Show("Espere su aceptacion! :D");
            }
            else
            {
                MessageBox.Show("Error :(");
            }
        }
    }
}