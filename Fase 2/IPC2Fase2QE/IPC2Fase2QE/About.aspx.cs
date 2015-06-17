using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IPC2Fase2QE
{
    public partial class About : Page
    {
        ServiceReference1.Service1 conexion = new ServiceReference1.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String tabla = "";
            String campos = "";
            String valores = "";


            conexion.HelloWorld();
            conexion.Registrar(tabla, campos, valores);

        }
    }
}