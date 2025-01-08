using System;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class repertorios : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Aquí puedes agregar lógica de carga si es necesario (ej. cargar conciertos y compositores)
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombreObra = nombreObra_rep.Text.Trim();
                int idConcierto = int.Parse(id_con.SelectedValue);
                int idCompositor = int.Parse(id_comp.SelectedValue);

                // Crear un objeto Repertorio (sin base de datos por ahora)
                Repertorio nuevoRepertorio = new Repertorio
                {
                    NombreObra = nombreObra,
                    IdConcierto = idConcierto,
                    IdCompositor = idCompositor
                };

                // Aquí puedes agregar lógica para "guardar" el repertorio (por ahora lo simulamos)

                Response.Redirect("ListadoRepertorios.aspx");
            }
        }
    }

    // Clase Repertorio para simular el almacenamiento de los datos
    public class Repertorio
    {
        public string NombreObra { get; set; }
        public int IdConcierto { get; set; }
        public int IdCompositor { get; set; }
    }
}
