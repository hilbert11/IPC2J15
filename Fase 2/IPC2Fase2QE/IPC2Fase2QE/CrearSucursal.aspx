<%@ Page Title="Crear Sucursal" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="CrearSucursal.aspx.cs" Inherits="IPC2Fase2QE.CrearSucursal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear la Sucursal.</h3>
    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre de Sucursal" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Direccion" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Capacidad" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label4" runat="server" Text="Telefono" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label6" runat="server" Text="Sede" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_sede" DataValueField="Nombre_sede" ForeColor="Black">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Registrar Sucursal" CssClass="btn btn-default" OnClick="Button1_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Sede]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>