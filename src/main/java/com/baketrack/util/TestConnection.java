package com.baketrack.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// Clase para probar la conexión a MariaDB
public class TestConnection {
    public static void main(String[] args) {
        // URL de conexión a la base de datos 'baketrack'
        String url = "jdbc:mariadb://localhost:3306/baketrack";
        // Credenciales de MariaDB (por defecto en XAMPP)
        String user = "root";
        String password = ""; // Cambia si configuraste una contraseña

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("¡Conexión exitosa a MariaDB!");
        } catch (SQLException e) {
            // Imprime detalles del error si la conexión falla
            e.printStackTrace();
        }
    }
}