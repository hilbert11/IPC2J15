<%@ Page Title="GenerarRerportes" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GenerarReportes.aspx.cs" Inherits="IPC2Fase3QE.GenerarReportes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Generar Reportes.</h3>
    <div>

        <asp:Label ID="Label1" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Paquetes por Categoria"></asp:Label>

        <br />

    </div>

    <div>

        <asp:Label ID="Label2" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Paquetes por Sucursal"></asp:Label>

        <br />

    </div>
    <div>

        <asp:Label ID="Label3" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Resumen Empleados"></asp:Label>

        <br />

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar" CssClass="btn btn-success" />

        <table style="width: 100%">
            <tr>
                <td style="width: 211px">
                    <asp:DropDownList ID="DropDepartamento" runat="server" DataSourceID="SqlDataSource1" DataTextField="Cod_Departamento" DataValueField="Cod_Departamento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="DropSucursal" runat="server" DataSourceID="SqlDataSource1" DataTextField="Cod_sucursal" DataValueField="Cod_sucursal">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 19px; width: 211px"></td>
                <td style="height: 19px"></td>
                <td style="height: 19px"></td>
            </tr>
            <tr>
                <td style="height: 11px; width: 211px"></td>
                <td style="height: 11px"></td>
                <td style="height: 11px"></td>
            </tr>
        </table>

    </div>
    <div>

        <asp:Label ID="Label4" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="TOP 5"></asp:Label>

        <br />

    </div>
</asp:Content>
