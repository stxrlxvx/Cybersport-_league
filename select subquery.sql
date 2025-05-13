SELECT 
    p.player_id,
    p.nickname,
    p.first_name,
    p.last_name,
    ms.kills
FROM 
    player_stats ms
JOIN 
    player p ON ms.player_id = p.player_id
WHERE 
    ms.kills < '25';

SELECT 
    h.player_id,
    h.subscription_id,
    (
        SELECT s.subscription_type
        FROM subscription s
        WHERE s.subscription_id = h.subscription_id
    ) AS subscription_type
FROM 
    hub h;
