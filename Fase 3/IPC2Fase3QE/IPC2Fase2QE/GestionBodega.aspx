<%@ Page Title="GestionBodega" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionBodega.aspx.cs" Inherits="IPC2Fase3QE.GestionBodega" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Cargar CSV Paquete perdido.</h3>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Subir" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cargar Datos-Tabla" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Guardar" />
    </div>

    <asp:Label ID="lblOculto" runat="server" Text="" Visible="false"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" Height="251px" Width="420px" BackColor="White" BorderColor="#336666" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" BorderStyle="Double">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <div>

        <br />



        <asp:Label ID="Label7" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Añadir precio de Pre-Carga"></asp:Label>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Cliente" DataSourceID="SqlDataSource1">
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
                <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" />
                <asp:ImageField DataImageUrlField="Factura" DataImageUrlFormatString="~/Imagenes/{0}" HeaderText="Imagen">
                </asp:ImageField>
                <asp:ImageField DataImageUrlFormatString="~/Imagenes/{0}">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="Select * From Clientes"></asp:SqlDataSource>

    </div>
    <div>

        <br />



        <asp:Label ID="Label8" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Actualizar precio"></asp:Label>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Paquete" />
                <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" SortExpression="Cod_Cliente" />
                <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" SortExpression="Cod_Lote" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @Cod_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso], [Valor], [Costo], [Impuesto], [Comision], [Total], [Stock], [Cod_Cliente], [Cod_Lote], [Estado]) VALUES (@Peso, @Valor, @Costo, @Impuesto, @Comision, @Total, @Stock, @Cod_Cliente, @Cod_Lote, @Estado)" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso] = @Peso, [Valor] = @Valor, [Costo] = @Costo, [Impuesto] = @Impuesto, [Comision] = @Comision, [Total] = @Total, [Stock] = @Stock, [Cod_Cliente] = @Cod_Cliente, [Cod_Lote] = @Cod_Lote, [Estado] = @Estado WHERE [Cod_Paquete] = @Cod_Paquete">
            <DeleteParameters>
                <asp:Parameter Name="Cod_Paquete" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Peso" Type="Double" />
                <asp:Parameter Name="Valor" Type="Double" />
                <asp:Parameter Name="Costo" Type="Double" />
                <asp:Parameter Name="Impuesto" Type="Double" />
                <asp:Parameter Name="Comision" Type="Double" />
                <asp:Parameter Name="Total" Type="Double" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="Cod_Cliente" Type="Int32" />
                <asp:Parameter Name="Cod_Lote" Type="Int32" />
                <asp:Parameter Name="Estado" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Peso" Type="Double" />
                <asp:Parameter Name="Valor" Type="Double" />
                <asp:Parameter Name="Costo" Type="Double" />
                <asp:Parameter Name="Impuesto" Type="Double" />
                <asp:Parameter Name="Comision" Type="Double" />
                <asp:Parameter Name="Total" Type="Double" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="Cod_Cliente" Type="Int32" />
                <asp:Parameter Name="Cod_Lote" Type="Int32" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="Cod_Paquete" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

