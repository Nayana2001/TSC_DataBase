\c postgres

CREATE DATABASE mydb;

-- Connect to the tv_show database
\c mydb;

-- Create the tv_show table
CREATE TABLE tv_shows (
  tv_show_id SERIAL PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  synopsis VARCHAR(45),
  release_year INT
);

-- Create the character table
CREATE TABLE characters (
  character_id SERIAL PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(45),
  tv_show_id INT REFERENCES tv_shows(tv_show_id)
);


