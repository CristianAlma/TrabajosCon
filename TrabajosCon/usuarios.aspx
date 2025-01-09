<%@ Page Title="Agregar Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="TrabajosCon.usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center mt-5">Agregar Usuario</h2>

        
        <div class="form-group">
            <label for="nombre_usu">Nombre:</label>
            <asp:TextBox ID="nombre_usu" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="correo_usu">Correo:</label>
            <asp:TextBox ID="correo_usu" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="contrasena_usu">Contraseña:</label>
            <asp:TextBox ID="contrasena_usu" runat="server" CssClass="form-control" TextMode="Password" />
        </div>
        <div class="form-group">
            <label for="telefono_usu">Teléfono:</label>
            <asp:TextBox ID="telefono_usu" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="estado_usu">Estado:</label>
            <asp:DropDownList ID="estado_usu" runat="server" CssClass="form-control">
                <asp:ListItem Value="1">Activo</asp:ListItem>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
    </div>
</asp:Content>
