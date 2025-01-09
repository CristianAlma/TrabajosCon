using System;
using TrabajosCon.Models;
using TrabajosCon.Services;

namespace TrabajosCon
{
    public partial class usuarios : System.Web.UI.Page
    {
        private UsuarioService usuarioService = new UsuarioService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Si es necesario cargar algo al inicio
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Obtener los datos del formulario
                string nombre = nombre_usu.Text.Trim();
                string correo = correo_usu.Text.Trim();
                string contrasena = contrasena_usu.Text.Trim();
                string telefono = telefono_usu.Text.Trim();
                bool estado = estado_usu.SelectedValue == "1";  // 1 = Activo, 0 = Inactivo

                // Crear un nuevo objeto Usuario
                Usuario nuevoUsuario = new Usuario
                {
                    nombre_usu = nombre,
                    correo_usu = correo,
                    contrasena_usu = contrasena,
                    telefono_usu = telefono,
                    estado_usu = estado
                    // No se incluye la fecha si no es necesario
                };

                // Usar el servicio para agregar el nuevo usuario
                usuarioService.AgregarUsuario(nuevoUsuario);

                // Redirigir a la página de listado de usuarios después de guardar
                Response.Redirect("ListadoUsuarios.aspx");
            }
        }
    }
}
