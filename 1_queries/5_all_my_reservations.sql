SELECT 
  reservations.id, 
  properties.title, 
  reservations.start_date, 
  properties.cost_per_night,
  AVG(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON  reservations.property_id = properties.id
JOIN property_reviews ON  properties.id = property_reviews.property_id
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
