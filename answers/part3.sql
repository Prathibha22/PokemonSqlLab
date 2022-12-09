--What is each pokemon's primary type?
 SELECT P.NAME AS POKEMON_NAME,T.NAME AS TYPE FROM POKEMONS AS P LEFT JOIN TYPES AS T ON P.PRIMARY_TYPE=T.ID;

-- What is Rufflet's secondary type?
SELECT P.NAME AS POKEMON_NAME,T.NAME AS TYPE FROM POKEMONS AS P LEFT JOIN TYPES AS T ON P.PRIMARY_TYPE=T.ID HAVING P.NAME='Rufflet';

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT P.NAME AS POKEMON_NAME,T.trainerID AS TID FROM POKEMON_TRAINER AS PT JOIN TRAINERS AS T ON
       PT.trainerID=T.trainerID JOIN POKEMONS AS P ON P.ID=PT.pokemon_id HAVING T.trainerID=303;

-- How many pokemon have a secondary type Poison
 SELECT COUNT(P.ID) FROM POKEMONS P JOIN TYPES T ON T.ID=P.SECONDARY_TYPE WHERE T.NAME='Poison';

-- What are all the primary types and how many pokemon have that type?
SELECT T.NAME ,COUNT(P.ID) FROM TYPES T JOIN POKEMONS P ON P.PRIMARY_TYPE=T.ID GROUP BY T.NAME;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(TRAINERID) FROM  pokemon_trainer WHERE POKELEVEL=100 GROUP BY TRAINERID;

-- How many pokemon only belong to one trainer and no other?
SELECT P.NAME, COUNT(PT.TRAINERID) AS TCOUNT FROM POKEMON_TRAINER PT JOIN POKEMONS P ON P.ID=PT.POKEMON_ID GROUP BY P.NAME HAVING TCOUNT=1;