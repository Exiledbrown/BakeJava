package com.baketrack.dao;

import com.baketrack.model.User;
import com.baketrack.util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserDAO {
    // Logger para registrar errores
    private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);

    // Obtiene la conexión a la base de datos
    private Connection getConnection() throws SQLException {
        return DatabaseConnection.getConnection();
    }

    // Valida un usuario por nombre y contraseña
    public User validateUser(String username, String password) throws SQLException {
        // Consulta para buscar usuario por nombre y contraseña
        String sql = "SELECT id, username, password, role, created_at FROM users WHERE username = ? AND password = ?";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            // Establece parámetros de la consulta
            stmt.setString(1, username);
            stmt.setString(2, password);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    // Crea objeto User con los datos obtenidos
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("role"));
                    // Convierte Timestamp a LocalDateTime
                    Timestamp timestamp = rs.getTimestamp("created_at");
                    if (timestamp != null) {
                        user.setCreatedAt(timestamp.toLocalDateTime());
                    }
                    return user;
                }
            }
        } catch (SQLException e) {
            // Registra error en la autenticación
            logger.error("Error al autenticar usuario: {}", e.getMessage(), e);
            throw e;
        }
        // Retorna null si no se encuentra el usuario
        return null;
    }

    // Obtiene un usuario por su nombre
    public User getUserByUsername(String username) throws SQLException {
        // Consulta para buscar usuario por nombre
        String sql = "SELECT id, username, password, role, created_at FROM users WHERE username = ?";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            // Establece parámetro de la consulta
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    // Crea objeto User con los datos obtenidos
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("role"));
                    // Convierte Timestamp a LocalDateTime
                    Timestamp timestamp = rs.getTimestamp("created_at");
                    if (timestamp != null) {
                        user.setCreatedAt(timestamp.toLocalDateTime());
                    }
                    return user;
                }
            }
        } catch (SQLException e) {
            // Registra error al obtener usuario
            logger.error("Error al obtener usuario por nombre: {}", e.getMessage(), e);
            throw e;
        }
        // Retorna null si no se encuentra el usuario
        return null;
    }

    // Crea un nuevo usuario en la base de datos
    public void createUser(User user) throws SQLException {
        // Consulta para insertar un nuevo usuario
        String sql = "INSERT INTO users (username, password, role, created_at) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            // Establece parámetros de la consulta
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            // Usa la fecha actual si createdAt es null
            stmt.setTimestamp(4, user.getCreatedAt() != null ? Timestamp.valueOf(user.getCreatedAt()) : Timestamp.valueOf(LocalDateTime.now()));
            // Ejecuta la inserción
            stmt.executeUpdate();
        } catch (SQLException e) {
            // Registra error al crear usuario
            logger.error("Error al crear usuario: {}", e.getMessage(), e);
            throw e;
        }
    }
}