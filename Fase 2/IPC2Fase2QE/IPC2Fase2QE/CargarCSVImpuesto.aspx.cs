using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace IPC2Fase2QE
{
    public partial class CargarCSV : System.Web.UI.Page
    {
        ServicioReferencia.Service1 cq = new ServicioReferencia.Service1();

        SqlConnection conexion = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.AllowUserToAddRows = false
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (ChecarExtension(FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(MapPath(FileUpload1.FileName));

                    Label1.Text = FileUpload1.FileName + " cargado exitosamente";

                    lblOculto.Text = MapPath(FileUpload1.FileName);
                }
            }
            else
            {
                Label1.Text = "Error al subir el archivo o no es el tipo .CSV";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                CargarDatos(lblOculto.Text);
            }
            catch
            {
                Response.Write("Ocurrió un error debe cargar antes el archivo");
            }

        }
        //Boton para agregar a sql lo del gridView
        protected void Button3_Click(object sender, EventArgs e)
        {
            cq.CargarCSVImpuesto(lblOculto.Text);
            MessageBox.Show(lblOculto.Text);
            MessageBox.Show("Correcto");

            //SqlCommand agregar = new SqlCommand("insert into Impuesto values(@Cod_impuesto, @Categoria, @Impuesto)", conexion);
            //conexion.Open();
            //try
            //{
            //    //Recorre filas del gridView
            //    foreach (DataGridViewRow fila in GridView1.Rows)
            //    {
            //        //El Column1 es el nombre de la columna donde vamos a insertar gridView
            //        //agregar.Parameters.Clear();
            //        agregar.Parameters.AddWithValue("@Cod_impuesto", Convert.ToInt32(fila.Cells["Column1"].Value));
            //        agregar.Parameters.AddWithValue("@Categoria", Convert.ToString(fila.Cells["Column2"].Value));
            //        agregar.Parameters.AddWithValue("@Impuesto", Convert.ToString(fila.Cells["Column3"].Value));

            //        //Esto es utilizando DataRowView
            //        //agregar.Parameters.Add("@Cod_impuesto", SqlDbType.Int).Value = Convert.ToInt32(fila[0].ToString());
            //        //agregar.Parameters.Add("@Categoria", SqlDbType.VarChar, 50).Value = fila[1].ToString();
            //        //agregar.Parameters.Add("@Impuesto", SqlDbType.VarChar, 50).Value = fila[2].ToString();

            //        agregar.ExecuteNonQuery();

            //        MessageBox.Show("Datos agregados");
            //    }
            //}
            //catch(Exception ex)
            //{
            //    MessageBox.Show("Error al agregar");
            //    MessageBox.Show(ex.Message);
            //}
            //finally
            //{
            //    conexion.Close();
            //}

        }
        //Metodos para leer el archivo CSV y colocarlo en el GridView
        //Crear Tabla
        private DataTable CrearTabla(String fila)
        {
            int cantidadColumnas;
            DataTable tabla = new DataTable("Datos");
            String[] valores = fila.Split(new char[] { ',' });
            cantidadColumnas = valores.Length;
            int idx = 0;
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
            }
            return tabla;
        }

        //Cargar Filas
        private DataRow AgregarFila(String fila, DataTable tabla)
        {
            int cantidadColumnas = 100;
            String[] valores = fila.Split(new char[] { ',' });
            Int32 numeroTotalValores = valores.Length;
            if (numeroTotalValores > cantidadColumnas)
            {
                Int32 diferencia = numeroTotalValores - cantidadColumnas;
                for (Int32 i = 0; i < diferencia; i++)
                {

                    String nombreColumna = String.Format("{0}", (cantidadColumnas + i));
                    tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
                }
                cantidadColumnas = numeroTotalValores;
            }
            int idx = 0;
            DataRow dfila = tabla.NewRow();
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                dfila[nombreColumna] = val.Trim();
            }
            tabla.Rows.Add(dfila);
            return dfila;
        }

        //Cargar Datos
        private void CargarDatos(string strm)
        {
            DataTable tabla = null;
            StreamReader lector = new StreamReader(strm);
            String fila = String.Empty;
            Int32 cantidad = 0;
            do
            {
                fila = lector.ReadLine();
                if (fila == null)
                {
                    break;
                }
                if (0 == cantidad++)
                {
                    tabla = this.CrearTabla(fila);
                }
                this.AgregarFila(fila, tabla);
            } while (true);

            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        //Determina el tipo de archivo que debe de leer
        bool ChecarExtension(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".csv":
                    return true;
                default:
                    return false;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //GridViewRow row = GridView1.Rows[0];
            //TextBox1.Text = Convert.ToString(row.Cells[0].Text);
            //TextBox2.Text = Convert.ToString(row.Cells[1].Text);
            //TextBox3.Text = Convert.ToString(row.Cells[2].Text);

        }

    }
}