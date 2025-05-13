SELECT *
FROM hub
WHERE date_time BETWEEN '2025-04-15 00:00:00' AND '2025-04-15 23:59:59';

SELECT *
FROM hub
WHERE match_id = 1;

SELECT *
FROM hub
WHERE date_time = '2025-04-15 10:15:00';

SELECT *
FROM hub
WHERE status = 'active';

SELECT *
FROM hub
WHERE status = 'inactive';

