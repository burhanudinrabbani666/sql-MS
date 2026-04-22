CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  name VARCHAR(225) NOT NULL,
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(225),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 10),
  min_age INT CHECK(min_age > 10)
)