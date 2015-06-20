using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using IPC2Fase2QE.Models;
using System.Windows.Forms;
//Libreria para variables de sesion
using System.Web.SessionState;

namespace IPC2Fase2QE
{
    public partial class Login : Page
    {
        ServicioReferencia.Service1 cq = new ServicioReferencia.Service1();

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";

        }

        protected void LogIn(object sender, EventArgs e)
        {
            String usuario, contraseña, rol;

            usuario = UserName.Text;
            contraseña = Password.Text;
            rol = DropDownList1.Text;

            if (cq.existecliente(UserName.Text) == true)
            {

                if (cq.LoginCliente(UserName.Text, Password.Text, DropDownList1.Text) == true)
                {
                    Session["username"] = cq.getNombre(UserName.Text);
                    Session["apellido"] = cq.getApellido(UserName.Text);
                    // Session["tipo"] = 1;

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Encontro Usuario cliente');</script>");

                    Response.Redirect("ModuloClientes.aspx");
                    MessageBox.Show("Inicio correcta :D");


                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Contraseña Incorrecta cliente');</script>");
                    //MessageBox.Show("Error :(");
                }
            }
            else if (DropDownList1.Text == "Empleado")
            {
                
                //int codigo = Convert.ToInt32(UserName.Text);

                if (cq.LoginEmpleado(usuario, contraseña, rol) == 1)
                {
                    Session["NombreEmpleado"] = cq.getNombreEmp(UserName.Text);
                    Session["ApellidoEmpleado"] = cq.getApellidoEmp(UserName.Text);
                    Response.Redirect("Contact.aspx");
                    MessageBox.Show("Hola Emppleado :)");

                }
                else
                {
                    MessageBox.Show("Error como Empleado");
                }

            }
            else if (DropDownList1.Text == "Administrador")
            {
                //int codigo = Convert.ToInt32(UserName.Text);

                if (cq.LoginEmpleado(usuario, contraseña, rol) == 1)
                {
                    Session["NombreAdmin"] = cq.getNombreEmp(UserName.Text);
                    Session["ApellidoAdmin"] = cq.getApellidoEmp(UserName.Text);
                    Response.Redirect("Default.aspx");
                    MessageBox.Show("Eres Administrador :D");
                }
                else
                {
                    MessageBox.Show("Error como Administrador");
                }

            }
            else if (cq.existeDirector(UserName.Text) == true)
            {

                if (cq.LoginDirector(UserName.Text, Password.Text, DropDownList1.Text) == true)
                {
                    Session["UsuarioDirector"] = cq.getNombreDirector(UserName.Text);
                    Session["ApellidoDirector"] = cq.getApellidoDiretor(UserName.Text);
                    // Session["tipo"] = 1;

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Encontro Usuario cliente');</script>");

                    Response.Redirect("ModuloDirector.aspx");
                    MessageBox.Show("Inicio correcta :D");


                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Contraseña Incorrecta Director');</script>");
                    //MessageBox.Show("Error :(");
                }
            }
            //else if (cq.existeEmpleado(DropDownList1.Text)==true)
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Correo Empleado Encontrado');</script>");

            //    if (cq.LoginEmpleado(UserName.Text, Password.Text) == true)
            //    {
            //        if ((cq.existeEmpleado(DropDownList1.Text)).Equals("Administrador"))
            //        {
            //            Session["username"] = cq.getNombreEmp(UserName.Text);
            //            Session["apellido"] = cq.getApellidoEmp(UserName.Text);
            //            //   Session["tipo"] = 2;

            //            Response.Redirect("Contact.aspx");
            //        }
            //        else if ((cq.existeEmpleado(DropDownList1.Text)).Equals("Empleado"))
            //        {
            //            Session["username"] = cq.getNombreEmp(UserName.Text);
            //            Session["apellido"] = cq.getApellidoEmp(UserName.Text);
            //            // Session["tipo"] = 3;

            //            Response.Redirect("Default.aspx");
            //        }

            //    }
            //}

        }
    }
}