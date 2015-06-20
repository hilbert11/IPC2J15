<%@ Page Title="Crear Sede" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearSede.aspx.cs" Inherits="IPC2Fase2QE.CrearSede" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear la SEDE.</h3>
    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre de Sede" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Comision" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Peso" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="Button1" Text="Registrar Sede" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>