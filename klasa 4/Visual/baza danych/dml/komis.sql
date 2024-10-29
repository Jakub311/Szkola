INSERT INTO handlowcy (login,imie,nazwisko,email,data_wpisu,autor_wpisu)
VALUES ('milo', 'Milan', 'Ogon', 'milo@komis.pl','2010-09-01', 'ibn'),
       ('wotj','Wojciech','Żak','wojt@komi.eu','2010-09-02','ibn'),
       ('pik','Piotr','Kupisz','pik@komis.eu','2015-02-20','ktc');

ALTER TABLE handlowcy
ADD sektor int;

UPDATE handlowcy
SET sektor=1
WHERE login IN ('ibn','ktc');

UPDATE handlowcy
SET sektor=2
WHERE login IN ('milo','pik');

UPDATE handlowcy
SET sektor=3
WHERE login IN ('wotj');

UPDATE handlowcy
SET sektor=4
WHERE login IN ('agam');

UPDATE handlowcy
SET email='milo@komis.eu'
WHERE login='milo';

UPDATE handlowcy
SET nazwisko='Zak'
WHERE imie='Wojciech';

UPDATE handlowcy
SET login='wojt'
WHERE imie='Wojciech';

DELETE FROM handlowcy
WHERE email='pik@komis.eu';



