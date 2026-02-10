-- 1. Admins jadvali
CREATE TABLE IF NOT EXISTS admins (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
-- 2. Genres jadvali
CREATE TABLE IF NOT EXISTS genres (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    number BIGINT
);
-- 3. Books jadvali
CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    about_the_book TEXT,
    price BIGINT,
    rental_date DATE
);
-- 4. Books_genre jadvali
CREATE TABLE IF NOT EXISTS books_genre (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_books_name INT,
    id_genres BIGINT,
    FOREIGN KEY (id_books_name) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (id_genres) REFERENCES genres(id) ON DELETE CASCADE
);
INSERT INTO admins(name, password)
VALUES ("root","root");
DELIMITER //

CREATE PROCEDURE sync_genre_counts()
BEGIN
    UPDATE genres SET number = 0;

    UPDATE genres g
    JOIN (
        SELECT id_genres, COUNT(*) as jami
        FROM books_genre
        GROUP BY id_genres
    ) as counts ON g.id = counts.id_genres
    SET g.number = counts.jami;
END //

DELIMITER ;
