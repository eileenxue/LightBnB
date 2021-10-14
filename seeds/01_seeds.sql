-- Users
INSERT INTO users (name, email, password)
VALUES 
  ('Abby Bear', 'abbybear@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Billy Conner', 'billycon@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Cassie Dearborn', 'cassiedear@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Dylan Elliot', 'dillpickle@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- Properties
INSERT INTO properties 
  (owner_id, title, description, thumbnail_photo_url, cover_photo_url, 
  cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, 
  country, street, city, province, post_code, active)
VALUES
  (1, 'Country Cottage', 'description', 'https://www.cottage.com/thumb', 'https://www.cottage.com/cover', 
  99, 2, 2, 3,
  'Canada', '44 Elm Street', 'Muskoka', 'Ontario', 'M5G2K1', true),
  (2, 'Luxury Condo', 'description', 'https://www.luxecondo.com/thumb', 'https://www.luxecondo.com/cover', 
  99, 2, 2, 3,
  'Canada', '123 Queen Street', 'Toronto', 'Ontario', 'M6T3M2', true),
  (3, 'Lakeside Bedroom', 'description', 'https://www.lakeside.com/thumb', 'https://www.lakeside.com/cover', 
  99, 2, 2, 3,
  'Canada', '3459 Long Road', 'Kingston', 'Ontario', 'N1G6K9', true);

-- Reservations
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES 
  ('2018-09-11', '2018-09-26', 2, 3),
  ('2018-12-21', '2018-12-26', 3, 4),
  ('2019-08-02', '2019-08-10', 1, 2);

-- Property Reviews
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (3, 2, 1, 4, 'Its alright'),
  (4, 3, 2, 3, 'Can be cleaner'),
  (2, 1, 3, 5, 'Perfect stay');