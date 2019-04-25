USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ads_id INT UNSIGNED NOT NULL,
    species VARCHAR(100) NOT NULL,
    size VARCHAR(100) NOT NULL,
    is_alive BOOLEAN NOT NULL,
    number_of_legs INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ads_id) REFERENCES ads(id)
        ON DELETE CASCADE
);



-- Show user's ads on their profile page
--
-- When a user visits their profile page, they should see all of the ads they have created.

select * from ads where user_id in (select id from users where username = 'jeremy');
