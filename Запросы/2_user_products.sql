SELECT title,
    users.login 
FROM products
JOIN order_product ON order_product.product_id = products.product_id
JOIN `order` ON `order`.order_id = order_product.order_id
JOIN users ON users.id = `order`.user_id
WHERE `order`.user_id = 2;