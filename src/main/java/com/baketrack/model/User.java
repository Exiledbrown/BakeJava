package com.baketrack.model;

import java.time.LocalDateTime;

public class User {
    // Identificador único del usuario
    private int id;
    // Nombre de usuario
    private String username;
    // Contraseña en texto plano
    private String password;
    // Rol del usuario (cliente, repartidor, administrador)
    private String role;
    // Fecha de creación del usuario
    private LocalDateTime createdAt;

    // Getter para id
    public int getId() {
        return id;
    }

    // Setter para id
    public void setId(int id) {
        this.id = id;
    }

    // Getter para username
    public String getUsername() {
        return username;
    }

    // Setter para username
    public void setUsername(String username) {
        this.username = username;
    }

    // Getter para password
    public String getPassword() {
        return password;
    }

    // Setter para password
    public void setPassword(String password) {
        this.password = password;
    }

    // Getter para role
    public String getRole() {
        return role;
    }

    // Setter para role
    public void setRole(String role) {
        this.role = role;
    }

    // Getter para createdAt
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    // Setter para createdAt
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}