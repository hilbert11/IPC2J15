<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearCliente.aspx.cs" Inherits="IPC2Fase2QE.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    

    <div class="form-horizontal">
        <h4>Registrar Cliente.</h4>
        <hr />
        
        <div class="form-group">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Direccion" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label4" runat="server" Text="DPI" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label5" runat="server" Text="NIT" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label6" runat="server" Text="Telefono" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label7" runat="server" Text="Usuario" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group">
            <br />
            <asp:Label ID="Label8" runat="server" Text="Contraseña" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control" TextMode="Password" />
            </div>
        </div>

        <div>

            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />

        </div>


    </div>
</asp:Content>
