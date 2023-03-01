-- 第7章 数据过滤

-- AND 操作符
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 1003 AND prod_price <= 10;

-- OR 操作符
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 1002 OR prod_price <= 10;

-- IN 操作符
SELECT prod_name, prod_price
FROM products
WHERE vend_id IN (1002, 1003)
ORDER BY prod_name;

-- NOT 操作符
SELECT prod_name, prod_price
FROM products
WHERE vend_id NOT IN (1002, 1003)
ORDER BY prod_name;
