/*create database if it doesn't already exist*/
CREATE DATABASE IF NOT EXISTS `movies_db`;

/*change into db context*/
USE `movies_db`;

CREATE USER IF NOT EXISTS 'movies_user'@'localhost' IDENTIFIED BY 'passw0rd';

GRANT ALL PRIVILEGES ON * . * TO 'movies_user'@'localhost';

/*drop the movies table if it already exists*/
DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
	`id` int not null auto_increment,
  `title` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `director` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `genre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` float DEFAULT NULL,
  primary key(id)
);

INSERT INTO `movies` (`title`, `director`, `year`, `genre`, `rating`) VALUES
("The Shawshank Redemption", "Frank Darabont", "1994", "Drama", 9.3),
("The Godfather", "Francis Ford Coppola", "1972", "Crime, Drama", 9.2),
("Pulp Fiction", "Quentin Tarantino", "1994", "Crime, Drama", 8.9),
("The Dark Knight", "Christopher Nolan", "2008", "Action, Crime, Drama", 9.0),
("Schindler's List", "Steven Spielberg", "1993", "Biography, Drama, History", 8.9),
("The Lord of the Rings: The Return of the King", "Peter Jackson", "2003", "Adventure, Drama, Fantasy", 8.9),
("Fight Club", "David Fincher", "1999", "Drama", 8.8),
("Forrest Gump", "Robert Zemeckis", "1994", "Drama, Romance", 8.8),
("Inception", "Christopher Nolan", "2010", "Action, Adventure, Sci-Fi", 8.8),
("The Matrix", "Lana Wachowski, Lilly Wachowski", "1999", "Action, Sci-Fi", 8.7),
("Gladiator", "Ridley Scott", "2000", "Action, Adventure, Drama", 8.5),
("Good Will Hunting", "Gus Van Sant", "1997", "Drama, Romance", 8.3),
("The Prestige", "Christopher Nolan", "2006", "Drama, Mystery, Sci-Fi", 8.5),
("Eternal Sunshine of the Spotless Mind", "Michel Gondry", "2004", "Drama, Romance, Sci-Fi", 8.3),
("The Silence of the Lambs", "Jonathan Demme", "1991", "Crime, Drama, Thriller", 8.6),
("Whiplash", "Damien Chazelle", "2014", "Drama, Music", 8.5),
("The Departed", "Martin Scorsese", "2006", "Crime, Drama, Thriller", 8.5),
("Amélie", "Jean-Pierre Jeunet", "2001", "Comedy, Romance", 8.3),
("City of God", "Fernando Meirelles, Kátia Lund", "2002", "Crime, Drama", 8.6),
("The Grand Budapest Hotel", "Wes Anderson", "2014", "Adventure, Comedy, Crime", 8.1);

SELECT * FROM movies ORDER BY year DESC;
