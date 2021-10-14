SELECT reservations.*, properties.*, AVG(rating) AS average_rating
FROM property_reviews
JOIN reservations ON reservation_id = reservations.id
JOIN properties ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1 AND end_date < NOW()::DATE
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;