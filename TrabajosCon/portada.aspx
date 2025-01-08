<%@ Page Title="Portada - Conciertos de Música Clásica" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="portada.aspx.cs" Inherits="TrabajosCon.Portada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <head>
        <style>
        
            .portada-container {
                background-image: url('https://wallpapers.com/images/hd/classical-music-1600-x-900-wallpaper-lrxd5ce5sna7ez77.jpg'); 
                background-size: cover;
                background-position: center;
                min-height: 100vh; 
                color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                flex-direction: column;
                width:100%;
            }

           
            .welcome-message {
                background: rgba(0, 0, 0, 0.5); 
                padding: 50px;
                border-radius: 10px;
                box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.5);
            }

            .welcome-message h1 {
                font-size: 3rem;
                font-weight: bold;
            }

            .welcome-message p {
                font-size: 1.25rem;
                margin-top: 20px;
            }

            .welcome-message .btn {
                margin-top: 30px;
                font-size: 1.2rem;
            }
        </style>
    </head>
    
   
    <div class="container-fluid portada-container">
        
        <div class="welcome-message">
            <h1 class="display-3 text-center">Bienvenidos a los Conciertos de Música Clásica</h1>
            <p class="lead text-center">Sumérgete en la belleza de la música clásica y disfruta de nuestros conciertos exclusivos.</p>
            <div class="text-center">
                <a href="ListadoConciertos.aspx" class="btn btn-primary btn-lg">Ver Conciertos</a>
            </div>
        </div>
    </div>
</asp:Content>
