# 3. Create schema in any Database script or any ORM (Object Relational Mapping).

# SQL

CREATE TABLE product_category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL
);

CREATE TABLE product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  sku VARCHAR(255) NOT NULL,
  category_id INT NOT NULL,
  inventory_id INT,
  price DECIMAL(10,2) NOT NULL,
  discount_id INT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  FOREIGN KEY (category_id) REFERENCES product_category(id)
);
