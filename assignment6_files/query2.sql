select trim(j.station) name
from fares_feb1 f
join fares_jan18 j on f.remote=j.remote
where f.ff-j.ff<-1000
group by f.station;
