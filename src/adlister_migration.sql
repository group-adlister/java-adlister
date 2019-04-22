USE adlister_db;

DROP TABLE IF EXISTS users, ads;

CREATE TABLE users (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      username VARCHAR(128) NOT NULL,
                      email VARCHAR(128) NOT NULL,
                      password VARCHAR(128) NOT NULL,
                      PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED,
                     title VARCHAR(128) NOT NULL,
                     description TEXT,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users (id)
);