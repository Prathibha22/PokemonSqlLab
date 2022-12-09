--What are all the types of pokemon that a pokemon can have?
SELECT * FROM TYPES;
--What is the name of the pokemon with id 45?
SELECT NAME FROM POKEMONS WHERE ID=45;
--How many pokemon are there?
SELECT COUNT(ID) FROM POKEMONS;
--How many types are there?
SELECT COUNT(ID) FROM TYPES;
--How many pokemon have a secondary type?
SELECT COUNT(ID) FROM POKEMONS WHERE SECONDARY_TYPE IS NOT NULL;

