using System;

namespace TrabajosCon.Models
{
    public class Concierto
    {
        public int Id_Con { get; set; }
        public string Nombre_Con { get; set; }
        public DateTime Fecha_Con { get; set; }
        public bool Estado_Con { get; set; }
        public string Ubicacion_Con { get; set; }
    }
}
