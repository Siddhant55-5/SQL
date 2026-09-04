# Write your MySQL query statement below
(select
 u.name as results  
 from users u 
 left join MovieRating m
 on u.user_id = m.user_id
 group by u.name ,u.user_id
 order by count(*) desc, u.name
 limit 1
)
union all
(
    SELECT mo.title AS results
    FROM Movies mo
    JOIN MovieRating mr
        ON mo.movie_id = mr.movie_id
    WHERE mr.created_at >= '2020-02-01'
      AND mr.created_at < '2020-03-01'
    GROUP BY mo.movie_id, mo.title
    ORDER BY AVG(mr.rating) DESC, mo.title
    LIMIT 1
);
