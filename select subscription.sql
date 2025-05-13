SELECT 
    subscription_id,
    subscription_type,
    subscription_name,
    subscription_description,
    cost
FROM 
    subscription;


SELECT *
FROM subscription
WHERE subscription_name = 'premium';

SELECT *
FROM subscription
WHERE subscription_name = 'gold-premium';

SELECT *
FROM subscription
WHERE subscription_name = 'no';

SELECT *
FROM subscription
WHERE cost = 0;


SELECT *
FROM subscription
WHERE cost = 350;

SELECT *
FROM subscription
WHERE cost = 250;

SELECT subscription_name, subscription_description
FROM subscription
WHERE subscription_name LIKE '%premium%';

SELECT subscription_name, subscription_description
FROM subscription
WHERE subscription_name LIKE '%no%';