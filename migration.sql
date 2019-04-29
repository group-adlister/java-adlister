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

DROP TABLE IF EXISTS categories;

create table categories (
                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                            size varchar(255) not null,
                            PRIMARY KEY (id)
);
    #     species varchar(255) not null,
    #     number_of_legs int not null,
    #     is_alive boolean not null,

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
#         ON DELETE CASCADE

insert into users(id, username, email, password)
    value(
      1, 'admin', 'admin@admin.com', 'password'
    );

insert into categories(id, size)
    VALUES
       (1, 'small'),
       (2, 'medium'),
       (3, 'large');

DROP TABLE IF EXISTS ads;
INSERT INTO ads(user_id, category_id, title, description)
VALUES
       (1, 1, 'ad1', 'ad1 description...'),
       (2, 1, 'ad2', 'ad2 description...'),
       (2, 2, 'ad3', 'ad3 description...');


CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     ads_id INT UNSIGNED NOT NULL,
#     species VARCHAR(100) NOT NULL,
    size VARCHAR(100) NOT NULL,
#     is_alive BOOLEAN NOT NULL,
#     number_of_legs INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
#     FOREIGN KEY (ads_id) REFERENCES ads(id)
#         ON DELETE CASCADE



-- Show user's ads on their profile page
--
-- When a user visits their profile page, they should see all of the ads they have created.

# select * from ads where user_id in (select id from users where username = 'jeremy');
