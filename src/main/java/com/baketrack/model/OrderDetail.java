package com.baketrack.model;

public class OrderDetail {
    // Identificador único del detalle del pedido
    private int id;
    // ID del pedido asociado
    private int orderId;
    // ID del producto asociado
    private int productId;
    // Cantidad del producto
    private int quantity;
    // Precio del producto en el momento del pedido
    private double price;
    // Número de seguimiento (opcional)
    private String trackingNumber;

    // Getter para id
    public int getId() {
        return id;
    }

    // Setter para id
    public void setId(int id) {
        this.id = id;
    }

    // Getter para orderId
    public int getOrderId() {
        return orderId;
    }

    // Setter para orderId
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    // Getter para productId
    public int getProductId() {
        return productId;
    }

    // Setter para productId
    public void setProductId(int productId) {
        this.productId = productId;
    }

    // Getter para quantity
    public int getQuantity() {
        return quantity;
    }

    // Setter para quantity
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Getter para price
    public double getPrice() {
        return price;
    }

    // Setter para price
    public void setPrice(double price) {
        this.price = price;
    }

    // Getter para trackingNumber
    public String getTrackingNumber() {
        return trackingNumber;
    }

    // Setter para trackingNumber
    public void setTrackingNumber(String trackingNumber) {
        this.trackingNumber = trackingNumber;
    }
}