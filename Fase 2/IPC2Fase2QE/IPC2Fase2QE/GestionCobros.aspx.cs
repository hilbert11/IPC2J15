using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class GestionCobros : System.Web.UI.Page
    {
        ServicioReferencia.Service1 cq = new ServicioReferencia.Service1();

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String Tabla = "Impuesto";
            String Campos = "Categoria, ImpuestoPaquete";
            String Valores = "'" + TextBox1.Text + "','" + TextBox2.Text +  "'";

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            

            if (cq.Registrar(Tabla, Campos, Valores))
            {
                MessageBox.Show("Impuesto Creado :D");
                GridView4.DataBind();
            }
            else
            {
                MessageBox.Show("Error :(");
            }
        }

    }
}