<%@ Page Title="Crear Paquete" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionPaquete.aspx.cs" Inherits="IPC2Fase3QE.CrearPaquete" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Crear Paquete.</h3>
    <div>
        <table style="width:100%;">
            <tr>
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">

        <table style="width:100%;">
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label1" runat="server" Text="Peso"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label2" runat="server" Text="Valor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label3" runat="server" Text="Costo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label4" runat="server" Text="Impuesto"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label5" runat="server" Text="Comision"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px; height: 20px;">
                    <asp:Label ID="Label7" runat="server" Text="Stock"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label9" runat="server" Text="Cod cliente"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource6" DataTextField="Nombre" DataValueField="Nombre" ForeColor="Black" Height="16px" Width="208px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label10" runat="server" Text="Cod lote"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px; height: 23px;">
                    <asp:Label ID="Label8" runat="server" Text="Estado Paquete"></asp:Label>
                </td>
                <td style="height: 23px">
                    <asp:TextBox ID="TextBox10" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label11" runat="server" Text="Cod Impuesto"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource7" DataTextField="Categoria" DataValueField="Categoria" ForeColor="Black" Height="16px" Width="208px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Impuesto]"></asp:SqlDataSource>

                </td>
            </tr>

            <tr>
                <td style="width: 258px; height: 5px;">
                    <asp:Label ID="Label12" runat="server" Text="Cod Sucursal"></asp:Label>
                </td>
                <td style="height: 5px">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource8" DataTextField="Nombre_sucursal" DataValueField="Nombre_sucursal" ForeColor="Black" Height="16px" Width="208px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Sucursal]"></asp:SqlDataSource>
                </td>
            </tr>


        </table>
                </td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
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
                    </td>
            </tr>

            <tr>
                <td style="width: 388px">

            <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="Button1_Click" />

                </td>
                <td style="width: 82px">
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
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Cod_Lote" DataSourceID="SqlDataSource4" DefaultMode="Insert" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Lote" />
                            <asp:BoundField DataField="Fecha_Envio" HeaderText="Fecha_Envio" SortExpression="Fecha_Envio" />
                            <asp:BoundField DataField="Fecha_Vuelo" HeaderText="Fecha_Vuelo" SortExpression="Fecha_Vuelo" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px; height: 20px;">
                    &nbsp;</td>
                <td style="height: 20px; width: 82px;">
                    &nbsp;</td>
                <td style="height: 20px">
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>

                </td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Lote]"></asp:SqlDataSource>
                </td>
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
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
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 388px">
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
                <td style="width: 82px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>


        </table>
    </div>
</asp:Content>