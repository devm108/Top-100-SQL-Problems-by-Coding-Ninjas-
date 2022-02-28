select min(abs(u.x - v.x)) shortest from point u,point v
where  u.x != v.x;
