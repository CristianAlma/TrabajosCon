using System;

namespace TrabajosCon
{
    public class Conciertos
    {
        public int Id { get; set; }  // Id opcional, puedes usarlo en el listado
        public string Nombre { get; set; }
        public DateTime Fecha { get; set; }
        public string Ubicacion { get; set; }
        public bool Estado { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
