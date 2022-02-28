select team_name,
count(team_name) as matches_played,
sum(points) as points,
sum(goal_for) as goal_for,
sum(goal_against) as goal_against,
sum(goal_for-goal_against) as goal_diff
from (select t.team_name,
      case when t.team_id=m.home_team_id and home_team_goals>away_team_goals then 3
           when t.team_id=m.home_team_id and home_team_goals=away_team_goals then 1
           when t.team_id=m.away_team_id and home_team_goals=away_team_goals then 1
           when t.team_id=m.away_team_id and home_team_goals<away_team_goals then 3
           else 0 end as points,
      case when t.team_id=m.home_team_id then home_team_goals else away_team_goals end as goal_for,
      case when t.team_id=m.away_team_id then home_team_goals else away_team_goals end as goal_against
      from teams as t join matches as m
      on t.team_id=m.home_team_id or t.team_id=m.away_team_id
) a
group by team_name
order by points desc,goal_diff desc,team_name

