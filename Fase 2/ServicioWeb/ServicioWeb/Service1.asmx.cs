using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServicioWeb
{
    /// <summary>
    /// Descripción breve de Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }
        SqlConnection conexion = new SqlConnection();
        string mostrarError;
        public string MostrarError
        {

            get { return mostrarError; }
            set { mostrarError = value; }
        }
        [WebMethod]
        public bool conectarServidor()
        {
            bool respuesta = false;
            string cadenaConexion = @"Data Source=HILBERT\SQL2012;Initial Catalog=Tamako;Integrated Security=True";
            try
            {
                conexion.Close();
                conexion.ConnectionString = cadenaConexion;
                conexion.Open();
                respuesta = true;
            }

            catch (Exception e)
            {
                respuesta = false;
                MostrarError = "No se ha podido conectar " + e.Message.ToString();
            }


            return respuesta;
        }

        [WebMethod]
        public bool Registrar(string tabla, string campos, string valor)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "INSERT INTO " + tabla + "(" + campos + ") VALUES (" + valor + ");";
                conectarServidor();

                if (conectarServidor())
                {
                    if (cm.ExecuteNonQuery() == 1)
                        respuesta = true;
                    else
                        respuesta = false;

                }
                else
                {
                    respuesta = false;
                }

            }
            catch (Exception e)
            {
                respuesta = false;
                MostrarError = "Erro: " + e.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }

            return respuesta;
        }
    }
}