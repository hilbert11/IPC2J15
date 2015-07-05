<%@ Page Title="GestionServicio" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionServicio.aspx.cs" Inherits="IPC2Fase3QE.GestionServicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Gestion de Servicio al Cliente.</h3>
    <div>

        <asp:Label ID="Label5" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Aceptar Cliente"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Usuario" DataValueField="Cod_Cliente" ForeColor="Black" Height="18px" Width="135px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button runat="server" Text="Ver" CssClass="btn btn-default" ID="Button1" OnClick="Button2_Click" />
        <br />
        <asp:Button runat="server" Text="Aceptar" CssClass="btn btn-default" ID="Button2" OnClick="Button1_Click" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Cliente" DataSourceID="SqlDataSource2" Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT [Cod_Cliente], [Nombre], [Apellido], [Direccion], [DPI], [NIT], [Telefono], [Usuario], [Contraseña] FROM [Clientes] WHERE ([Cod_Cliente] = @Cod_Cliente)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Cod_Cliente" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes] WHERE ([Casilla] = @Casilla)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Casilla" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    <div>

        <br />

        <asp:Label ID="Label8" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Generar FACTURA"></asp:Label>

        <br />

        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Paquete" />
                <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" SortExpression="Cod_Cliente" />
                <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" SortExpression="Cod_Lote" Visible="False" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Label ID="lbltotal" runat="server"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Label ID="lblUsuario" runat="server"></asp:Label>
        <br />

        <asp:Label ID="Label9" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="Large" Text="No: Casilla"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="187px" Style="height: 19px"></asp:TextBox>
        <asp:Button runat="server" Text="Facturar" CssClass="btn btn-default" ID="Button4" OnClick="Button4_Click" />

        <br />
        <asp:Button runat="server" Text="Imprimir" CssClass="btn btn-default" ID="Button5" OnClick="Button5_Click" />

        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND (([Peso] = @original_Peso) OR ([Peso] IS NULL AND @original_Peso IS NULL)) AND (([Valor] = @original_Valor) OR ([Valor] IS NULL AND @original_Valor IS NULL)) AND (([Costo] = @original_Costo) OR ([Costo] IS NULL AND @original_Costo IS NULL)) AND (([Impuesto] = @original_Impuesto) OR ([Impuesto] IS NULL AND @original_Impuesto IS NULL)) AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Cod_Cliente] = @original_Cod_Cliente) OR ([Cod_Cliente] IS NULL AND @original_Cod_Cliente IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Peso], [Valor], [Costo], [Impuesto], [Comision], [Total], [Stock], [Cod_Cliente], [Cod_Lote], [Estado]) VALUES (@Peso, @Valor, @Costo, @Impuesto, @Comision, @Total, @Stock, @Cod_Cliente, @Cod_Lote, @Estado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso] = @Peso, [Valor] = @Valor, [Costo] = @Costo, [Impuesto] = @Impuesto, [Comision] = @Comision, [Total] = @Total, [Stock] = @Stock, [Cod_Cliente] = @Cod_Cliente, [Cod_Lote] = @Cod_Lote, [Estado] = @Estado WHERE [Cod_Paquete] = @original_Cod_Paquete AND (([Peso] = @original_Peso) OR ([Peso] IS NULL AND @original_Peso IS NULL)) AND (([Valor] = @original_Valor) OR ([Valor] IS NULL AND @original_Valor IS NULL)) AND (([Costo] = @original_Costo) OR ([Costo] IS NULL AND @original_Costo IS NULL)) AND (([Impuesto] = @original_Impuesto) OR ([Impuesto] IS NULL AND @original_Impuesto IS NULL)) AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Cod_Cliente] = @original_Cod_Cliente) OR ([Cod_Cliente] IS NULL AND @original_Cod_Cliente IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                <asp:Parameter Name="original_Peso" Type="Double" />
                <asp:Parameter Name="original_Valor" Type="Double" />
                <asp:Parameter Name="original_Costo" Type="Double" />
                <asp:Parameter Name="original_Impuesto" Type="Double" />
                <asp:Parameter Name="original_Comision" Type="Double" />
                <asp:Parameter Name="original_Total" Type="Double" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_Cod_Cliente" Type="Int32" />
                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
                <asp:Parameter Name="original_Estado" Type="String" />
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
                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                <asp:Parameter Name="original_Peso" Type="Double" />
                <asp:Parameter Name="original_Valor" Type="Double" />
                <asp:Parameter Name="original_Costo" Type="Double" />
                <asp:Parameter Name="original_Impuesto" Type="Double" />
                <asp:Parameter Name="original_Comision" Type="Double" />
                <asp:Parameter Name="original_Total" Type="Double" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
                <asp:Parameter Name="original_Cod_Cliente" Type="Int32" />
                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
                <asp:Parameter Name="original_Estado" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <div>

        <br />

        <asp:Label ID="Label6" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Busqueda de empleado"></asp:Label>
        <br />

        <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Names="Britannic Bold" Font-Underline="False" Text="Escribir usuario"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="187px" Style="height: 19px"></asp:TextBox>
        &nbsp;<asp:Button runat="server" Text="Buscar" CssClass="btn btn-default" ID="Button3" OnClick="Button3_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />

    </div>
</asp:Content>
