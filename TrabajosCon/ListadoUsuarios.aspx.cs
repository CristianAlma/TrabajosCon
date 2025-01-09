using System;
using System.Collections.Generic;
using TrabajosCon.Services;
using TrabajosCon.Models;

namespace TrabajosCon
{
    public partial class ListadoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Crear instancia de UsuarioService
                UsuarioService usuarioService = new UsuarioService();

                // Obtener lista de usuarios desde la base de datos
                List<Usuario> usuarios = usuarioService.ObtenerUsuarios();

                // Verificar si la lista contiene datos
                if (usuarios.Count > 0)
                {
                    // Vincular los usuarios al GridView
                    gvUsuarios.DataSource = usuarios;
                    gvUsuarios.DataBind();
                }
                else
                {
                    // Mostrar mensaje si no hay usuarios
                    
                }
            }
        }
    }
}
