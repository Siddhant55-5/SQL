# Write your MySQL query statement below
select person_name 

from
 (select person_name, turn,
sum(weight) over (order by turn) as totalweight
from queue) q

where totalweight<=1000

order by  turn desc

limit 1

