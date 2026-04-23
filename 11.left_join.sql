/*
 select *
 from  locations as l
 left join events as e on e.location_id = l.id
 ;
 select *
 from cities as c
 left join locations as l on l.city_name = c.name;
 */
SELECT *
FROM cities AS c
  LEFT JOIN locations AS loc ON loc.city_name = c.name
  LEFT JOIN events AS e ON e.location_id = loc.id
WHERE c.name = 'Munich'
  AND date_planned > j '2022-02-01';