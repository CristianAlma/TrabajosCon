<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TrabajosCon.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Estilo para el contenedor principal */
        .login-background {
            background-image: url('https://wallpapers.com/images/hd/classical-music-1600-x-900-wallpaper-lrxd5ce5sna7ez77.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        /* Estilo para la caja del formulario */
        .login-box {
            background-color: rgba(255, 255, 255, 0.9); /* Fondo blanco semitransparente */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>

    <!-- Contenedor principal con fondo -->
    <div class="container-fluid login-background d-flex justify-content-center align-items-center">
        <div class="row justify-content-center w-100">
            <div class="col-md-4 login-box">
                <h2 class="text-center mt-3">Iniciar sesión</h2>
                <!-- Mensaje de error visible en caso de credenciales inválidas -->
                <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

                <!-- Campo de Correo con margen inferior -->
                <div class="form-group mb-4">
                    <label for="txtCorreo">Correo</label>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" />
                </div>

                <!-- Campo de Contraseña con margen inferior -->
                <div class="form-group mb-4">
                    <label for="txtContrasena">Contraseña</label>
                    <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" TextMode="Password" />
                </div>

                <!-- Botón con margen superior adicional -->
                <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary btn-block mt-4" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>
