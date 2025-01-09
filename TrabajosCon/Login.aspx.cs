using System;
using System.Web.UI;

namespace TrabajosCon
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (Session["UsuarioLogueado"] != null)
            {
                Response.Redirect("ListadoConciertos.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
        
            string correo = txtCorreo.Text;
            string contrasena = txtContrasena.Text;

            if (!string.IsNullOrEmpty(correo) && !string.IsNullOrEmpty(contrasena))
            {
                
                Session["UsuarioLogueado"] = correo;

                // Redirigir al listado de conciertos
                Response.Redirect("ListadoConciertos.aspx");
            }
            else
            {
                // Mostrar mensaje de error
                lblMensaje.Text = "Correo o contraseña inválidos.";
                lblMensaje.Visible = true;
            }
        }
    }
}
