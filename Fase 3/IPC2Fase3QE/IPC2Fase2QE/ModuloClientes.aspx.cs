using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace IPC2Fase3QE
{
    public partial class ModuloClientes : System.Web.UI.Page
    {
        public float comision, peso, impuesto;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["username"].ToString();
            TextBox2.Text = Session["CodCliente"].ToString();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            txtcostopaquete.Visible = true;
            txtpeso.Visible = true;
            DropSede.Visible = true;
            DropCategoria.Visible = true;
            txttotal.Visible = true;
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
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


            calculo1 = costoinicio + (pesopaquete * peso);
            calculo2 = (costoinicio * ((comision / 100)));
            calculo3 = costoinicio * (impuesto / 100);
            total = calculo1 + calculo2 + calculo1;
            txttotal.Text = total.ToString();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0){
                MessageBox.Show("No tienes paquetes");
            }
            else
            {
                GridView1.Visible = true;
                GridView3.Visible = true;
            }
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            txtcostopaquete.Visible = false;
            txtpeso.Visible = false;
            DropSede.Visible = false;
            DropCategoria.Visible = false;
            txttotal.Visible = false;
            GridView2.Visible = false;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            txtcostopaquete.Visible = false;
            txtpeso.Visible = false;
            DropSede.Visible = false;
            DropCategoria.Visible = false;
            txttotal.Visible = false;
            GridView2.Visible = true;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName==("Select")){
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox3.Text = GridView1.Rows[num].Cells[1].Text;


            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}