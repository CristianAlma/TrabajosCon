namespace TrabajosCon.Models
{
    public class Repertorio
    {
        public int Id_Rep { get; set; }
        public string NombreObra_Rep { get; set; }
        public int Id_Con { get; set; } // Llave foránea hacia Conciertos
        public int Id_Comp { get; set; } // Llave foránea hacia Compositores
    }
}
