<%@ Page Title="Listado de Conciertos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoConciertos.aspx.cs" Inherits="TrabajosCon.ListadoConciertos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-between align-items-center">
            <div class="col-md-8">
                <h2>Listado de Conciertos</h2>
            </div>
            <div class="col-md-4 text-right">
                <a href="conciertos.aspx" class="btn btn-primary">Agregar Concierto</a>
            </div>
        </div>
        <table class="table table-bordered mt-3">
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
</asp:Content>
