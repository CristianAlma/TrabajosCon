<%@ Page Title="Listado de Compositores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoCompositores.aspx.cs" Inherits="TrabajosCon.ListadoCompositores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Listado de Compositores</h2>
        <div class="text-right mb-3">
            <a href="compositores.aspx" class="btn btn-primary">Agregar Compositor</a>
        </div>

        <div class="row mt-5"> 
            <div class="col-md-12">
                <asp:GridView ID="gvCompositores" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Bibliografia" HeaderText="Bibliografía" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
