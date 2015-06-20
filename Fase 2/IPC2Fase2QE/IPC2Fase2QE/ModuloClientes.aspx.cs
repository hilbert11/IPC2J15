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

            float costinicial, pesopaquete=0, tot, calculo1, calculo2, calculo3;

            SqlConnection conectar = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
            String instruccion = ("Select * From Sede where Nombre_sede'" + DropPeso.Text + "'");
            SqlCommand cmd =  new SqlCommand(instruccion, conectar);
            conectar.Open();
            SqlDataReader leer = cmd.ExecuteReader();
            if (leer.Read() == true)
            {
                comision = float.Parse(leer["Comision"].ToString());
                peso = float.Parse(leer["Peso"].ToString());

            }
            else
            {
                MessageBox.Show(":D");
            }
            conectar.Close();

            //Para sacar la categoria de la tabla impuesto
            SqlConnection conectar2 = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
            String instruccion2 = ("Select * From Impuesto where Categoria'" + DropCategoria.Text + "'");
            SqlCommand cmd2 = new SqlCommand(instruccion2, conectar2);
            conectar2.Open();
            SqlDataReader leer2 = cmd2.ExecuteReader();
            if (leer2.Read() == true)
            {
                impuesto = float.Parse(leer2["Impuesto"].ToString());

            }
            else
            {
                MessageBox.Show(":D");
            }
            conectar2.Close();

            //Aqui empieza la otra parte de la magia
            costinicial = float.Parse(TextBox4.Text);
            peso = float.Parse(TextBox2.Text);

            if (DropCategoria.Text == "Accesorio de Telefonia")
            {


                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();
            }
            else if (DropCategoria.Text == "Accesorio Deportivo")
            {

                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();


            }
            else if (DropCategoria.Text == "Articulos de Cuero")
            {
                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();



            }
            else if (DropCategoria.Text == "Videocintas")
            {
                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();

            }
            else if (DropCategoria.Text == "Videojuegos Blu-Ray")
            {
                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();



            }

            else if (DropCategoria.Text == "Zapatos")
            {
                calculo1 = costinicial + (pesopaquete * peso);
                calculo2 = (costinicial * ((comision / 100)));
                calculo3 = costinicial * (impuesto / 100);
                tot = calculo1 + calculo2 + calculo3;
                txttotal.Text = tot.ToString();



            }


            else
            {
                txttotal.Text = "Error";
            }
        }
    }
}