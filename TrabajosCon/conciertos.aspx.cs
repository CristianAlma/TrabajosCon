using System;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class conciertos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Aquí puedes agregar alguna lógica de carga si es necesario.
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = nombre_con.Text.Trim();
                string fecha = fecha_con.Text.Trim();
                string ubicacion = ubicacion_con.Text.Trim();
                bool estado = estado_con.SelectedValue == "1"; // Si es "Activo" = true, si es "Inactivo" = false

                // Intentar convertir la fecha
                DateTime fechaConcierto;
                if (!DateTime.TryParseExact(fecha, "dd/MM/yyyy", null, System.Globalization.DateTimeStyles.None, out fechaConcierto))
                {
                    // Si la fecha no es válida, puedes mostrar un mensaje o manejar el error.
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('La fecha ingresada es incorrecta.');", true);
                    return;
                }

                // Crear un objeto Concierto con los valores obtenidos
                Concierto nuevoConcierto = new Concierto
                {
                    Nombre = nombre,
                    Fecha = fechaConcierto,
                    Ubicacion = ubicacion,
                    Estado = estado,
                    FechaRegistro = DateTime.Now
                };

                // Aquí podrías agregar lógica para guardar el nuevo concierto en memoria o en algún otro contenedor

                // Para este ejemplo, simulamos que se guarda correctamente y redirigimos al listado.
                Response.Redirect("ListadoConciertos.aspx");
            }
        }
    }

    // Clase Concierto para almacenar los datos
    public class Concierto
    {
        public string Nombre { get; set; }
        public DateTime Fecha { get; set; }
        public string Ubicacion { get; set; }
        public bool Estado { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
