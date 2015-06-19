using System;
using System.Collections.Generic;
using System.Data;
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


        SqlConnection conexion = new SqlConnection();
        string mostrarError;
        //Muestra los errores
        public string MostrarError
        {

            get { return mostrarError; }
            set { mostrarError = value; }
        }
        //Metodo para conectar el servidor con SQL
        [WebMethod]
        public bool conectarServidor()
        {
            bool respuesta = false;
            string cadenaConexion = @"Data Source=HILBERT\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True";
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
        //Metodo para registrar a un cliente
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

        //Verifica cliente en la base de datos
        [WebMethod]
        public bool existecliente(string user)
        {
            bool respuesta = false;
            DataSet ds = new DataSet();

            try
            {
                string instruccion = "SELECT Usuario FROM Clientes WHERE Usuario= '" + user + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Clientes");
                    if (((string)ds.Tables[0].Rows[0][0]).Equals(user))
                    {
                        respuesta = true;
                    }
                    else
                    {
                        respuesta = false;
                    }
                }

            }
            catch (Exception)
            {
                respuesta = false;
            }
            finally
            {
                conexion.Close();
            }
            return respuesta;
        }

        //Inicia sesion con el cliente
        [WebMethod]
        public bool LoginCliente(string user, string contraseña, string rol)
        {
            bool respuesta = false;
            DataSet ds = new DataSet();
            try
            {
                string instruccion = "SELECT  Contraseña FROM Clientes WHERE Contraseña = '" + contraseña + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Clientes");
                    if (((string)ds.Tables[0].Rows[0][0]).Equals(contraseña))
                    {
                        respuesta = true;
                    }
                    else
                    {
                        respuesta = false;
                    }
                }
            }
            catch (Exception ex)
            {
                MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
                respuesta = false;
            }
            finally
            {
                conexion.Close();
            }

            return respuesta;
        }
        //Obtiene el nombre y verifica en la base de datos que coincida con el login indicado
        [WebMethod]
        public string getNombre(string user)
        {
            DataSet ds = new DataSet();
            string nombre = "";
            try
            {
                string instruccion = "SELECT Nombre FROM Clientes WHERE Usuario='" + user + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Clientes");
                    nombre = ds.Tables[0].Rows[0][0].ToString();
                }
                else
                {
                    nombre = "Sin conexion";
                }
            }
            catch (Exception ex)
            {
                nombre = ex.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return nombre;
        }
        //Obtiene el apellido y verifica en la base de datos que coincida con el login indicado
        [WebMethod]
        public string getApellido(string user)
        {
            DataSet ds = new DataSet();
            string nombre = "";
            try
            {
                string instruccion = "SELECT Apellido FROM Clientes WHERE Usuario='" + user + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Clientes");
                    nombre = ds.Tables[0].Rows[0][0].ToString();
                }
                else
                {
                    nombre = "Sin conexion";
                }
            }
            catch (Exception ex)
            {
                nombre = ex.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return nombre;
        }
        
        //Inicia sesion con Empleado
        [WebMethod]
        public int LoginEmpleado(string usuario, string contraseña, string rol)
        {

            int contador = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Empleados Where Usuario='" + usuario + "' and Contraseña='" + contraseña + "'and Rol='" + rol + "'";
                conectarServidor();
                contador = Convert.ToInt32(cm.ExecuteScalar());
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
            return contador;
        }
    //    //Verifica si existe el empleado y el rol
    //    [WebMethod]
    //    public bool existeEmpleado(string user)
    //    {
    //        bool respuesta = false;
    //        DataSet ds = new DataSet();

    //        try
    //        {
    //            string instruccion = "SELECT Rol FROM Empleados WHERE Rol= '" + user + "'";
    //            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
    //            if (conectarServidor())
    //            {
    //                adap1.Fill(ds, "Empleados");
    //                if (((string)ds.Tables[0].Rows[0][0]).Equals(user))
    //                {
    //                    respuesta = true;
    //                }
    //                else
    //                {
    //                    respuesta = false;
    //                }
    //            }

    //        }
    //        catch (Exception)
    //        {
    //            respuesta = false;
    //        }
    //        finally
    //        {
    //            conexion.Close();
    //        }
    //        return respuesta;
    //    }
    //    //Inicia sesion con el empleado
    //    [WebMethod]
    //    public bool LoginEmpleado(string user, string contraseña)
    //    {
    //        bool respuesta = false;
    //        DataSet ds = new DataSet();
    //        try
    //        {
    //            string instruccion = "SELECT FROM Empleados WHERE Usuario = '" + user + "' and Contraseña='" + contraseña + "'";
    //            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
    //            if (conectarServidor())
    //            {
    //                adap1.Fill(ds, "Empleados");
    //                if (((string)ds.Tables[0].Rows[0][0]).Equals(user))
    //                {
    //                    respuesta = true;
    //                }
    //                else
    //                {
    //                    respuesta = false;
    //                }
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
    //            respuesta = false;
    //        }
    //        finally
    //        {
    //            conexion.Close();
    //        }

    //        return respuesta;
    //    }
    //[WebMethod]
    //    public string getNombreEmp(string user)
    //    {
    //        DataSet ds = new DataSet();
    //        string nombre = "";
    //        try
    //        {
    //            string instruccion = "SELECT Nombre FROM Empleados WHERE Usuario='" + user + "'";
    //            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
    //            if (conectarServidor())
    //            {
    //                adap1.Fill(ds, "Empleados");
    //                nombre = ds.Tables[0].Rows[0][0].ToString();
    //            }
    //            else
    //            {
    //                nombre = "Sin conexion";
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            nombre = ex.ToString();
    //        }
    //        finally
    //        {
    //            conexion.Close();
    //        }
    //        return nombre;
    //    }

    //[WebMethod]
    //public string getApellidoEmp(string user)
    //{
    //    DataSet ds = new DataSet();
    //    string nombre = "";
    //    try
    //    {
    //        string instruccion = "SELECT Apellido FROM Empleados WHERE Usuario='" + user + "'";
    //        SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
    //        if (conectarServidor())
    //        {
    //            adap1.Fill(ds, "Empleados");
    //            nombre = ds.Tables[0].Rows[0][0].ToString();
    //        }
    //        else
    //        {
    //            nombre = "Sin conexion";
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        nombre = ex.ToString();
    //    }
    //    finally
    //    {
    //        conexion.Close();
    //    }
    //    return nombre;
    //}
    }
}