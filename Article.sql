select viewer_id AS "id" from views group by view_date,viewer_id
having count(viewer_id) > 1 and count(distinct article_id) > 1 order by viewer_id asc
