select * from UserActivity where (username, startDate) in (
    select u1.username, max(u1.startDate) from UserActivity u1
        where (u1.username, u1.startDate) not in (
            select u2.username, max(u2.startDate) from UserActivity u2
                group by u2.username
                having count(u2.username) > 1
        )
        group by u1.username
);
