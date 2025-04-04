You have access to Facebook’s database, which contains tables related to user interactions. Your task is to calculate the total number of likes from friends for each date that falls on a Friday.

A like should only be counted if the user who liked the post is a friend of the user who made the post.

The output should contain two different columns: 'date' and 'likes'.


--we want date_liked (ie friday) and count of likes on friday
-- join 1 - user id and likes tables on post_id
-- join 2 - frinedships with both tables on user_name
--extract DOW = 5 (friday)
-- group by date_liked




select 
    l.date_liked,
    count(*) as likes
from likes l
join user_posts p on p.post_id = l.post_id
join friendships f
    ON (l.user_name = f.user_name1 AND p.user_name = f.user_name2) 
    OR (l.user_name = f.user_name2 AND p.user_name = f.user_name1)
where extract(dow from l.date_liked) = 5
group by l.date_liked
order by l.date_liked

