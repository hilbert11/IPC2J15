<%@ Page Title="Crear Paquete" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionPaquete.aspx.cs" Inherits="IPC2Fase3QE.CrearPaquete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear Paquete.</h3>
    <div>
        <table style="width:100%;">
            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Paquete" Visible="False" />
                            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                            <asp:BoundField DataField="Costo" HeaderText="Costo" SortExpression="Costo" />
                            <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                            <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" SortExpression="Cod_Cliente" />
                            <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" SortExpression="Cod_Lote" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    </asp:DetailsView>
                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cod_Cliente" DataSourceID="SqlDataSource5">
                        <Columns>
                            <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Cliente" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" Visible="False" />
                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" Visible="False" />
                            <asp:BoundField DataField="Casilla" HeaderText="Casilla" SortExpression="Casilla" Visible="False" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Lote" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Lote" />
                            <asp:BoundField DataField="Fecha_Envio" HeaderText="Fecha_Envio" SortExpression="Fecha_Envio" />
                            <asp:BoundField DataField="Fecha_Vuelo" HeaderText="Fecha_Vuelo" SortExpression="Fecha_Vuelo" />
                        </Columns>
                    </asp:GridView>
                    </td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Cod_Lote" DataSourceID="SqlDataSource4" DefaultMode="Insert" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Lote" />
                            <asp:BoundField DataField="Fecha_Envio" HeaderText="Fecha_Envio" SortExpression="Fecha_Envio" />
                            <asp:BoundField DataField="Fecha_Vuelo" HeaderText="Fecha_Vuelo" SortExpression="Fecha_Vuelo" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px; height: 20px;">
                    &nbsp;</td>
                <td style="height: 20px; width: 141px;">
                    &nbsp;</td>
                <td style="height: 20px">
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    &nbsp;</td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>

                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Lote]"></asp:SqlDataSource>
                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @Cod_Paquete" InsertCommand="INSERT INTO [Paquete] ([Peso], [Valor], [Costo], [Impuesto], [Comision], [Total], [Stock], [Cod_Cliente], [Cod_Lote]) VALUES (@Peso, @Valor, @Costo, @Impuesto, @Comision, @Total, @Stock, @Cod_Cliente, @Cod_Lote)" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso] = @Peso, [Valor] = @Valor, [Costo] = @Costo, [Impuesto] = @Impuesto, [Comision] = @Comision, [Total] = @Total, [Stock] = @Stock, [Cod_Cliente] = @Cod_Cliente, [Cod_Lote] = @Cod_Lote WHERE [Cod_Paquete] = @Cod_Paquete">
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
                            <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 154px">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Lote] WHERE [Cod_Lote] = @Cod_Lote" InsertCommand="INSERT INTO [Lote] ([Fecha_Envio], [Fecha_Vuelo]) VALUES (@Fecha_Envio, @Fecha_Vuelo)" SelectCommand="SELECT * FROM [Lote]" UpdateCommand="UPDATE [Lote] SET [Fecha_Envio] = @Fecha_Envio, [Fecha_Vuelo] = @Fecha_Vuelo WHERE [Cod_Lote] = @Cod_Lote">
                        <DeleteParameters>
                            <asp:Parameter Name="Cod_Lote" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter DbType="Date" Name="Fecha_Envio" />
                            <asp:Parameter DbType="Date" Name="Fecha_Vuelo" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Date" Name="Fecha_Envio" />
                            <asp:Parameter DbType="Date" Name="Fecha_Vuelo" />
                            <asp:Parameter Name="Cod_Lote" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td style="width: 141px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>


        </table>
    </div>
</asp:Content>