select  `data`,
		sum(`qwnt`),
		sum(order_price) 
		from `order` o 
		group by `data`