-- CREATE DATABASE lightbnb;
-- \c lightbnb

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;

-- CREATE TABLE statements for LightBnB

-- Table: users
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

-- Table: properties
CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER,
  title VARCHAR(255),
  description TEXT,
  thumb_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  cost_per_night INTEGER,
  parking_spaces INTEGER,
  number_of_bathrooms INTEGER,
  number_of_bedrooms INTEGER,
  country VARCHAR(255),
  street VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  post_code VARCHAR(255),
  active BOOLEAN
);

-- Table: reservations
CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  guest_id INTEGER,
  property_id INTEGER,
  start_date DATE,
  end_date DATE
);

-- Table: property_reviews
CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,
  guest_id INTEGER,
  property_id INTEGER,
  reservation_id INTEGER,
  rating SMALLINT,
  message TEXT
);
