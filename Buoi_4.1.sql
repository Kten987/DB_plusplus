use store_cms_plusplus;
-- 1. Trả ra 5 laptop có giá nhỏ nhất.
select * from laptop order by price asc limit 5 ;
-- 2. Trả ra các hãng sản xuất laptop và sắp xếp theo thứ tự Alphabet.
select distinct maker from laptop order by maker asc;
-- 3. Viết câu query trả ra doanh số laptop bán được và doanh thu của cửa hàng.
select sum(sold), sum(sold*price) "Doanh thu" from laptop;

