using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace IPC2Fase3QE
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
                MessageBox.Show("Rehazado por RECHA");
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            String NombreUsuario, nombre;

            SqlConnection con21 = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
            String nombre1 = "Select * from Clientes where Casilla='" + TextBox2.Text + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                NombreUsuario = leer1["Cod_Cliente"].ToString();
                TextBox3.Text = NombreUsuario;
                nombre = leer1["Nombre"].ToString();
                TextBox4.Text = leer1["Nombre"].ToString();
                TextBox5.Text = leer1["Direccion"].ToString();


            }
            else
            {
                MessageBox.Show("Error D:");
            }
            con21.Close();


            GridView4.Visible = true;
            Button5.Visible = true;
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbltotal.Text = GridView4.SelectedRow.Cells[7].Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(PageSize.A4, 10, 10, 10, 10);

            iTextSharp.text.pdf.PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

            string cadenaFinal = "";
            pdfDoc.Open();
            string strContent = cadenaFinal;
            pdfDoc.Add(new Paragraph("                                         FACTURA       No. 001"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                 Quetzal Expres                               "));
            pdfDoc.Add(new Paragraph("            10ma calle 20-15 Zona 15"));
            pdfDoc.Add(new Paragraph("              www.QuetzalExpress.com"));
            pdfDoc.Add(new Paragraph("             Nit Empresa: 21240000-1"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("Codigo del cliente:" + TextBox3.Text + "   Nombre:  " + TextBox4.Text + "    "));


            pdfDoc.Add(new Paragraph("Dirección:  " + TextBox5.Text + "                                "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                     TOTAL: " + lbltotal.Text));

            //Read string contents using stream reader and convert html to parsed conent 
            var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

            //Get each array values from parsed elements and add to the PDF document 
            foreach (var htmlElement in parsedHtmlElements)
                pdfDoc.Add(htmlElement as IElement);

            //Close your PDF 
            pdfDoc.Close();

            Response.ContentType = "application/pdf";

            //Set default file Name as current datetime 
            Response.AddHeader("content-disposition", "attachment; filename=FACTURA.pdf");
            System.Web.HttpContext.Current.Response.Write(pdfDoc);

            Response.Flush();
            Response.End();
        }


    }
}