select genre,max((Rating+(MetaCritic)/10)/2) AS weighted_rating from genre x,IMDB y 
where title like '%2014%' and x.Movie_id=y.Movie_id and genre is not null group by x.genre;
