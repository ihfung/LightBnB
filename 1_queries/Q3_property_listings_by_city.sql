SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating) AS average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE properties.city = 'Vancouver' AND property_reviews.rating >= 4
GROUP BY properties.id
ORDER BY cost_per_night
LIMIT 10;

