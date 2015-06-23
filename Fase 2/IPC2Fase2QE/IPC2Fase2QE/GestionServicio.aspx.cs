using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class GestionServicio : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void Button1_Click(object sender, EventArgs e)
        {
            int casilla;
            casilla = Convert.ToInt32(conexion.getCasillaClienteMax() + 1);
            if (conexion.ModificarCasillaCliente(Convert.ToInt32(DropDownList1.SelectedValue), casilla.ToString()))
            {
                MessageBox.Show("Se ha aceptado al cliente :3");
            }
            else
            {
                MessageBox.Show("Rehaza por RECHA");
            }

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String cadenaconexion = "Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True";
            String consulta = "Select * From Clientes where (Nombre+' '+Apellido) like  '" + TextBox1.Text + "%'";
            SqlConnection con = new SqlConnection(cadenaconexion);
            con.Open();
            SqlDataAdapter daReservacion = new SqlDataAdapter(consulta, con);

            DataSet ds = new DataSet();
            daReservacion.Fill(ds, "Clientes");

            GridView1.DataSource = ds;
            GridView1.DataMember = "Clientes";
            GridView1.DataBind();

            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


    }
}