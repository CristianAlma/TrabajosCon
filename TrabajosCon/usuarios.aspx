<%@ Page Title="Formulario de Registro de Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="TrabajosCon.usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mt-4">Formulario de Registro de Usuario</h2>

                <div class="form-group mt-5 mb-4">
                    <label for="nombre_usu"><b>Nombre:</b></label>
                    <asp:TextBox ID="nombre_usu" runat="server" CssClass="form-control" Placeholder="Ingrese el nombre" />
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="nombre_usu" InitialValue="" ErrorMessage="El nombre es obligatorio." ForeColor="Red" Display="Dynamic" ValidationGroup="vgUsuario" />
                </div>

                <div class="form-group mb-4">
                    <label for="correo_usu"><b>Correo:</b></label>
                    <asp:TextBox ID="correo_usu" runat="server" CssClass="form-control" Placeholder="Ingrese su correo" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="correo_usu" InitialValue="" ErrorMessage="El correo es obligatorio." ForeColor="Red" Display="Dynamic" ValidationGroup="vgUsuario" />
                    <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="correo_usu" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="Por favor ingrese un correo válido." ForeColor="Red" Display="Dynamic" ValidationGroup="vgUsuario" />
                </div>

                <div class="form-group mb-4">
                    <label for="contrasena_usu"><b>Contraseña:</b></label>
                    <asp:TextBox ID="contrasena_usu" runat="server" CssClass="form-control" Placeholder="Ingrese la contraseña" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="contrasena_usu" InitialValue="" ErrorMessage="La contraseña es obligatoria." ForeColor="Red" Display="Dynamic" ValidationGroup="vgUsuario" />
                </div>

                <div class="form-group mb-4">
                    <label for="telefono_usu"><b>Teléfono:</b></label>
                    <asp:TextBox ID="telefono_usu" runat="server" CssClass="form-control" Placeholder="Ingrese el teléfono" />
                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="telefono_usu" ValidationExpression="^\d{10}$" ErrorMessage="El teléfono debe tener exactamente 10 dígitos." ForeColor="Red" Display="Dynamic" ValidationGroup="vgUsuario" />
                </div>

                <div class="form-group mb-4">
                    <label for="estado_usu"><b>Estado:</b></label>
                    <asp:DropDownList ID="estado_usu" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Activo" Value="1" />
                        <asp:ListItem Text="Inactivo" Value="0" />
                    </asp:DropDownList>
                </div>

                <div class="form-group text-center mt-5">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="btnGuardar_Click" ValidationGroup="vgUsuario" />
                    <a href="ListadoUsuarios.aspx" class="btn btn-danger ml-3">Cancelar</a>
                </div>

               
        </div>
    </div>
</asp:Content>
