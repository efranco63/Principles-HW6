select trim(f.station) station_with_largest_increase
from fares_feb1 f
join fares_jan18 j on f.remote=j.remote
group by f.station
order by sum(f.ff-j.ff) desc limit 1;
