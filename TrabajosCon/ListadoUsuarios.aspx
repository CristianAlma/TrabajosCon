<%@ Page Title="Listado de Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoUsuarios.aspx.cs" Inherits="TrabajosCon.ListadoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center mt-5">Listado de Usuarios</h2>
        <div class="text-right mb-3">
            <a href="usuarios.aspx" class="btn btn-primary">Agregar Usuario</a>
        </div>
        
        <div class="row mt-5"> 
            <div class="col-md-12">
                <asp:GridView ID="gvUsuarios" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="nombre_usu" HeaderText="Nombre" SortExpression="nombre_usu" />
                        <asp:BoundField DataField="correo_usu" HeaderText="Correo" SortExpression="correo_usu" />
                        <asp:BoundField DataField="telefono_usu" HeaderText="Teléfono" SortExpression="telefono_usu" />
                        <asp:BoundField DataField="estado_usu" HeaderText="Estado" SortExpression="estado_usu" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
