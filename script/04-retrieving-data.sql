-- 第4章 检索数据

-- 检索单个列
SELECT prod_name
FROM products;

-- 检索多个列
SELECT prod_id, prod_name, prod_price
FROM products;

-- 检索所有列
SELECT *
FROM products;

-- 检索不同的列
SELECT DISTINCT vend_id
FROM products;

-- 限制结果
SELECT prod_name
FROM products
LIMIT 5;

SELECT prod_name
FROM products
LIMIT 5, 5;

-- 使用完全限定的表名
SELECT products.prod_name
FROM crashcourse.products;
