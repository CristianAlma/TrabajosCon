using System;
using System.Collections.Generic;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class ListadoCompositores : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCompositores();
            }
        }

        private void CargarCompositores()
        {
            // Lista simulada
            var compositores = new List<Compositor>
            {
                new Compositor { Nombre = "Ludwig van Beethoven", Bibliografia = "Uno de los más grandes compositores de la historia." },
                new Compositor { Nombre = "Wolfgang Amadeus Mozart", Bibliografia = "Conocido por sus sinfonías y óperas." }
            };

            gvCompositores.DataSource = compositores;
            gvCompositores.DataBind();
        }

        public class Compositor
        {
            public string Nombre { get; set; }
            public string Bibliografia { get; set; }
        }
    }
}
