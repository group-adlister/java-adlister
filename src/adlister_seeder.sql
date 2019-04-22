use adlister_db;

truncate ads;

insert into users (id, username, email, password)
values
    ("1", "user1", "user1@email.com", "password"),
    ("2", "user2", "user2@email.com", "password");

insert into ads (id, user_id, title, description)
values
    ("1", "1", "playstation for sale", "This is a slightly used playstation"),
    ("2", "1", "Super Nintendo", "Get your game on with this old-school classic!"),
    ("3", "2", "Junior Java Developer Position", "Minimum 7 years of experience required. You will be working in the
    scripting
    language for Java, JavaScript"),
    ("4", "2", "JavaScript Developer needed", "Must have strong Java skills"),
    ("5", "2", "test ad", "test ad");

select * from ads;