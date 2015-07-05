<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte4.aspx.cs" Inherits="IPC2Fase3QE.Reporte41" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="Reporte4.rpt">
            </Report>
        </CR:CrystalReportSource>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
    
    </div>
        <p>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" CssClass="arrow_button_hover" BorderStyle="Solid" />

        </p>
    </form>
</body>
</html>
