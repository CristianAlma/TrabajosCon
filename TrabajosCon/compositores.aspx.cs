using System;
using System.Collections.Generic;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class compositores : Page
    {
        
        public static List<Compositor> listaCompositores = new List<Compositor>();

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
                string nombre = nombre_comp.Text.Trim();
                string bibliografia = bibliografia_comp.Text.Trim();

               
                Compositor nuevoCompositor = new Compositor
                {
                    Id = listaCompositores.Count + 1, 
                    Nombre = nombre,
                    Bibliografia = bibliografia
                };

                listaCompositores.Add(nuevoCompositor);

              
                Response.Redirect("ListadoCompositores.aspx");
            }
        }

      
        public class Compositor
        {
            public int Id { get; set; }
            public string Nombre { get; set; }
            public string Bibliografia { get; set; }
        }
    }
}
