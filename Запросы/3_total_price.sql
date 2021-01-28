SELECT sum(order_price),
	  users.login 
FROM `order`
JOIN users ON users.id = `order`.user_id
group by `order`.user_id
