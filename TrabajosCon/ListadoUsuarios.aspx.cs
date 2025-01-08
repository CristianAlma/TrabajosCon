using System;
using System.Collections.Generic;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class ListadoUsuarios : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarUsuarios();
            }
        }

        private void CargarUsuarios()
        {
            // Lista simulada
            var usuarios = new List<Usuario>
            {
                new Usuario { Nombre = "Juan Pérez", Correo = "juan.perez@example.com", Telefono = "1234567890", Estado = "Activo" },
                new Usuario { Nombre = "Ana López", Correo = "ana.lopez@example.com", Telefono = "0987654321", Estado = "Inactivo" }
            };

            gvUsuarios.DataSource = usuarios;
            gvUsuarios.DataBind();
        }

        public class Usuario
        {
            public string Nombre { get; set; }
            public string Correo { get; set; }
            public string Telefono { get; set; }
            public string Estado { get; set; }
        }
    }
}
