/**
  Seeder script for adding data to the adlister_db.ads table
 */

CREATE DATABASE IF NOT EXISTS adlister_db;

use adlister_db;

CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(50),
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO ads (user_id, title, description)
VALUES (1, 'playstation for sale',
        'This is a slightly used playstation');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Super Nintendo',
        'Get your game on with this old-school classic!');
INSERT INTO ads (user_id, title, description)
VALUES (2, 'Junior Java Developer Position',
        'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript');
INSERT INTO ads (user_id, title, description)
VALUES (2, 'JavaScript Developer needed',
        'Must have strong Java skills');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Car for sale',
        'Very clean 2011 Chevy Silverado 4x4.');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Wooden Angel',
        'Angel with newly drawn face.');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Work Desk',
        'Available now.');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Laptop',
        'MacBook Pro');
INSERT INTO ads (user_id, title, description)
VALUES (2, 'Coding Bootcamp',
        '10 week coding bootcamp. Internship guaranteed.');
INSERT INTO ads (user_id, title, description)
VALUES (1, 'Motorcycle',
        '20 year old Harley Davidson');
INSERT INTO ads (user_id, title, description)
VALUES (3, 'Casablanca',
        'Rick Blaine (Humphrey Bogart), who owns a nightclub in Casablanca, discovers his old flame Ilsa (Ingrid Bergman).');
