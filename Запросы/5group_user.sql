SELECT user_group.name,
SUM((
SELECT SUM(`order`.order_price)
    FROM `order`
    WHERE `order`.user_id = users.id
    GROUP BY `order`.user_id
)) as Total
FROM users, user_group
WHERE user_group.id = users.group_id
GROUP BY user_group.name;