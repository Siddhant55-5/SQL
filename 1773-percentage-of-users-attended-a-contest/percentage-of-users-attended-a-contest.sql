# Write your MySQL query statement below
select Register.contest_id ,
round(count(distinct Register.user_id)*100 / (select count( Users.user_id )from Users),2) as percentage
from Users
left join Register
on  Users.user_id = Users.user_id
group by contest_id
order by percentage desc , contest_id asc