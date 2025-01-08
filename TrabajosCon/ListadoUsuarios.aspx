<%@ Page Title="Listado de Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoUsuarios.aspx.cs" Inherits="TrabajosCon.ListadoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Listado de Usuarios</h2>
        <div class="text-right mb-3">
            <a href="usuarios.aspx" class="btn btn-primary">Agregar Usuario</a>
        </div>
        <asp:GridView ID="gvUsuarios" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
