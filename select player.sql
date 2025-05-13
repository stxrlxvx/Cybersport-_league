SELECT *
FROM player;

SELECT *
FROM player
LIMIT 1;

SELECT *
FROM player
ORDER BY RAND()
LIMIT 1;

SELECT *
FROM player
WHERE player_id = 40;

SELECT *
FROM player
WHERE nickname = 'NightStalker';

SELECT *
FROM player
WHERE first_name = 'Іван';

SELECT *
FROM player
WHERE last_name = 'Сидоренко';

SELECT *
FROM player
WHERE birth_date = '2004-02-29';

SELECT *
FROM player
WHERE email = 'sergiy.tkachenko@gmail.com';

SELECT 
	player_id,
    nickname
FROM player;

