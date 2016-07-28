DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons;

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level TEXT NOT NULL,
  age INT NOT NULL
);

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  poke_type TEXT NOT NULL,
  cp INT NOT NULL,
  img_url TEXT NOT NULL,
  trainer_id INT
);
