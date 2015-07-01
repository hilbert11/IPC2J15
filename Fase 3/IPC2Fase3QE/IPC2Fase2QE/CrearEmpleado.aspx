<%@ Page Title="Crear Empleado" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="IPC2Fase3QE.CrearEmpleado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear Empleado.</h3>
    <p>Llenar los datos.</p>
    <div>

        <table style="width:100%;">
            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label3" runat="server" Text="DPI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px; height: 20px;">
                    <asp:Label ID="Label7" runat="server" Text="Sueldo"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label10" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px; height: 23px;">
                    <asp:Label ID="Label8" runat="server" Text="Rol"></asp:Label>
                </td>
                <td style="height: 23px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="211px" ForeColor="Black">
                        <asp:ListItem>Empleado</asp:ListItem>
                        <asp:ListItem>Administrador</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label11" runat="server" Text="Nombre Sucursal"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="211px" ForeColor="Black" DataSourceID="SqlDataSource1" DataTextField="Nombre_sucursal" DataValueField="Nombre_sucursal">
                    </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Sucursal]"></asp:SqlDataSource>

                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label12" runat="server" Text="Nombre Departamento"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="211px" ForeColor="Black" DataSourceID="SqlDataSource2" DataTextField="Nombre_departamento" DataValueField="Nombre_departamento">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                </td>
            </tr>


        </table>
        <div>

            <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="Button1_Click" />

        </div>

    </div>
</asp:Content>