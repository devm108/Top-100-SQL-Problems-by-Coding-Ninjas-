select i.Title,i.Rating from IMDB i, 
earning e where i.Movie_id=e.Movie_id
and Title like '%12)' and i.MetaCritic>60 and e.Domestic>100000000;
