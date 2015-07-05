<%@ Page Title="Reportes" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="IPC2Fase3QE.Reportes" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Reportes.</h3>
    <div>

        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="Reporte1.rpt">
            </Report>
        </CR:CrystalReportSource>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />

    </div>
</asp:Content>
