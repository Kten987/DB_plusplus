use product_orders_plusplus;

select distinct p.productCode, p.productName from products p 
where p.productCode Not in ( select distinct productCode from orderdetails); 

-- sao k dùng đc điều kiện != và <> vậy
-- select distinct p.productCode, p.productName from products p, orderdetails od
-- where p.productCode != od.productCode; 