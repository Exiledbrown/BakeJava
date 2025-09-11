package com.baketrack.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    // Constantes para la conexión a MariaDB
    private static final String URL = "jdbc:mariadb://localhost:3306/baketrack";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    // Obtiene una conexión a la base de datos
    public static Connection getConnection() throws SQLException {
        try {
            // Carga el driver de MariaDB
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // Lanza excepción si el driver no se encuentra
            throw new SQLException("MariaDB Driver not found", e);
        }
        // Retorna la conexión
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}