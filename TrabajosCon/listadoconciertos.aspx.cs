using System;
using System.Collections.Generic;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class ListadoConciertos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarConciertos();
            }
        }

        private void CargarConciertos()
        {
            // Lista de conciertos simulada
            var conciertos = new List<Concierto>
            {
                new Concierto { Nombre = "Concierto A", Fecha = new DateTime(2023, 1, 15), Ubicacion = "Teatro ABC", Estado = true },
                new Concierto { Nombre = "Concierto B", Fecha = new DateTime(2023, 2, 20), Ubicacion = "Auditorio XYZ", Estado = false }
            };

            string tableBody = string.Empty;

            foreach (var concierto in conciertos)
            {
                tableBody += $@"
                <tr>
                    <td>{concierto.Nombre}</td>
                    <td>{concierto.Fecha:dd/MM/yyyy}</td>
                    <td>{concierto.Ubicacion}</td>
                    <td>{(concierto.Estado ? "Activo" : "Inactivo")}</td>
                </tr>";
            }

            // Insertar las filas en el GridView
            TableLiteral.Text = tableBody;
        }
    }

}
