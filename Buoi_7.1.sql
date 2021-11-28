use product_orders;

-- 1. Đưa ra thông tin đơn hàng (gồm orderDate, requiredDate, Status) và tổng giá trị của mỗi đơn hàng các ngày trong tháng 3/2003. 
select o.orderDate, o.requiredDate, o.status, (od.quantityOrdered * od.priceEach) 'Tong gia' from orders o
join orderdetails od on o.orderNumber = od.orderNumber
where o.orderDate like '%-03-%'; 

-- 2. Đưa ra tên sản phẩm của các đơn hàng bị huỷ đơn.
select p.productName from products p 
join orderdetails od on p.productCode = od.productCode
join orders o on o.orderNumber = od.orderNumber
where o.status = 'Cancelled';