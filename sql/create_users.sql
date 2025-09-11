-- Script para crear usuarios en la base de datos con diferentes roles
INSERT INTO users (username, password, role, created_at) VALUES
('cliente2', 'pass123', 'cliente', NOW()),
('repartidor2', 'pass123', 'repartidor', NOW()),
('admin2', 'pass123', 'administrador', NOW());