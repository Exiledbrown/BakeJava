package com.baketrack.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mariadb://localhost:3306/baketrack";
    private static final String USER = "root";
    private static final String PASSWORD = ""; 
    
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MariaDB Driver not found", e);
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}