package com.baketrack.dao;

import com.baketrack.model.Product;
import com.baketrack.util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProductDAO {
    // Logger para registrar errores
    private static final Logger logger = LoggerFactory.getLogger(ProductDAO.class);

    // Obtiene la conexión a la base de datos
    private Connection getConnection() throws SQLException {
        return DatabaseConnection.getConnection();
    }

    // Obtiene todos los productos de la base de datos
    public List<Product> getAllProducts() throws SQLException {
        // Lista para almacenar los productos
        List<Product> products = new ArrayList<>();
        // Consulta para seleccionar todos los productos
        String sql = "SELECT id, name, description, price, image_url FROM products";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                // Crea un nuevo objeto Product
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setImageUrl(rs.getString("image_url"));
                // Añade el producto a la lista
                products.add(product);
            }
        } catch (SQLException e) {
            // Registra error al obtener productos
            logger.error("Error al obtener productos: {}", e.getMessage(), e);
            throw e;
        }
        // Retorna la lista de productos
        return products;
    }
}