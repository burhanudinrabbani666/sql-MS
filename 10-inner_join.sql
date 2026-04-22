\x
SELECT e.id,
  e.name,
  e.date_planned,
  l.title, l.street,
  l.house_number,
  l.city_name,
  u.first_name,
  u.last_name
FROM events AS e
INNER JOIN locations AS l ON l.id = e.location_id
INNER JOIN events_users AS  eu ON eu.event_id = e.id
INNER JOIN users AS u ON eu.user_id = u.id;
