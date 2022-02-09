select Title,Rating from IMDB x, genre y
where y.genre like 'C%' and x.Title like '%2014%' and x.Budget>40000000
and x.Movie_id=y.Movie_id;
