using System;
using System.Collections.Generic;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class ListadoRepertorios : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarRepertorios();
            }
        }

        private void CargarRepertorios()
        {
           
            var repertorios = new List<Repertorio>
            {
                new Repertorio { NombreObra = "Sinfonía No. 5", Concierto = "Concierto de Primavera", Compositor = "Beethoven" },
                new Repertorio { NombreObra = "Requiem", Concierto = "Concierto de Otoño", Compositor = "Mozart" }
            };

            gvRepertorios.DataSource = repertorios;
            gvRepertorios.DataBind();
        }

        public class Repertorio
        {
            public string NombreObra { get; set; }
            public string Concierto { get; set; }
            public string Compositor { get; set; }
        }
    }
}
