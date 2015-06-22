<%@ Page Title="Crear Paquete" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="CrearPaquete.aspx.cs" Inherits="IPC2Fase2QE.CrearPaquete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear Paquete.</h3>
    <div>
        <table style="width:100%;">
            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label1" runat="server" Text="Peso"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label2" runat="server" Text="Valor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label3" runat="server" Text="Costo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label4" runat="server" Text="Impuesto"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label5" runat="server" Text="Comision"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px; height: 20px;">
                    <asp:Label ID="Label7" runat="server" Text="Stock"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:Label ID="Label8" runat="server" Text="Cliente"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Nombre" ForeColor="Black" Height="26px" Width="208px">
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">

            <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="Button1_Click" />

                </td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>


        </table>
    </div>
</asp:Content>