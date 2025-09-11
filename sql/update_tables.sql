-- Modifica created_at a DATETIME en users
ALTER TABLE `users`
  MODIFY `created_at` DATETIME NOT NULL;

-- Modifica price a DOUBLE en products
ALTER TABLE `products`
  MODIFY `price` DOUBLE NOT NULL;

-- Modifica price a DOUBLE en order_details
ALTER TABLE `order_details`
  MODIFY `price` DOUBLE NOT NULL;

-- Modifica created_at a DATETIME en orders
ALTER TABLE `orders`
  MODIFY `created_at` DATETIME NOT NULL;

-- Modifica status a VARCHAR(50) en orders
ALTER TABLE `orders`
  MODIFY `status` VARCHAR(50) NOT NULL;

-- Modifica tracking_number a VARCHAR(100) en order_details
ALTER TABLE `order_details`
  MODIFY `tracking_number` VARCHAR(100) DEFAULT NULL;