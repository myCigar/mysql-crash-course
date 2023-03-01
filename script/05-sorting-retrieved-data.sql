-- 第5章 排序检索数据

-- 排序数据
SELECT prod_name
FROM products
ORDER BY prod_name;

-- 按多个列排序
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price, prod_name;

-- 指定排序方向
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC;

## 先按prod_price降序排序，再按prod_name升序排序
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC, prod_name;
