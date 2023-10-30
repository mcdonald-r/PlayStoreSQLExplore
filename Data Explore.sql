-- Finding the average rating of the top 100 apps based off of number of installs and reviews
create table Top_100
as
select App, Rating, Reviews, Installs, AVG(rating) as Top_100_Average
from googleplaystore
WHERE rating <= 5
group by App
order by  4 DESC, 3 DESC
LIMIT 100

select AVG(rating) as Top_100_Average
from Top_100

-- Finding 