using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace IPC2Fase3QE
{
    public partial class GenerarReportes : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlConnection con;
            //String MiConexion = null;
            //MiConexion = "Data Source=HILBERT\\SQL2012;Initial Catalog=ProyectoQE;Integrated Security=True";
            //con = new SqlConnection(MiConexion);
            //con.Open();

            //string SQL = null;
            //SQL = "Select * From Reporte1 ORDER BY firstname";
            //SqlDataAdapter myDa = new SqlDataAdapter(SQL, con);
            //con.Close();

            //DataSet1 ds = new DataSet1();
            //myDa.Fill(ds, "Reporte1");

            //ReportDocument myRPT = new ReportDocument();
            //myRPT.Load(Server.MapPath("~/Reporte1.rpt"));
            //myRPT.SetDataSource(ds);

            //CrystalReportViewer1.ReportSource = myRPT;


            Response.Redirect("Reporte1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reporte2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reporte3.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reporte4.aspx");
        }

        }
    
}