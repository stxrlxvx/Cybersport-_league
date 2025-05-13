SELECT 
    adone_id, 
    adone_type, 
    cost_points, 
    rare, 
    `character`
FROM 
    adone
ORDER BY 
    RAND();
    
SELECT DISTINCT `character`
FROM adone;

SELECT `character`
FROM adone
WHERE `character` = 'keyboard';

SELECT cost_points, `character`
FROM adone
WHERE cost_points BETWEEN 0 AND 1700;

SELECT `character`
FROM adone
WHERE cost_points = 450;

SELECT `character`
FROM adone
WHERE rare = 'common';
