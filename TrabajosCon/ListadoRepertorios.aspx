<%@ Page Title="Listado de Repertorios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoRepertorios.aspx.cs" Inherits="TrabajosCon.ListadoRepertorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Listado de Repertorios</h2>
        <div class="text-right mb-3">
            <a href="repertorios.aspx" class="btn btn-primary">Agregar Repertorio</a>
        </div>
        
       
        <div class="row mt-5"> 
            <div class="col-md-12">
                <asp:GridView ID="gvRepertorios" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="NombreObra" HeaderText="Nombre de la Obra" />
                        <asp:BoundField DataField="Concierto" HeaderText="Concierto" />
                        <asp:BoundField DataField="Compositor" HeaderText="Compositor" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
