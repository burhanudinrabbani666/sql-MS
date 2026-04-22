\x
select *
from  locations as l
left join events as e on e.location_id = l.id
;
