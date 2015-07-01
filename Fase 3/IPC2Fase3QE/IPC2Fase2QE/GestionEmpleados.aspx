<%@ Page Title="GestionEmpleados" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GestionEmpleados.aspx.cs" Inherits="IPC2Fase3QE.GestionEmpleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Gestion Empleados.</h3>

    <div>

        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Consultar Equipo"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnRowCommand="GridView3_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Empleado" />
                            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                            <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" />
                            <asp:BoundField DataField="Cod_sucursal" HeaderText="Cod_sucursal" SortExpression="Cod_sucursal" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [Cod_Empleado] = @Cod_Empleado" InsertCommand="INSERT INTO [Empleados] ([Nombres], [Apellidos], [DPI], [Direccion], [Telefono], [Correo], [Sueldo], [Usuario], [Contraseña], [Rol], [Cod_Departamento], [Cod_sucursal]) VALUES (@Nombres, @Apellidos, @DPI, @Direccion, @Telefono, @Correo, @Sueldo, @Usuario, @Contraseña, @Rol, @Cod_Departamento, @Cod_sucursal)" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [DPI] = @DPI, [Direccion] = @Direccion, [Telefono] = @Telefono, [Correo] = @Correo, [Sueldo] = @Sueldo, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Rol] = @Rol, [Cod_Departamento] = @Cod_Departamento, [Cod_sucursal] = @Cod_sucursal WHERE [Cod_Empleado] = @Cod_Empleado">
                        <DeleteParameters>
                            <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                            <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Empleado" />
                            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                            <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" Visible="False" />
                            <asp:BoundField DataField="Cod_sucursal" HeaderText="Cod_sucursal" SortExpression="Cod_sucursal" Visible="False" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [Cod_Empleado] = @Cod_Empleado" InsertCommand="INSERT INTO [Empleados] ([Nombres], [Apellidos], [DPI], [Direccion], [Telefono], [Correo], [Sueldo], [Usuario], [Contraseña], [Rol], [Cod_Departamento], [Cod_sucursal]) VALUES (@Nombres, @Apellidos, @DPI, @Direccion, @Telefono, @Correo, @Sueldo, @Usuario, @Contraseña, @Rol, @Cod_Departamento, @Cod_sucursal)" SelectCommand="SELECT * FROM [Empleados] WHERE ([Cod_Empleado] = @Cod_Empleado)" UpdateCommand="UPDATE [Empleados] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [DPI] = @DPI, [Direccion] = @Direccion, [Telefono] = @Telefono, [Correo] = @Correo, [Sueldo] = @Sueldo, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Rol] = @Rol, [Cod_Departamento] = @Cod_Departamento, [Cod_sucursal] = @Cod_sucursal WHERE [Cod_Empleado] = @Cod_Empleado">
                        <DeleteParameters>
                            <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Cod_Empleado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                            <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>

            </tr>
            <tr>
                <td>
                    <br />
                </td>

            </tr>

            <tr>
                <td class="modal-sm" style="width: 303px">
                    <asp:Label ID="Label5" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Modificar Empleado"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 283px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Empleado" />
                            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                            <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" />
                            <asp:BoundField DataField="Cod_sucursal" HeaderText="Cod_sucursal" SortExpression="Cod_sucursal" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_sucursal] = @original_Cod_sucursal) OR ([Cod_sucursal] IS NULL AND @original_Cod_sucursal IS NULL))" InsertCommand="INSERT INTO [Empleados] ([Nombres], [Apellidos], [DPI], [Direccion], [Telefono], [Correo], [Sueldo], [Usuario], [Contraseña], [Rol], [Cod_Departamento], [Cod_sucursal]) VALUES (@Nombres, @Apellidos, @DPI, @Direccion, @Telefono, @Correo, @Sueldo, @Usuario, @Contraseña, @Rol, @Cod_Departamento, @Cod_sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [DPI] = @DPI, [Direccion] = @Direccion, [Telefono] = @Telefono, [Correo] = @Correo, [Sueldo] = @Sueldo, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Rol] = @Rol, [Cod_Departamento] = @Cod_Departamento, [Cod_sucursal] = @Cod_sucursal WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_sucursal] = @original_Cod_sucursal) OR ([Cod_sucursal] IS NULL AND @original_Cod_sucursal IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_Nombres" Type="String" />
                            <asp:Parameter Name="original_Apellidos" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                            <asp:Parameter Name="original_Sueldo" Type="Double" />
                            <asp:Parameter Name="original_Usuario" Type="String" />
                            <asp:Parameter Name="original_Contraseña" Type="String" />
                            <asp:Parameter Name="original_Rol" Type="String" />
                            <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="original_Cod_sucursal" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_Nombres" Type="String" />
                            <asp:Parameter Name="original_Apellidos" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                            <asp:Parameter Name="original_Sueldo" Type="Double" />
                            <asp:Parameter Name="original_Usuario" Type="String" />
                            <asp:Parameter Name="original_Contraseña" Type="String" />
                            <asp:Parameter Name="original_Rol" Type="String" />
                            <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="original_Cod_sucursal" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>
    <div>

        <table style="width:100%;">
            <tr>
                <td class="modal-sm" style="width: 302px">
                    <br />
                </td>
                <td class="modal-sm" style="width: 344px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 302px">
                    <asp:Label ID="Label6" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Despedir Empleado"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 344px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 302px">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Empleado" />
                            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                            <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                            <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" />
                            <asp:BoundField DataField="Cod_sucursal" HeaderText="Cod_sucursal" SortExpression="Cod_sucursal" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_sucursal] = @original_Cod_sucursal) OR ([Cod_sucursal] IS NULL AND @original_Cod_sucursal IS NULL))" InsertCommand="INSERT INTO [Empleados] ([Nombres], [Apellidos], [DPI], [Direccion], [Telefono], [Correo], [Sueldo], [Usuario], [Contraseña], [Rol], [Cod_Departamento], [Cod_sucursal]) VALUES (@Nombres, @Apellidos, @DPI, @Direccion, @Telefono, @Correo, @Sueldo, @Usuario, @Contraseña, @Rol, @Cod_Departamento, @Cod_sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [DPI] = @DPI, [Direccion] = @Direccion, [Telefono] = @Telefono, [Correo] = @Correo, [Sueldo] = @Sueldo, [Usuario] = @Usuario, [Contraseña] = @Contraseña, [Rol] = @Rol, [Cod_Departamento] = @Cod_Departamento, [Cod_sucursal] = @Cod_sucursal WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Sueldo] = @original_Sueldo) OR ([Sueldo] IS NULL AND @original_Sueldo IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_sucursal] = @original_Cod_sucursal) OR ([Cod_sucursal] IS NULL AND @original_Cod_sucursal IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_Nombres" Type="String" />
                            <asp:Parameter Name="original_Apellidos" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                            <asp:Parameter Name="original_Sueldo" Type="Double" />
                            <asp:Parameter Name="original_Usuario" Type="String" />
                            <asp:Parameter Name="original_Contraseña" Type="String" />
                            <asp:Parameter Name="original_Rol" Type="String" />
                            <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="original_Cod_sucursal" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombres" Type="String" />
                            <asp:Parameter Name="Apellidos" Type="String" />
                            <asp:Parameter Name="DPI" Type="String" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Sueldo" Type="Double" />
                            <asp:Parameter Name="Usuario" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Rol" Type="String" />
                            <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="Cod_sucursal" Type="Int32" />
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_Nombres" Type="String" />
                            <asp:Parameter Name="original_Apellidos" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="String" />
                            <asp:Parameter Name="original_Direccion" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="String" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                            <asp:Parameter Name="original_Sueldo" Type="Double" />
                            <asp:Parameter Name="original_Usuario" Type="String" />
                            <asp:Parameter Name="original_Contraseña" Type="String" />
                            <asp:Parameter Name="original_Rol" Type="String" />
                            <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                            <asp:Parameter Name="original_Cod_sucursal" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="modal-sm" style="width: 344px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
