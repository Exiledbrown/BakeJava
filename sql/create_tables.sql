-- Script para crear tablas adicionales en la base de datos baketrack
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DOUBLE NOT NULL,
    image_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DOUBLE NOT NULL,
    tracking_number VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Datos de ejemplo para products
INSERT INTO products (name, description, price, image_url) VALUES
('Pan Artesanal', 'Pan rústico hecho a mano', 5000, 'https://images.pexels.com/photos/1721934/pexels-photo-1721934.jpeg'),
('Pastel de Chocolate', 'Pastel con glaseado cremoso', 15000, 'https://images.pexels.com/photos/4109998/pexels-photo-4109998.jpeg'),
('Pan Integral', 'Pan integral rebanado', 8000, 'https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg');

-- Datos de ejemplo para orders
INSERT INTO orders (user_id, status, address, created_at) VALUES
(1, 'pendiente', 'Calle 123, Bogotá', NOW()),
(1, 'enviado', 'Avenida 456, Medellín', NOW());

-- Datos de ejemplo para order_details
INSERT INTO order_details (order_id, product_id, quantity, price, tracking_number) VALUES
(1, 1, 2, 5000, 'TRK12345'),
(1, 2, 1, 15000, 'TRK12346'),
(2, 3, 3, 8000, 'TRK12347');