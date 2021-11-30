use product_orders_plusplus;

select p.productCode, p.productName, sum(quantityOrdered*quantityOrdered) 'Tong_gia' from products p 
join orderdetails od on p.productCode = od.productCode
join orders o on o.orderNumber = od.orderNumber
group by p.productCode
order by Tong_gia asc;
