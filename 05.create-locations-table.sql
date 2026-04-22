CREATE TABLE cities(name VARCHAR(100) PRIMARY KEY);
--------------------------------------------
CREATE TABLE locations (
  -- id INT PRIMARY KEY AUTO_INCREMENT,
  id SERIAL PRIMARY KEY,
  title VARCHAR(300),
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(10) NOT NULL,
  postal_code VARCHAR(5) NOT NULL,
  city_name VARCHAR(100) REFERENCES cities (name) ON DELETE CASCADE
);