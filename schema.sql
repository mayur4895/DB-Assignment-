CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    SKU VARCHAR(255),
    category_id INT REFERENCES Product_Category(id) NOT NULL,
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
