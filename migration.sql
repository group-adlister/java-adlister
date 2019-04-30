USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS ads;

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    zipcode int unsigned not null,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

insert into ads(id, user_id, title, description, zipcode) values
    (1, 1, 'ad1', 'ad1 desc...', 12345),
    (2, 1, 'ad2', 'ad2 desc...', 22345),
    (3, 1, 'ad3', 'ad3 desc...', 32345),
    (4, 1, 'ad4', 'ad4 desc...', 42345),
    (5, 1, 'ad5', 'ad5 desc...', 52345),
    (6, 2, 'ad6', 'ad6 desc...', 62345),
    (7, 2, 'ad7', 'ad7 desc...', 72345);

