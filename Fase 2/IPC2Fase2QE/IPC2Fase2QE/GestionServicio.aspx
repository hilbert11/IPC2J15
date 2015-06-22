<%@ Page Title="GestionServicio" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="GestionServicio.aspx.cs" Inherits="IPC2Fase2QE.GestionServicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Gestion de Servicio al Cliente.</h3>
    <div>

        <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Names="Britannic Bold" Font-Underline="False" Text="Escribir usuario"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="187px" style="height: 19px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />

    </div>
</asp:Content>
