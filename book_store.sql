-u user -p
SHOW DATABASES;
CREATE DATABASES bookstore;
USE bookstore;
SHOW TABLES;
CREATE TABLES books {
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(100),
    title VARCHAR(100),
    description VARCHAR(100),
    place_sell CHAR(3),
    stock INT DEFAULT 0, 
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
}
ALTER TABLE books;
ADD price int DEFAULT 0;
ADD status ENUM ('available', 'out of stock', 'limited');
DROP COLUMN place_sell;
INSERT INTO books (author1, author2, author3, title, description, price, status) values
('tere', 'liye', 'null', 'pulang','ini buku tentang cinta','100000', 'available');
('stephenie','meyer','null','twilight','ini buku tentang vampire','80000','available');
('jr','khairen','null','rinduku sederas hujan sore itu','50000','out of stock');
SELECT * from books;
SELECT id as ID from books;
SELECT author1 as A1;
SELECT author2 as A2;
SELECT author3 as A3;
SELECT * FROM books WHERE ID = 1;
SELECT * FROM books where price = 100000 AND status = available;
SELECT * FROM books WHERE status = 'available' OR status = 'out of stock';
SELECT * FROM books WHERE NOT status = 'available';
SELECT * FROM books ORDER BY ID ASC;
SELECT * FROM books LIMIT 2;
UPDATE books SET author1 = "Tere" AND price = "50000" where ID = 1;
DELETE books where ID = 3;

