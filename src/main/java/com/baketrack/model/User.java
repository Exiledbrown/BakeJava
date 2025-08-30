package com.baketrack.model;

import java.time.LocalDateTime;

public class User {
    private int id;
    private String username;
    private String password;
    private String role;
    private LocalDateTime createdAt;

    // Constructor vacío
    public User() {
    }

    // Constructor completo
    public User(int id, String username, String password, String role, LocalDateTime createdAt) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.createdAt = createdAt;
    }

    // Getters y setters para id
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    // Getters y setters para username
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    // Getters y setters para password
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    // Getters y setters para role
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    // Getters y setters para createdAt
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}