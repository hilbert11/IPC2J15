using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IPC2Fase2QE
{
    public partial class GestionServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            String cadenaconexion = "Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True";
            String consulta = "Select * From Clientes where (Nombre+' '+Apellido) like  '" + TextBox1.Text+"%'";
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


    }
}