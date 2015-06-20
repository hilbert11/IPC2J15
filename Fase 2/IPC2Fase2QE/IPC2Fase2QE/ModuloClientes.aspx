<%@ Page Title="Modulo de Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModuloClientes.aspx.cs" Inherits="IPC2Fase2QE.ModuloClientes" %>

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
                    <td class="modal-sm" style="width: 124px">
                        <asp:Label ID="Label4" runat="server" Text="Costo"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                  
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 124px">
                        <asp:Label ID="Label1" runat="server" Text="Peso"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 124px">
                        <asp:Label ID="Label2" runat="server" Text="Costo por libra"></asp:Label>
                    </td>
                    <td style="width: 191px">
                        <asp:DropDownList ID="DropPeso" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nombre_sede" DataValueField="Nombre_sede" ForeColor="Black" Height="18px" Width="140px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 191px">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 124px">
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
                    <td style="width: 191px">
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
                    <td style="width: 191px">
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

            &nbsp;</p>



    </div>
</asp:Content>
