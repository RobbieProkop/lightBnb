SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON property_id = properties.id
WHERE properties.city LIKE '%ancouver'
GROUP BY properties.id
ORDER BY cost_per_night
LIMIT 10;