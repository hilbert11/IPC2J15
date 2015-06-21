using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class ModuloClientes : System.Web.UI.Page
    {
        public float comision, peso, impuesto;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = Session["username"].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            float costoinicio, pesopaquete=0, total, calculo1, calculo2, calculo3;



            //Verificación los campos de cobros

            SqlConnection con2 = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
            String nombre = "Select * from Sede where Nombre_sede='" + DropSede.Text + "' ";
            SqlCommand comando = new SqlCommand(nombre, con2);
            con2.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {

                comision = float.Parse(leer["Comision"].ToString());
                peso = float.Parse(leer["Peso"].ToString());




            }
            else
            {
                MessageBox.Show("dddd");
            }
            con2.Close();

            // verifica campos de impuestos
            SqlConnection con21 = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
            String nombre1 = "Select * from Impuesto where Categoria='" + DropCategoria.Text + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                impuesto = float.Parse(leer1["ImpuestoPaquete"].ToString());


            }
            else
            {
                MessageBox.Show("dddd");
            }
            con2.Close();




            costoinicio = float.Parse(txtcostopaquete.Text);
            pesopaquete = float.Parse(txtpeso.Text);

            //if (DropCategoria.Text == "Accesorio de Telefonia")
            //{


            calculo1 = costoinicio + (pesopaquete * peso);
            calculo2 = (costoinicio * ((comision / 100)));
            calculo3 = costoinicio * (impuesto / 100);
            total = calculo1 + calculo2 + calculo1;
            txttotal.Text = total.ToString();

            //}
            //else if (DropCategoria.Text == "Videocintas")
            //{

            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();

            //}
            //else if (DropCategoria.Text == "Articulos de Cuero")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();


            //}
            //else if (DropCategoria.Text == "Zapatos")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();
            //}

            //else if (DropCategoria.Text == "Videojuegos Blu-Ray")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();


            //}


            //else
            //{
            //    txttotal.Text = "Error";
            //}



            
        }
    }
}