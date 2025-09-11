package com.baketrack.model;

import java.time.LocalDateTime;
import java.util.List;

public class Order {
    // Identificador único del pedido
    private int id;
    // ID del usuario asociado al pedido
    private int userId;
    // Objeto User asociado al pedido
    private User user;
    // Estado del pedido
    private String status;
    // Dirección de entrega
    private String address;
    // Fecha de creación del pedido
    private LocalDateTime createdAt;
    // Lista de detalles del pedido
    private List<OrderDetail> orderDetails;

    // Getter para id
    public int getId() {
        return id;
    }

    // Setter para id
    public void setId(int id) {
        this.id = id;
    }

    // Getter para userId
    public int getUserId() {
        return userId;
    }

    // Setter para userId
    public void setUserId(int userId) {
        this.userId = userId;
    }

    // Getter para user
    public User getUser() {
        return user;
    }

    // Setter para user
    public void setUser(User user) {
        this.user = user;
    }

    // Getter para status
    public String getStatus() {
        return status;
    }

    // Setter para status
    public void setStatus(String status) {
        this.status = status;
    }

    // Getter para address
    public String getAddress() {
        return address;
    }

    // Setter para address
    public void setAddress(String address) {
        this.address = address;
    }

    // Getter para createdAt
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    // Setter para createdAt
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    // Getter para orderDetails
    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    // Setter para orderDetails
    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }
}