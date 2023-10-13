--- todos

CREATE TABLE lists (
  id serial PRIMARY KEY, 
  list_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY, 
  todo_name varchar(50) NOT NULL, 
  completed boolean NOT NULL DEFAULT false,
  list_id integer NOT NULL REFERENCES lists (id)
);