-- 第8章 用通配符进行过滤

-- LIKE 操作符
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'jet%';
-- % 任意字符，出现任意次数
-- +---------+--------------+
-- | prod_id | prod_name    |
-- +---------+--------------+
-- | JP1000  | JetPack 1000 |
-- | JP2000  | JetPack 2000 |
-- +---------+--------------+
-- 2 rows in set (0.00 sec)

-- _ 操作符
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';
-- _ 任意字符，出现一次
-- +---------+-------------+
-- | prod_id | prod_name   |
-- +---------+-------------+
-- | ANV02   | 1 ton anvil |
-- | ANV03   | 2 ton anvil |
-- +---------+-------------+
-- 2 rows in set (0.00 sec)
