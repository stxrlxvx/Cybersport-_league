SELECT 
    player_id, 
    kills, 
    deaths, 
    assists, 
    damage_dealt, 
    damage_absorbed, 
    healing_done, 
    gold_per_minut, 
    experience_per_minut, 
    creeps_kill, 
    net_worth
FROM 
    player_stats
ORDER BY 
    player_id;


SELECT 
    player_id,
    net_worth,
    creeps_kill,
    gold_per_minut,
    experience_per_minut
FROM 
    player_stats
ORDER BY 
	player_id, kills;


SELECT 
    player_id,
    kills,
    deaths,
    assists
FROM 
    player_stats
ORDER BY 
	player_id;


SELECT 
    player_id,
    damage_dealt,
    damage_absorbed,
    healing_done
FROM 
    player_stats
ORDER BY 
    player_id;

SELECT 
    player_id,
    creeps_kill,
    net_worth,
    gold_per_minut,
    experience_per_minut
FROM 
    player_stats
WHERE 
    creeps_kill < 900
ORDER BY 
    creeps_kill ASC;
    
    SELECT 
    player_id,
    creeps_kill,
    net_worth,
    gold_per_minut,
    experience_per_minut
FROM 
    player_stats
WHERE 
    creeps_kill > 900
ORDER BY 
    creeps_kill DESC;

SELECT 
    player_id,
    gold_per_minut
FROM 
    player_stats
WHERE 
    gold_per_minut < 1000
ORDER BY 
    gold_per_minut ASC;

SELECT
    player_id,
    gold_per_minut,
    net_worth
FROM
	player_stats
ORDER BY
	RAND()
LIMIT 1;