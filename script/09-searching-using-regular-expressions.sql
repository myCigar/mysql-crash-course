-- 第9章 用正则表达式进行搜索

-- 基本字符匹配
-- 检索列prod_name包含文本1000的所有行
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000'
ORDER BY prod_name;
-- +--------------+
-- | prod_name    |
-- +--------------+
-- | JetPack 1000 |
-- +--------------+
-- 1 row in set (0.00 sec)

-- .表示匹配任意一个字符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '.000'
ORDER BY prod_name;
-- +--------------+
-- | prod_name    |
-- +--------------+
-- | JetPack 1000 |
-- | JetPack 2000 |
-- +--------------+
-- 2 rows in set (0.00 sec)


-- 进行OR匹配
-- |为正则表达式的OR操作符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'
ORDER BY prod_name;
-- +--------------+
-- | prod_name    |
-- +--------------+
-- | JetPack 1000 |
-- | JetPack 2000 |
-- +--------------+
-- 2 rows in set (0.00 sec)


-- 匹配几个字符之一
-- [123]表示匹配1或2或3
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] Ton'
ORDER BY prod_name;
-- +-------------+
-- | prod_name   |
-- +-------------+
-- | 1 ton anvil |
-- | 2 ton anvil |
-- +-------------+
-- 2 rows in set (0.00 sec)

-- 范围匹配
-- [1-5]表示匹配1到5
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] Ton'
ORDER BY prod_name;
-- +--------------+
-- | prod_name    |
-- +--------------+
-- | .5 ton anvil |
-- | 1 ton anvil  |
-- | 2 ton anvil  |
-- +--------------+
-- 3 rows in set (0.00 sec)