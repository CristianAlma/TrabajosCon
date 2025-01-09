using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using TrabajosCon.Models;

namespace TrabajosCon.Services
{
    public class UsuarioService
    {
        private readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConciertosDB"].ConnectionString;

        public bool VerificarCredenciales(string correo, string contrasena)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(1) FROM Usuarios WHERE correo_usu = @Correo AND contrasena_usu = @Contrasena";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Correo", correo);
                command.Parameters.AddWithValue("@Contrasena", contrasena);

                int count = Convert.ToInt32(command.ExecuteScalar());
                return count > 0; // Retorna true si existe un usuario con las credenciales
            }
        }

        public List<Usuario> ObtenerUsuarios()
        {
            List<Usuario> usuarios = new List<Usuario>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT id_usu, nombre_usu, correo_usu, telefono_usu, estado_usu FROM Usuarios";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Usuario usuario = new Usuario
                    {
                        Id = Convert.ToInt32(reader["id_usu"]),
                        Nombre = reader["nombre_usu"].ToString(),
                        Correo = reader["correo_usu"].ToString(),
                        Telefono = reader["telefono_usu"].ToString(),
                        Estado = Convert.ToBoolean(reader["estado_usu"])
                    };
                    usuarios.Add(usuario);
                }
            }

            return usuarios;
        }
    }
}
