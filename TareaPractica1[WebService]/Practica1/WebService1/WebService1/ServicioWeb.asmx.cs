using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebService1
{
    /// <summary>
    /// Descripción breve de Service1
    /// </summary>
    [WebService(Namespace = "http://localhost/webService")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicioWeb : System.Web.Services.WebService
    {

    [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }
    [WebMethod]
        public string Edad(string edad)
        {
            return ("Mi edad es" + edad);

        }
    SqlConnection conexion = new SqlConnection();
    string mostrarError;

    public string MostrarEstado;

    //[WebMethod]
    public string MostrarError
    {
        get { return mostrarError; }
        set { mostrarError = value; }


    }

    [WebMethod]
    public bool conectarServidor()
    {
        bool respuesta = false;
        string cadenaConexion = @"Data Source=HILBERT\SQL2012;Initial Catalog=IPC2JPractica1;Integrated Security=True";
        try
        {
            conexion.Close();
            conexion.ConnectionString = cadenaConexion;
            conexion.Open();
            respuesta = true;
            MostrarEstado = "Conexion exitosa";
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
    [WebMethod]
    public DataSet Buscar(string popo)
    {
        popo = popo.Replace("'","''");
        SqlConnection con = new SqlConnection("Data Source=HILBERT\\SQL2012;Initial Catalog=IPC2JPractica1;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter("Select * From Libro WHERE Nombre Like '%" + popo + "%'",con);
        DataSet ds = new DataSet();
        con.Open();

        da.Fill(ds, "Libro");
        con.Close();
        return ds;
    }
    }
}