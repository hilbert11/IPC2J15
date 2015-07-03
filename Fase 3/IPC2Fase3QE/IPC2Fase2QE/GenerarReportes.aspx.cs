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

namespace IPC2Fase3QE
{
    public partial class GenerarReportes : System.Web.UI.Page
    {
        ServicioReferencia.Service1 conexion = new ServicioReferencia.Service1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);

            //try
            //{
            //    PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

            //    //Open PDF Document to write data 
            //    pdfDoc.Open();
            //    ////Reportar rep = new Reportar();
            //    string cadenaFinal = "REPORTE PARA DEPARTAMENTO: " + DropDepartamento.SelectedValue.ToString() + " Y NÚMERO DE SUCURSAL: " + DropSucursal.SelectedValue.ToString() + " </p>.  </p> . </p>.  </p> ";
            //    cadenaFinal += conexion.obtenerEmpleado("Empleado", Convert.ToInt32(DropSucursal.SelectedValue));

            //    cadenaFinal += "</p>.  </p>.  </p> Número de Empleados:    " + conexion.NumeroEmpleado("Empleado", Convert.ToInt32(DropSucursal.SelectedValue));

            //    cadenaFinal += "</p>.  </p>.  </p> Sueldo Total: " + conexion.TotalSueldos("Empleado", Convert.ToInt32(DropSucursal.SelectedValue));

            //    //Assign Html content in a string to write in PDF 
            //    string strContent = cadenaFinal;

            //    //Read string contents using stream reader and convert html to parsed conent 
            //    var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

            //    //Get each array values from parsed elements and add to the PDF document 
            //    foreach (var htmlElement in parsedHtmlElements)
            //        pdfDoc.Add(htmlElement as IElement);

            //    //Close your PDF 
            //    pdfDoc.Close();

            //    Response.ContentType = "application/pdf";

            //    //Set default file Name as current datetime 
            //    Response.AddHeader("content-disposition", "attachment; filename=DEMO.pdf");
            //    System.Web.HttpContext.Current.Response.Write(pdfDoc);

            //    Response.Flush();
            //    Response.End();
            //            catch (Exception ex)
            //{
               
            //}

                iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(PageSize.A4, 10, 10, 10, 10);

                iTextSharp.text.pdf.PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

                string cadenaFinal = "";
                pdfDoc.Open();
                int codSucursal = Convert.ToInt32(DropSucursal.SelectedValue);
            
                string strContent = cadenaFinal;
                pdfDoc.Add(new Paragraph("REPORTE PARA DEPARTAMENTO: " + DropDepartamento.SelectedValue.ToString() + " Y NÚMERO DE SUCURSAL: " + DropSucursal.SelectedValue.ToString()));
                pdfDoc.Add(new Paragraph("Número de Empleados:    " + conexion.NumeroEmpleado("Empleados", codSucursal)));
                pdfDoc.Add(new Paragraph("Sueldo Total: " + conexion.TotalSueldos("Empleados", codSucursal)));


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