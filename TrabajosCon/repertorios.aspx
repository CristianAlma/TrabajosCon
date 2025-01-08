<%@ Page Title="Formulario de Registro de Repertorio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="repertorios.aspx.cs" Inherits="TrabajosCon.repertorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mt-4">Formulario de Registro de Repertorio</h2>

                <div class="form-group mt-5 mb-4">
                    <label for="nombreObra_rep"><b>Nombre de la Obra:</b></label>
                    <asp:TextBox ID="nombreObra_rep" runat="server" CssClass="form-control" Placeholder="Ingrese el nombre de la obra" />
                    <asp:RequiredFieldValidator ID="rfvNombreObra" runat="server" ControlToValidate="nombreObra_rep" InitialValue="" ErrorMessage="El nombre de la obra es obligatorio." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group mb-4">
                    <label for="id_con"><b>Concierto:</b></label>
                    <asp:DropDownList ID="id_con" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Seleccione un concierto" Value="0" />
                        <asp:ListItem Text="Concierto 1" Value="1" />
                        <asp:ListItem Text="Concierto 2" Value="2" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvConcierto" runat="server" ControlToValidate="id_con" InitialValue="0" ErrorMessage="El concierto es obligatorio." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group mb-4">
                    <label for="id_comp"><b>Compositor:</b></label>
                    <asp:DropDownList ID="id_comp" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Seleccione un compositor" Value="0" />
                        <asp:ListItem Text="Compositor 1" Value="1" />
                        <asp:ListItem Text="Compositor 2" Value="2" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCompositor" runat="server" ControlToValidate="id_comp" InitialValue="0" ErrorMessage="El compositor es obligatorio." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group text-center mt-5">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="btnGuardar_Click" />
                    <a href="ListadoRepertorios.aspx" class="btn btn-danger ml-3">Cancelar</a>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
