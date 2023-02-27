/*  
    use "sqlite3 assignment1.db" to create or enter the database,
    then ".read create_tables.sql", 
    then ".read fill_with_data.sql" to fill the database with dummy data 
*/

/* delete all the records */

DELETE FROM people;
DELETE FROM titles;
DELETE FROM akas;
DELETE FROM crew;
DELETE FROM ratings;

/* insert dummy data */

INSERT INTO people(person_id, name, born, died) VALUES ('nm0000001', 'Ingrid Bergman', 1915, 1982);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000002', 'Moaz Mohamed', 2000, 2050);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000003', 'Mohamed Nabil', 2001, 2090);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000004', 'Ahmed Aref', 2002, 2085);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000005', 'Ahmed Mohamed', 1996, 2080);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000006', 'Omar Fareed', 2001, 2085);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000007', 'Mamduh Attia', 2001, 2089);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000008', 'Khaled Mohamed', 1991, 2057);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000009', 'Amr Mohamed', 1988, 2070);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000010', 'Leonardo Di Caprio', 1971, 2040);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000011', 'Morgan Freeman', 1940, 2030);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000012', 'Tom Hanks', 1962, 2028);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000013', 'Tamer Hosny', 1989, 2052);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000014', 'Ahmed Helmy', 1985, 2060);
INSERT INTO people(person_id, name, born, died) VALUES ('nm0000015', 'Fareed Shawky', 1900, 1990);

INSERT INTO titles(title_id, type, primary_title, premiered, genres) VALUES ('tt0000001', 'movie', 'Back to the Future', 1985, 'Adventure,Comedy,Sci-Fi');
INSERT INTO titles(title_id, type, primary_title, premiered, genres) VALUES ('tt0000002', 'movie', 'Titanic', 1991, 'Adventure');
INSERT INTO titles(title_id, type, primary_title, premiered, genres) VALUES ('tt0000003', 'series', 'Friends', 1995, 'Comedy,Social');
INSERT INTO titles(title_id, type, primary_title, premiered, genres) VALUES ('tt0000004', 'movie', 'The Great Escape', 1965, 'History');
INSERT INTO titles(title_id, type, primary_title, premiered, genres) VALUES ('tt0000005', 'series', 'Death Note', 2005, 'Mystery,Comedy');

INSERT INTO akas(title_id, title, language) VALUES ('tt0000001', 'Back to the Future', 'es');
INSERT INTO akas(title_id, title, language) VALUES ('tt0000002', 'Titanic', 'es');
INSERT INTO akas(title_id, title, language) VALUES ('tt0000003', 'Friends', 'ar');
INSERT INTO akas(title_id, title, language) VALUES ('tt0000004', 'The Great Escape', 'es');
INSERT INTO akas(title_id, title, language) VALUES ('tt0000005', 'Death Note', 'ja');

INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000001', 'nm0000001', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000002', 'nm0000002', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000003', 'nm0000003', 'director');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000004', 'nm0000004', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000005', 'nm0000005', 'photographer');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000001', 'nm0000006', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000002', 'nm0000007', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000003', 'nm0000008', 'director');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000004', 'nm0000009', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000005', 'nm0000010', 'photographer');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000001', 'nm0000011', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000002', 'nm0000012', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000003', 'nm0000013', 'director');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000004', 'nm0000014', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000005', 'nm0000015', 'photographer');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000005', 'nm0000001', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000003', 'nm0000002', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000002', 'nm0000003', 'director');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000001', 'nm0000004', 'actor');
INSERT INTO crew(title_id, person_id, category) VALUES ('tt0000004', 'nm0000005', 'photographer');

INSERT INTO ratings(title_id, rating, votes) VALUES ('tt0000001', 6.0, 50);
INSERT INTO ratings(title_id, rating, votes) VALUES ('tt0000002', 9.2, 102008000);
INSERT INTO ratings(title_id, rating, votes) VALUES ('tt0000003', 8.5, 80200800);
INSERT INTO ratings(title_id, rating, votes) VALUES ('tt0000004', 9.1, 90200800);
INSERT INTO ratings(title_id, rating, votes) VALUES ('tt0000005', 7.8, 7020080);

/* show inserted records */

SELECT * FROM people;
SELECT * FROM titles;
SELECT * FROM akas;
SELECT * FROM crew;
SELECT * FROM ratings;