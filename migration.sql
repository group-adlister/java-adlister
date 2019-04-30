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
    (1, 1, 'Cow', 'Sage mower goat, raccoons rhubarb outhouse a, apples berries corn. Straw augers beef kettle our
    crickets. Chainsaw foal hay hook, herbs at combine harvester, children is mallet. In eggplant, quonset is grain bins, grain trucks quonset pole shed, with fences gates zucchini carrots scrap metal. Augers oats hen cowpies.', 12345),
    (2, 1, 'Gorilla', 'Donkey mouse, at gate grain bins woof. Lamb in eggplant baler rain barrels manure hay rake.
    Fertilizer buzz, purr meow cheep chinchillas squeak, seeds maple syrup worms, potato alligators grunt are at bees.', 22345),
    (3, 2, 'Racoon', 'Pony. Forage Harvester, bean and Silage dump, cultivator brussel sprouts harrows, celery dread
    with kale augers harrows. Grapes at yams mushrooms organic berries gobble. House hen chinchillas in barn livestock cat hogs chicks trucks. ', 32345),
    (4, 2, 'Llama', 'Chinchillas in barn livestock cat hogs chicks trucks. Cauliflower a seeds quail. Coo with rabbits
    ect. Forage Harvester, bean and Silage dump, cultivator brussel sprouts harrows, celery dread with kale augers harrows.', 42345),
    (5, 2, 'Dog', 'With kale augers harrows. veterinarian blue berries cattle jelly canning. veterinarian blue
    berries cattle jelly canning. Blue berries pigeons buzz and bean prairie dogs nails at est. ', 52345),
    (6, 2, 'Moose', 'Chainsaw foal hay hook, herbs at combine harvester, children is mallet. Prairie dogs raccoons
    robins rats. Ewes fox, hay hook hay manure, John Deere radish barn, a hay loft house a.', 62345),
    (7, 2, 'Snaek', 'Pony. Goose hammers cattle rats in crows. Goat goose hen horse. Goose hammers cattle rats in
    crows.
    Hoot squeal moose quack, crows doggies frogs cricket.', 72345);