namespace TrabajosCon.Models
{
    public class Usuario
    {
        internal int Id;
        internal string Nombre;
        internal string Correo;
        internal string Telefono;
        internal bool Estado;

        public int id_usu { get; set; }
        public string nombre_usu { get; set; }
        public string correo_usu { get; set; }
        public string contrasena_usu { get; set; }
        public string telefono_usu { get; set; }
        public bool estado_usu { get; set; }
    }
}
