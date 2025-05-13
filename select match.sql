SELECT * 
FROM `match`
WHERE match_id = 1;


SELECT *
FROM `match`
WHERE (team_1 = 'radiant' OR team_2 ='dire') AND match_status = 'radiant win';

SELECT 
    match_id,
    score_team_1,
    score_team_2
FROM `match`
WHERE match_status = 'radiant win';

SELECT *
FROM `match`
WHERE date_time >= '2025-05-08 15:00:00' AND date_time <= '2025-05-08 17:15:00';

SELECT *
FROM `match`
WHERE match_status = 'dire win';

SELECT *
FROM `match`
WHERE (score_team_1 = 10 OR score_team_2 = 30) AND match_status = 'dire win';

SELECT *
FROM `match`
WHERE score_team_1 > 50 OR score_team_2 > 30;

SELECT *
FROM `match`