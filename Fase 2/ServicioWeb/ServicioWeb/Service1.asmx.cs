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
        //obtiene numero de sucursal
        [WebMethod]
        public int SeleccionarSursal(string nombresucur)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT Cod_sucursal FROM Sucursal where Nombre_sucursal='" + nombresucur + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
        }

        //obtiene numero de departamento
        [WebMethod]
        public int VerificarDepartamento(string nombredepa, int sucur)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT Cod_Departamento FROM Departamento where Nombre_departamento='" + nombredepa + "' and Cod_sucursal='" + sucur + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
        }
        //obtiene El codigo de la sede
        [WebMethod]
        public int ObtenerCodigoSede(string nombresede)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT Cod_sede FROM Sede where Nombre_sede='" + nombresede + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
        }
        //Obtiene el codigo del cliente
        [WebMethod]
        public int ObtenerCodigoCliente(string nombrecliente)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT Cod_Cliente FROM Clientes where Nombre='" + nombrecliente + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
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
        //Obtiene el apellido del cliente y verifica en la base de datos que coincida con el login indicado
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

        //Obtiene el ID del cliente
        [WebMethod]
        public string getCodigoCliente(string user)
        {
            DataSet ds = new DataSet();
            string nombre = "";
            try
            {
                string instruccion = "SELECT Cod_Cliente FROM Clientes WHERE Usuario='" + user + "'";
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
                MostrarError = "Error: " + e.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return contador;
        }
        //Obtiene el nombre del apellido
        [WebMethod]
        public string getNombreEmp(string user)
        {
            DataSet ds = new DataSet();
            string nombre = "";
            try
            {
                string instruccion = "SELECT Nombre FROM Empleados WHERE Usuario='" + user + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Empleados");
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
        //Obtiene el apellido del Empleado
        [WebMethod]
        public string getApellidoEmp(string user)
        {
            DataSet ds = new DataSet();
            string nombre = "";
            try
            {
                string instruccion = "SELECT Apellido FROM Empleados WHERE Usuario='" + user + "'";
                SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
                if (conectarServidor())
                {
                    adap1.Fill(ds, "Empleados");
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
//Cargar archivo CSV
//nombretabla = nombre de nuestra tabla
//'ruta/del/archivo' = Donde esté ubicado nuestro archivo csv.
//firstrow=2 = Este parámetro es opcional. Indicamos que empieze a importar a partir de la segunda línea. Se suele utilizar porque normalmente la primera columna indica el nombre de la columna.
//FIELDTERMINATOR = delimitador de campos
//ROWTERMINATOR  delimitador de registro
    [WebMethod]
        public bool CargarCSVImpuesto(string path)
        {
            bool respuesta = false;
            try
            {
                SqlCommand verificar = new SqlCommand();
                verificar.Connection = conexion;
                verificar.CommandText = "BULK INSERT dbo.Impuesto FROM '" + path + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";
                
                conectarServidor(); 
                
                if (conectarServidor())
                {
                    if (verificar.ExecuteNonQuery() == 1)
                    {
                        respuesta = true;
                    }
                        
                    else
                    {
                        respuesta = false;
                    }
                        

                }
                else
                {
                    respuesta = false;
                }
            }
            catch (Exception ex)
            {
                respuesta = false;
                mostrarError = "Error" + ex.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return respuesta;
        }
    //Verifica El director en la base de datos para hacer sesion
    [WebMethod]
    public bool existeDirector(string user)
    {
        bool respuesta = false;
        DataSet ds = new DataSet();

        try
        {
            string instruccion = "SELECT Usuario FROM Director WHERE Usuario= '" + user + "'";
            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
            if (conectarServidor())
            {
                adap1.Fill(ds, "Director");
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

    //Inicia sesion con el DIRECTOR
    [WebMethod]
    public bool LoginDirector(string user, string contraseña, string rol)
    {
        bool respuesta = false;
        DataSet ds = new DataSet();
        try
        {
            string instruccion = "SELECT  Contraseña FROM Director WHERE Contraseña = '" + contraseña + "'";
            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
            if (conectarServidor())
            {
                adap1.Fill(ds, "Director");
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
    //Obtiene el nombre del director y verifica en la base de datos que coincida con el login indicado
    [WebMethod]
    public string getNombreDirector(string user)
    {
        DataSet ds = new DataSet();
        string nombre = "";
        try
        {
            string instruccion = "SELECT Nombres FROM Director WHERE Usuario='" + user + "'";
            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
            if (conectarServidor())
            {
                adap1.Fill(ds, "Director");
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
    //Obtiene el apellido del director y verifica en la base de datos que coincida con el login indicado
    [WebMethod]
    public string getApellidoDiretor(string user)
    {
        DataSet ds = new DataSet();
        string nombre = "";
        try
        {
            string instruccion = "SELECT Apellidos FROM Director WHERE Usuario='" + user + "'";
            SqlDataAdapter adap1 = new SqlDataAdapter(instruccion, conexion);
            if (conectarServidor())
            {
                adap1.Fill(ds, "Director");
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

        
    }
}