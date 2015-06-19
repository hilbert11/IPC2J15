using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace IPC2Fase2QE
{
    public partial class ModuloClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["username"].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}