<%@ Page Title="Formulario de Registro de Conciertos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="conciertos.aspx.cs" Inherits="TrabajosCon.conciertos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center">Formulario de Registro de Concierto</h2>

                <!-- Formulario de Concierto -->
                <div class="form-group">
                    <label for="nombre_con"><b>Nombre del Concierto:</b></label>
                    <asp:TextBox ID="nombre_con" runat="server" CssClass="form-control" Placeholder="Ingrese el nombre del concierto" />
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="nombre_con" InitialValue="" ErrorMessage="El nombre es obligatorio." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <label for="fecha_con"><b>Fecha:</b></label>
                    <asp:TextBox ID="fecha_con" runat="server" CssClass="form-control" Placeholder="dd/MM/yyyy" />
                    <asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="fecha_con" InitialValue="" ErrorMessage="La fecha es obligatoria." ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revFecha" runat="server" ControlToValidate="fecha_con" ValidationExpression="\d{2}/\d{2}/\d{4}" ErrorMessage="Formato de fecha inválido. Use dd/MM/yyyy." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <label for="ubicacion_con"><b>Ubicación:</b></label>
                    <asp:TextBox ID="ubicacion_con" runat="server" CssClass="form-control" Placeholder="Ingrese la ubicación del concierto" />
                    <asp:RequiredFieldValidator ID="rfvUbicacion" runat="server" ControlToValidate="ubicacion_con" InitialValue="" ErrorMessage="La ubicación es obligatoria." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group">
                    <label for="estado_con"><b>Estado:</b></label>
                    <asp:DropDownList ID="estado_con" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Activo" Value="1" />
                        <asp:ListItem Text="Inactivo" Value="0" />
                    </asp:DropDownList>
                </div>

                <div class="form-group text-center">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="btnGuardar_Click" />
                    <a href="ListadoConciertos.aspx" class="btn btn-danger ml-2">Cancelar</a>
                </div>

                <asp:ValidationSummary ID="vsResumen" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
</asp:Content>
