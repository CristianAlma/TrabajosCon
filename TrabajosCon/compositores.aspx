<%@ Page Title="Formulario de Registro de Compositor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="compositores.aspx.cs" Inherits="TrabajosCon.compositores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mt-4">Formulario de Registro de Compositor</h2>

                <div class="form-group mt-5 mb-4">
                    <label for="nombre_comp"><b>Nombre del Compositor:</b></label>
                    <asp:TextBox ID="nombre_comp" runat="server" CssClass="form-control" Placeholder="Ingrese el nombre del compositor" />
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="nombre_comp" InitialValue="" ErrorMessage="El nombre es obligatorio." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group mb-4">
                    <label for="bibliografia_comp"><b>Bibliografía:</b></label>
                    <asp:TextBox ID="bibliografia_comp" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Ingrese una breve bibliografía del compositor" />
                    <asp:RequiredFieldValidator ID="rfvBibliografia" runat="server" ControlToValidate="bibliografia_comp" InitialValue="" ErrorMessage="La bibliografía es obligatoria." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="form-group text-center mt-5">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="btnGuardar_Click" />
                    <a href="ListadoCompositores.aspx" class="btn btn-danger ml-3">Cancelar</a>
                </div>

              
            </div>
        </div>
    </div>
</asp:Content>
