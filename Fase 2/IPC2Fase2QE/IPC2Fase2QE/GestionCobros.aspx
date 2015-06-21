<%@ Page Title="GestionCobros" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GestionCobros.aspx.cs" Inherits="IPC2Fase2QE.GestionCobros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Gestion de cobros.</h3>
    <div>
 
            <table style="width: 100%;">
                <tr>
                    <td style="width: 169px; height: 45px;"></td>
                    <td class="modal-sm" style="width: 270px; height: 45px;">
                        <asp:Label ID="Label4" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Agregar cobro"></asp:Label>
                    </td>
                    <td style="height: 45px"></td>
                </tr>
                <tr>
                    <td style="width: 169px">
                        <asp:Label ID="Label2" runat="server" Text="Categoria"></asp:Label>
                    </td>
                    <td class="modal-sm" style="width: 270px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 169px">
                        <asp:Label ID="Label3" runat="server" Text="Impuesto del paquete"></asp:Label>
                    </td>
                    <td class="modal-sm" style="width: 270px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 169px">
                        <asp:Button ID="Button4" runat="server" Text="Guardar" CssClass="btn btn-default" OnClick="Button4_Click" />
                    </td>
                    <td class="modal-sm" style="width: 270px">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))" InsertCommand="INSERT INTO [Impuesto] ([Categoria], [ImpuestoPaquete]) VALUES (@Categoria, @ImpuestoPaquete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Categoria] = @Categoria, [ImpuestoPaquete] = @ImpuestoPaquete WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                    <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Cod_impuesto" DataSourceID="SqlDataSource4" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Cod_impuesto" HeaderText="Cod_impuesto" InsertVisible="False" ReadOnly="True" SortExpression="Cod_impuesto" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="ImpuestoPaquete" HeaderText="ImpuestoPaquete" SortExpression="ImpuestoPaquete" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>


        
    </div>
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <br />
                </td>
                
            </tr>

            <tr>
                <td class="modal-sm" style="width: 303px">&nbsp;</td>
                <td class="modal-sm" style="width: 261px">
                    <asp:Label ID="Label5" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Modificar Cobro"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))" InsertCommand="INSERT INTO [Impuesto] ([Categoria], [ImpuestoPaquete]) VALUES (@Categoria, @ImpuestoPaquete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Categoria] = @Categoria, [ImpuestoPaquete] = @ImpuestoPaquete WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                            <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Cod_impuesto" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Cod_impuesto" HeaderText="Cod_impuesto" InsertVisible="False" ReadOnly="True" SortExpression="Cod_impuesto" />
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                            <asp:BoundField DataField="ImpuestoPaquete" HeaderText="ImpuestoPaquete" SortExpression="ImpuestoPaquete" />
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
                <td class="modal-sm" style="width: 302px">&nbsp;</td>
                <td class="modal-sm" style="width: 344px">
                    <asp:Label ID="Label6" runat="server" Font-Names="Calisto MT" Font-Overline="True" Font-Size="XX-Large" Text="Inhabilitar Cobro"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 302px">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProyectoQEConnectionString %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))" InsertCommand="INSERT INTO [Impuesto] ([Categoria], [ImpuestoPaquete]) VALUES (@Categoria, @ImpuestoPaquete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [Categoria] = @Categoria, [ImpuestoPaquete] = @ImpuestoPaquete WHERE [Cod_impuesto] = @original_Cod_impuesto AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([ImpuestoPaquete] = @original_ImpuestoPaquete) OR ([ImpuestoPaquete] IS NULL AND @original_ImpuestoPaquete IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="ImpuestoPaquete" Type="Double" />
                            <asp:Parameter Name="original_Cod_impuesto" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_ImpuestoPaquete" Type="Double" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Cod_impuesto" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Cod_impuesto" HeaderText="Cod_impuesto" InsertVisible="False" ReadOnly="True" SortExpression="Cod_impuesto" />
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                            <asp:BoundField DataField="ImpuestoPaquete" HeaderText="ImpuestoPaquete" SortExpression="ImpuestoPaquete" />
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
                </td>
                <td class="modal-sm" style="width: 344px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

</asp:Content>

