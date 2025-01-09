using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using TrabajosCon.Models;

namespace TrabajosCon.Services
{
    public class UsuarioService
    {
        // Corregimos el nombre de la cadena de conexión para que coincida con la de web.config
        private readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConciertosDB"].ConnectionString;

        public List<Usuario> ObtenerUsuarios()
        {
            List<Usuario> usuarios = new List<Usuario>();

            try
            {
                // Usamos 'using' para asegurarnos de que la conexión se cierra correctamente
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM Usuarios";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader reader = command.ExecuteReader();

                    // Leemos todos los registros de la tabla Usuarios
                    while (reader.Read())
                    {
                        usuarios.Add(new Usuario
                        {
                            id_usu = Convert.ToInt32(reader["id_usu"]),
                            nombre_usu = reader["nombre_usu"].ToString(),
                            correo_usu = reader["correo_usu"].ToString(),
                            contrasena_usu = reader["contrasena_usu"].ToString(),
                            telefono_usu = reader["telefono_usu"].ToString(),
                            estado_usu = Convert.ToBoolean(reader["estado_usu"])
                        });
                    }

                    // Asegúrate de cerrar el reader cuando ya no lo necesites
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                // Aquí puedes capturar y manejar el error de manera adecuada
                // Puedes loguearlo o mostrar un mensaje al usuario
                Console.WriteLine("Error al obtener los usuarios: " + ex.Message);
            }

            return usuarios;
        }

        public void AgregarUsuario(Usuario usuario)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "INSERT INTO Usuarios (nombre_usu, correo_usu, contrasena_usu, telefono_usu, estado_usu) " +
                                   "VALUES (@Nombre, @Correo, @Contrasena, @Telefono, @Estado)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Nombre", usuario.nombre_usu);
                    command.Parameters.AddWithValue("@Correo", usuario.correo_usu);
                    command.Parameters.AddWithValue("@Contrasena", usuario.contrasena_usu);
                    command.Parameters.AddWithValue("@Telefono", usuario.telefono_usu);
                    command.Parameters.AddWithValue("@Estado", usuario.estado_usu);

                    // Ejecutamos la consulta
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                // Captura el error si ocurre algún problema
                Console.WriteLine("Error al agregar el usuario: " + ex.Message);
            }
        }
    }
}
