

drop database if exists books;

create database books;
use books;
drop table if exists books.books;
drop table if exists books.authors;


CREATE TABLE authors(
author_id INT AUTO_INCREMENT NOT NULL,
authorname VARCHAR(30), 
country VARCHAR(30),
PRIMARY KEY (author_id)
);



create table books (
book_id INT AUTO_INCREMENT NOT NULL,
author_id INT NOT NULL,
bookname VARCHAR(30),
PRIMARY KEY (book_id),
KEY  idx_fk_author_id (author_id),
CONSTRAINT fk_author_id FOREIGN KEY (author_id)
REFERENCES  authors(author_id) ON DELETE RESTRICT
ON UPDATE CASCADE
);

INSERT INTO authors (authorname,country) VALUES 
('Rem Koolhaas','Netherlands'),
('Christopher Alexander','Austria'),
('Cathelijne Nuijsink','Denmark'),
('OMA/AMO','Netherlands'),
('Joel Grus','Germany')
;

# Update Mistake
	# UPDATE authord SET country = 'ZAF'
	# WHERE author_id = 6;
    
INSERT INTO authors (authorname,country) VALUES
('Piet Pompies','ZAF');

# to delete rows
	# DELETE FROM authors
	# WHERE author_id in (6,7,8,9,10,11,12);

INSERT INTO books (bookname,author_id) VALUES
('Delirious New York',1),('Elements',1),
('Pattern Language',2),('How to Make A Japanese House',3),
('SMLXL',4),('Data Science from Scratch',5),('Plumb Life',6);



SELECT b.bookname,a.authorname,a.country
FROM books b
JOIN authors a
ON b.author_id = a.author_id;

#short form
	# FROM books b JOIN authors a using(author_id);




