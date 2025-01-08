<%@ Page Title="Listado de Conciertos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoConciertos.aspx.cs" Inherits="TrabajosCon.ListadoConciertos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
      
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <h2>Listado de Conciertos</h2>
            </div>
        </div>
        
    
        <div class="row mb-5"> 
            <div class="col-md-12">
                <a href="conciertos.aspx" class="btn btn-primary">Agregar Concierto</a>
            </div>
        </div>

       
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table table-striped table-bordered text-center">
                    <thead class="thead-dark">
                        <tr>
                            <th>Nombre del Concierto</th>
                            <th>Fecha</th>
                            <th>Ubicación</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="TableLiteral" runat="server"></asp:Literal>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
