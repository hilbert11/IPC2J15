<%@ Page Title="Modulo de Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModuloClientes.aspx.cs" Inherits="IPC2Fase2QE.ModuloClientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Modulo de Cliente.</h3>
    <div>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </div>
    <div>



        <table style="width:100%;">
            <tr>
                <td style="width: 309px" class="modal-sm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Consulta de Paquetes" BorderStyle="Solid" ForeColor="#66CCFF" Font-Bold="True" style="font-weight: bold" />
                    </td>
                <td>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Informacion de paquete" BorderStyle="Solid" ForeColor="#66CCFF" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 309px" class="modal-sm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cotizacion" ForeColor="#66CCFF" OnClick="Button3_Click" />
                    </td>
                <td>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" style="margin-left: 0" Text="Editar Perfil" ForeColor="#66CCFF" />
                    <br />
                </td>
            </tr>
        </table>
<p style="height: 182px">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Paquete]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Paquete" />
            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
            <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
            <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        </Columns>
    </asp:GridView>

</p>
        <p>

</p>
        <p>

</p>
        <p style="height: 81px">

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes] WHERE ([Nombre] LIKE '%' + @Nombre + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Nombre" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Cliente" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Cliente" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                </Columns>
            </asp:GridView>

</p>



    </div>
</asp:Content>
