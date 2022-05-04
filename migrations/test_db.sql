CREATE TABLE  users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birth_year INTEGER,
  member_since TIMESTAMP NOT NULL DEFAULT Now()
);

ALTER TABLE users
ALTER COLUMN member_since 
SET DEFAULT Now();

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL DEFAULT Now()
);

INSERT INTO users (name, birth_year)
VALUES ('Susan Hudson', 2000),
('Malloy Jenkins', 1000);

CREATE TABLE pets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER NOT NULL REFERENCES users(id)
);