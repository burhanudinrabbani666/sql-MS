CREATE TABLE cities(
  -- 
  name VARCHAR(100) PRIMARY KEY
);
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
--------------------------------------------
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR (300) NOT NULL,
  last_name VARCHAR (300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR (300) NOT NULL
);
--------------------------------------------
CREATE TABLE organizers(
  password VARCHAR(500) NOT NULL,
  user_id INT PRIMARY KEY REFERENCES users (id) ON DELETE CASCADE
);
--------------------------------------------
CREATE TABLE tags(tag_name VARCHAR(100) PRIMARY KEY);
--------------------------------------------
CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  name VARCHAR(225) NOT NULL,
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(225),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 10),
  min_age INT CHECK (min_age > 10),
  location_id INT REFERENCES locations (id) ON DELETE
  SET NULL,
    organizers_id INT REFERENCES organizers (user_id) ON DELETE
  SET NULL
);
--------------------------------------------
------------ Many To Many ------------------
CREATE TABLE events_users (
  event_id INT REFERENCES events (id) ON DELETE
  SET NULL,
    user_id INT REFERENCES users (id) ON DELETE
  SET NULL,
    PRIMARY KEY (user_id, event_id)
);
--------------------------------------------
CREATE TABLE events_tags (
  event_id INT REFERENCES events (id) ON DELETE
  SET NULL,
    tag_name VARCHAR(100) REFERENCES tags ON DELETE CASCADE,
    PRIMARY KEY (event_id, tag_name)
);
--------------------------------------------