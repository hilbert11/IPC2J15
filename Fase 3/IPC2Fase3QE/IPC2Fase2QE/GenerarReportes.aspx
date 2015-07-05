<%@ Page Title="GenerarRerportes" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GenerarReportes.aspx.cs" Inherits="IPC2Fase3QE.GenerarReportes" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Generar Reportes.</h3>
    <div>

        <asp:Label ID="Label1" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Paquetes por Categoria"></asp:Label>

        <br />

        <br />

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Generar Reporte" CssClass="btn btn-success" />

        <br />

        <br />

    </div>

    <div>

        <asp:Label ID="Label2" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Paquetes por Sucursal"></asp:Label>

        <br />

        <br />

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Generar Reporte" CssClass="btn btn-success" />

        <br />

    </div>
    <div>

        <asp:Label ID="Label3" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Resumen Empleados"></asp:Label>

        <br />

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar Reporte" CssClass="btn btn-success" />

    </div>
    <div>

        <br />

        <asp:Label ID="Label4" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="TOP 5"></asp:Label>

        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Generar Reporte" CssClass="btn btn-success" />

        <br />

    </div>
</asp:Content>
