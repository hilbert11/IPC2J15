<%@ Page Title="Crear Director" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="CrearDirector.aspx.cs" Inherits="IPC2Fase2QE.CrearDirector" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear Director.</h3>
    <div>
        <table style="width:100%;">
            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label3" runat="server" Text="DPI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px; height: 20px;">
                    <asp:Label ID="Label7" runat="server" Text="Sueldo"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Label ID="Label10" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 110px">
                    <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="Button1_Click" />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
