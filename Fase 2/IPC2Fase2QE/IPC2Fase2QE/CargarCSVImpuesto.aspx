<%@ Page Title="Cargar CSV" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargarCSVImpuesto.aspx.cs" Inherits="IPC2Fase2QE.CargarCSV" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Cargar Archivo CSV.</h3>
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
    <asp:GridView ID="GridView1" runat="server" Height="251px" Width="420px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
    <p style="height: 327px">

        <table style="width:100%;">
            <tr>
                <td class="modal-sm" style="width: 214px">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Obtener" />
                </td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 214px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="width: 265px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 214px">&nbsp;</td>
                <td style="width: 265px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </p>
</asp:Content>

