# Write your MySQL query statement below
#select c1.id,c1.movie,c1.description,c1.rating
select * from Cinema
#from Cinema c1
#join Cinema c2
#on c1.id = c2.id
where id % 2 != 0 and description != 'boring'
order by rating desc