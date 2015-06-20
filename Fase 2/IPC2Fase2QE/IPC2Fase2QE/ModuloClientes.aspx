<%@ Page Title="Modulo de Clientes" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ModuloClientes.aspx.cs" Inherits="IPC2Fase2QE.ModuloClientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Modulo de Cliente.</h3>
    <div>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </div>
    <div>



        <table style="width: 100%;">
            <tr>
                <td style="width: 309px" class="modal-sm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Consulta de Paquetes" BorderStyle="Solid" ForeColor="#66CCFF" Font-Bold="True" Style="font-weight: bold" />
                </td>
                <td>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Informacion de paquete" BorderStyle="Solid" ForeColor="#66CCFF" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 309px" class="modal-sm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cotizacion" ForeColor="#66CCFF" OnClick="Button3_Click" />
                </td>
                <td>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Style="margin-left: 0" Text="Editar Perfil" ForeColor="#66CCFF" />
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
            &nbsp;</p>
        <p style="height: 313px">
            <table style="width:100%;">
                <tr>
                    <td class="modal-sm" style="width: 135px">
                        <asp:Label ID="Label4" runat="server" Text="Costo"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:TextBox ID="txtcostopaquete" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                  
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 135px">
                        <asp:Label ID="Label1" runat="server" Text="Peso"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:TextBox ID="txtpeso" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 135px">
                        <asp:Label ID="Label2" runat="server" Text="Sede"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:DropDownList ID="DropSede" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nombre_sede" DataValueField="Nombre_sede" ForeColor="Black" Height="18px" Width="140px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 135px">
                        <asp:Label ID="Label3" runat="server" Text="Categoria"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:DropDownList ID="DropCategoria" runat="server" DataSourceID="SqlDataSource4" DataTextField="Categoria" DataValueField="Categoria" ForeColor="Black" Height="16px" Width="141px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td style="width: 135px">
                        <%--<asp:Button ID="Button5" runat="server" Text="Cotizar" />--%>
                        <asp:Button ID="Button5" runat="server" Text="Cotizar" CssClass="btn btn-default" OnClick="Button5_Click" />
                    </td>
                    <td style="width: 191px">
                        <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                </tr>
                                <tr>
                    <td style="width: 135px">
                        &nbsp;</td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    <td style="width: 191px">
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Sede]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" SelectCommand="SELECT * FROM [Impuesto]"></asp:SqlDataSource>
        </p>
        <p style="height: 353px; margin-bottom: 159px;">

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [Cod_Cliente] = @original_Cod_Cliente AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([NIT] = @original_NIT) OR ([NIT] IS NULL AND @original_NIT IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL))" InsertCommand="INSERT INTO [Clientes] ([Nombre], [Apellido], [Direccion], [DPI], [NIT], [Telefono], [Usuario], [Contraseña]) VALUES (@Nombre, @Apellido, @Direccion, @DPI, @NIT, @Telefono, @Usuario, @Contraseña)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Clientes] WHERE ([Nombre] LIKE '%' + @Nombre + '%')" UpdateCommand="UPDATE [Clientes] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [DPI] = @DPI, [NIT] = @NIT, [Telefono] = @Telefono, [Usuario] = @Usuario, [Contraseña] = @Contraseña WHERE [Cod_Cliente] = @original_Cod_Cliente AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([NIT] = @original_NIT) OR ([NIT] IS NULL AND @original_NIT IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Cliente" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_NIT" Type="Int32" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Usuario" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="NIT" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Nombre" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="NIT" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="original_Cod_Cliente" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_NIT" Type="Int32" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Usuario" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Cliente" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
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
