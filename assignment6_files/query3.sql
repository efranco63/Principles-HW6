select avg(diff) broadway_ff_avg_diff
from
(select sum(f.ff-j.ff) diff
from fares_feb1 f
join fares_jan18 j on f.remote=j.remote
join stations s on f.station=s.name
where s.line='Broadway'
group by f.station) t;
