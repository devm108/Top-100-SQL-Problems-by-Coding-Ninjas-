select a.genre,max(b.Domestic+b.Worldwide-c.Budget) as net_profit from
genre a, earning b,IMDB c 
where a.Movie_id=b.Movie_id and b.Movie_id=c.Movie_id and c.Title like '%2012%'and genre is not null
group by a.genre
order by genre asc
