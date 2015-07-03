using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase3QE
{
    public partial class GestionEmpleados : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == ("Select"))
            {
                Int32 num = Convert.ToInt32(e.CommandArgument);
                TextBox1.Text = GridView1.Rows[num].Cells[1].Text;


            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int codEmpleado = Convert.ToInt32(DropDownList1.Text);
            string estado = "Despedido";
            conexion.EstadoEmpleado(codEmpleado, estado);
            MessageBox.Show(""+codEmpleado+" "+estado);
           
           
            
        }
    }
}