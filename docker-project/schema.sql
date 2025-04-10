-- Create user 'rapidcode' and grant privileges
CREATE USER 'rapidcode'@'%' IDENTIFIED BY 'rapidcode123';
GRANT ALL PRIVILEGES ON *.* TO 'rapidcode'@'%';
FLUSH PRIVILEGES;

-- Switch to the ecomdb database
USE ecomdb;

-- Create the products table
CREATE TABLE products (
    id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    Name varchar(255) DEFAULT NULL,
    Price varchar(255) DEFAULT NULL,
    ImageUrl varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
) AUTO_INCREMENT=1;

-- Insert sample data into the products table
INSERT INTO products (Name, Price, ImageUrl) VALUES
    ("Laptop", "100", "c-1.png"),
    ("Drone", "200", "c-2.png"),
    ("VR", "300", "c-3.png"),
    ("Tablet", "50", "c-5.png"),
    ("Watch", "90", "c-6.png"),
    ("Phone Covers", "20", "c-7.png"),
    ("Phone", "80", "c-8.png"),
    ("Laptop", "150", "c-4.png");
