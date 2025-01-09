using System;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class usuarios : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = nombre_usu.Text.Trim();
                string correo = correo_usu.Text.Trim();
                string contrasena = contrasena_usu.Text.Trim();
                string telefono = telefono_usu.Text.Trim();
                bool estado = estado_usu.SelectedValue == "1";


                Usuario nuevoUsuario = new Usuario
                {
                    Nombre = nombre,
                    Correo = correo,
                    Contrasena = contrasena,
                    Telefono = telefono,
                    Estado = estado,
                    FechaRegistro = DateTime.Now
                };

                // Aquí puedes guardar el nuevo usuario en la base de datos.

                Response.Redirect("ListadoUsuarios.aspx");
            }
        }
    }

    public class Usuario
    {
        internal object nombre_usu;
        internal object correo_usu;
        internal object contrasena_usu;
        internal object telefono_usu;
        internal object estado_usu;
        internal int id_usu;
        internal int Id;

        public string Nombre { get; set; }
        public string Correo { get; set; }
        public string Contrasena { get; set; }
        public string Telefono { get; set; }
        public bool Estado { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
