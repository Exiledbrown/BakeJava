package com.baketrack.dao;

import com.baketrack.model.Order;
import com.baketrack.model.OrderDetail;
import com.baketrack.model.User;
import com.baketrack.util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OrderDAO {
    // Logger para registrar errores
    private static final Logger logger = LoggerFactory.getLogger(OrderDAO.class);

    // Obtiene la conexión a la base de datos
    private Connection getConnection() throws SQLException {
        return DatabaseConnection.getConnection();
    }

    // Obtiene todos los pedidos con sus detalles y usuario asociado
    public List<Order> getAllOrders() throws SQLException {
        // Lista para almacenar los pedidos
        List<Order> orders = new ArrayList<>();
        // Consulta con JOIN para obtener datos de orders, users y order_details
        String sql = "SELECT o.id, o.user_id, o.status, o.address, o.created_at, " +
                     "u.id AS user_id, u.username, u.password, u.role, u.created_at AS user_created_at, " +
                     "od.id AS detail_id, od.product_id, od.quantity, od.price, od.tracking_number " +
                     "FROM orders o " +
                     "LEFT JOIN users u ON o.user_id = u.id " +
                     "LEFT JOIN order_details od ON o.id = od.order_id";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            Order currentOrder = null;
            while (rs.next()) {
                // Obtiene el ID del pedido actual
                int orderId = rs.getInt("id");
                if (currentOrder == null || currentOrder.getId() != orderId) {
                    // Crea un nuevo objeto Order
                    currentOrder = new Order();
                    currentOrder.setId(orderId);
                    currentOrder.setUserId(rs.getInt("user_id"));
                    currentOrder.setStatus(rs.getString("status"));
                    currentOrder.setAddress(rs.getString("address"));
                    // Convierte Timestamp a LocalDateTime para el pedido
                    Timestamp orderTimestamp = rs.getTimestamp("created_at");
                    if (orderTimestamp != null) {
                        currentOrder.setCreatedAt(orderTimestamp.toLocalDateTime());
                    }
                    // Crea y configura el objeto User asociado
                    User user = new User();
                    user.setId(rs.getInt("user_id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("role"));
                    // Convierte Timestamp a LocalDateTime para el usuario
                    Timestamp userTimestamp = rs.getTimestamp("user_created_at");
                    if (userTimestamp != null) {
                        user.setCreatedAt(userTimestamp.toLocalDateTime());
                    }
                    currentOrder.setUser(user);
                    // Inicializa la lista de detalles
                    currentOrder.setOrderDetails(new ArrayList<>());
                    // Añade el pedido a la lista
                    orders.add(currentOrder);
                }
                if (rs.getObject("detail_id") != null) {
                    // Crea un nuevo objeto OrderDetail
                    OrderDetail detail = new OrderDetail();
                    detail.setId(rs.getInt("detail_id"));
                    detail.setOrderId(orderId);
                    detail.setProductId(rs.getInt("product_id"));
                    detail.setQuantity(rs.getInt("quantity"));
                    detail.setPrice(rs.getDouble("price"));
                    detail.setTrackingNumber(rs.getString("tracking_number"));
                    // Añade el detalle al pedido actual
                    currentOrder.getOrderDetails().add(detail);
                }
            }
        } catch (SQLException e) {
            // Registra error al obtener pedidos
            logger.error("Error al obtener pedidos: {}", e.getMessage(), e);
            throw e;
        }
        // Retorna la lista de pedidos
        return orders;
    }
}