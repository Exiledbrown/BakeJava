package com.baketrack.model;

public class Product {
    // Identificador único del producto
    private int id;
    // Nombre del producto
    private String name;
    // Descripción del producto
    private String description;
    // Precio del producto
    private double price;
    // URL de la imagen del producto
    private String imageUrl;

    // Getter para id
    public int getId() {
        return id;
    }

    // Setter para id
    public void setId(int id) {
        this.id = id;
    }

    // Getter para name
    public String getName() {
        return name;
    }

    // Setter para name
    public void setName(String name) {
        this.name = name;
    }

    // Getter para description
    public String getDescription() {
        return description;
    }

    // Setter para description
    public void setDescription(String description) {
        this.description = description;
    }

    // Getter para price
    public double getPrice() {
        return price;
    }

    // Setter para price
    public void setPrice(double price) {
        this.price = price;
    }

    // Getter para imageUrl
    public String getImageUrl() {
        return imageUrl;
    }

    // Setter para imageUrl
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}