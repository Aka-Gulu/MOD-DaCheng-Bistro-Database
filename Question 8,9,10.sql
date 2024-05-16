#8
select sum(quantity) as order_amount,PromotionName from order_composition as t1
join promotion as t2
on t1.PromotionID = t2.PromotionID
group by PromotionName
order by order_amount desc;


#9
select count(CustomerID) as customer_amount,member_city from orders as t1
left join customer as t2
on t1.CustomerID = t2.member_id
group by member_city
order by customer_amount desc;

#10
select DeliveryMethod,count(DeliveryMethod) as total,
(count(DeliveryMethod)*100)/(select count(*) from delivery) as percentage
from delivery
group by DeliveryMethod
order by percentage desc;