-- Bachelor Agadir: activities, accommodations, transports seed data

-- ═══════════════════════════════════════════════
-- DESTINATION
-- ═══════════════════════════════════════════════
INSERT INTO destinations (id, name, country, description, hero_image_url, currency, language, best_time_to_visit, highlights, local_tips, health_and_safety, travel_requirements, niche_id, is_active)
VALUES (
  'agadir', 'Agadir', 'Morocco',
  '10km golden beach, surf culture, beach clubs, and vibrant nightlife. Morocco''s answer to Marbella — sun, sea, and celebration.',
  'https://images.unsplash.com/photo-1539635278303-d4002c07eae3?w=800',
  'EUR', 'French/Arabic',
  ARRAY['Mar-Nov'],
  ARRAY['Agadir Beach', 'Surf & Bodyboard', 'Beach Clubs', 'Souk El Had'],
  ARRAY['Most hotels are on the beachfront strip', 'Taxis are cheap — negotiate before riding', 'The beach is massive and never crowded', 'Souk El Had is the biggest market in Morocco'],
  ARRAY['Tap water not recommended — drink bottled', 'Strong sun — SPF 50+ essential'],
  ARRAY['Passport required', 'No visa needed for EU/US citizens'],
  'bachelor', true
) ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- DAY ACTIVITIES
-- ═══════════════════════════════════════════════
INSERT INTO activities (id, destination_id, title, description, duration, price, category, location, tags, main_image_url, is_active) VALUES
('agd-surf', 'agadir', 'Surf Lesson', 'Learn to ride the Atlantic waves with a certified instructor. Wetsuit, board, and 2-hour coaching session on Agadir''s main beach.', 2.5, 45, 'Adventure & Outdoor', 'Agadir Beach', ARRAY['adventure', 'outdoor', 'surf', 'morning'], 'https://images.unsplash.com/photo-1502680390548-bdbac40e2009?w=400', true),
('agd-jetski', 'agadir', 'Jet Ski', 'High-speed jet ski session along the Agadir coastline. Safety briefing, life jacket, and 30 minutes of pure adrenaline.', 1, 65, 'Adventure & Outdoor', 'Marina', ARRAY['adventure', 'water', 'speed', 'morning'], 'https://images.unsplash.com/photo-1605281317010-fe5ffe798166?w=400', true),
('agd-quad', 'agadir', 'Quad Biking in Sahara', 'Tear through sand dunes and desert trails on powerful quads. Includes helmet, goggles, and mint tea stop at a Berber village.', 3, 80, 'Adventure & Outdoor', 'Sahara outskirts', ARRAY['adventure', 'outdoor', 'quad', 'morning'], 'https://images.unsplash.com/photo-1558618666-fcd25c85f82e?w=400', true),
('agd-banana', 'agadir', 'Banana Boat', 'Hold on tight as the speedboat drags your group across the waves. Guaranteed laughs and wipeouts.', 0.5, 25, 'Adventure & Outdoor', 'Agadir Beach', ARRAY['adventure', 'water', 'group', 'morning'], 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=400', true),
('agd-parasail', 'agadir', 'Parasailing', 'Soar 100 metres above the Atlantic with stunning views of the coastline and Atlas Mountains in the distance.', 1, 55, 'Adventure & Outdoor', 'Marina', ARRAY['adventure', 'water', 'aerial', 'morning'], 'https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?w=400', true),
('agd-beach-club', 'agadir', 'Beach Club Day Pass', 'Full-day access to a premium beachfront club with sun loungers, DJ, cocktails, and infinity pool overlooking the ocean.', 6, 50, 'Wellness & Relaxation', 'Beachfront Strip', ARRAY['beach', 'pool', 'relaxing', 'afternoon'], 'https://images.unsplash.com/photo-1540541338287-41700207dee6?w=400', true),
('agd-hammam', 'agadir', 'Hammam & Massage', 'Traditional Moroccan hammam with black soap scrub, rhassoul clay mask, and a 45-minute argan oil massage.', 2.5, 60, 'Wellness & Relaxation', 'City Centre', ARRAY['spa', 'wellness', 'relaxing', 'afternoon'], 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=400', true),
('agd-pool-party', 'agadir', 'Pool Party', 'Private pool party at a beachfront venue with DJ, open bar for 2 hours, and inflatable games. The ultimate group celebration.', 4, 70, 'Party & Nightlife', 'Beachfront Strip', ARRAY['party', 'pool', 'group', 'afternoon'], 'https://images.unsplash.com/photo-1504196606672-aef5c9cefc92?w=400', true),
('agd-bbq-beach', 'agadir', 'BBQ on the Beach', 'Private beachside BBQ with fresh grilled meats, seafood, salads, and cold drinks. Fire pit, music, and sunset views.', 3, 55, 'Food & Drink', 'Agadir Beach', ARRAY['food', 'beach', 'group', 'evening'], 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=400', true),
('agd-seafood', 'agadir', 'Seafood Port Lunch', 'Fresh-off-the-boat seafood at the famous Port d''Agadir. Choose your fish, have it grilled on the spot with Moroccan spices.', 2, 35, 'Food & Drink', 'Port d''Agadir', ARRAY['food', 'seafood', 'lunch', 'afternoon'], 'https://images.unsplash.com/photo-1534604973900-c43ab4c2e0ab?w=400', true),
('agd-cooking', 'agadir', 'Moroccan Cooking Class', 'Learn to make tajine, couscous, and Moroccan pastries from a local chef. Includes market visit, hands-on cooking, and feast.', 3.5, 45, 'Food & Drink', 'City Centre', ARRAY['food', 'culture', 'cooking', 'afternoon'], 'https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- NIGHT ACTIVITIES
-- ═══════════════════════════════════════════════
INSERT INTO activities (id, destination_id, title, description, duration, price, category, location, tags, main_image_url, is_active) VALUES
('agd-club', 'agadir', 'Club Entry', 'Skip the queue at Agadir''s hottest nightclub. Group entry with a welcome shot included.', 4, 25, 'Party & Nightlife', 'Nouveau Talborjt', ARRAY['nightlife', 'party', 'evening', 'club'], 'https://images.unsplash.com/photo-1566737236500-c8ac43014a67?w=400', true),
('agd-vip', 'agadir', 'VIP Tables & Bottles', 'Reserved VIP booth with premium bottles, mixers, and sparklers at a top Agadir club. Dedicated host all night.', 5, 95, 'Party & Nightlife', 'Nouveau Talborjt', ARRAY['nightlife', 'party', 'evening', 'vip'], 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400', true),
('agd-sunset-crawl', 'agadir', 'Sunset Bar Crawl', '3-stop bar crawl along the beachfront strip starting at golden hour. Welcome drink at each venue and guide included.', 3.5, 40, 'Party & Nightlife', 'Beachfront Strip', ARRAY['nightlife', 'bar', 'sunset', 'evening'], 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=400', true),
('agd-karaoke', 'agadir', 'Karaoke Night', 'Private karaoke room with massive song library, disco lights, and unlimited soft drinks. Singing talent not required.', 2.5, 30, 'Group Experiences', 'City Centre', ARRAY['group', 'party', 'evening', 'karaoke'], 'https://images.unsplash.com/photo-1516280440614-37939bbacd81?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- ACCOMMODATIONS
-- ═══════════════════════════════════════════════
INSERT INTO accommodations (id, destination_id, name, type, description, location, price_per_night, rating, amenities, main_image_url, is_active) VALUES
('agd-hotel-3', 'agadir', 'Hotel Agadir 3*', 'Hotel', 'Comfortable beachfront hotel with pool, restaurant, and direct beach access. Great value for groups.', 'Beachfront Strip', 55, 3, ARRAY['wifi', 'pool', 'restaurant', 'beach-access', 'air-conditioning'], 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400', true),
('agd-hotel-4', 'agadir', 'Hotel Agadir 4* All-Inclusive', 'Hotel', 'All-inclusive resort with multiple pools, buffet restaurants, evening entertainment, and beachfront location.', 'Beachfront Strip', 85, 4, ARRAY['wifi', 'pool', 'all-inclusive', 'restaurant', 'bar', 'gym', 'beach-access'], 'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=400', true),
('agd-hotel-5', 'agadir', 'Hotel Agadir 5* Resort', 'Hotel', 'Luxury 5-star resort with spa, infinity pool, fine dining, and private beach section. Premium service.', 'Beachfront Strip', 140, 5, ARRAY['wifi', 'pool', 'spa', 'fine-dining', 'bar', 'gym', 'private-beach', 'concierge'], 'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=400', true),
('agd-apartment', 'agadir', 'Beach Apartment', 'Apartment', 'Modern apartment 2 minutes from the beach with kitchen, balcony, and sea views. Ideal for self-catering groups.', 'City Centre', 45, 3, ARRAY['wifi', 'kitchen', 'balcony', 'sea-view', 'air-conditioning'], 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=400', true),
('agd-villa', 'agadir', 'Villa with Pool', 'Villa', 'Spacious private villa with heated pool, BBQ terrace, garden, and mountain views. Perfect for large groups.', 'Taghazout area', 130, 5, ARRAY['private-pool', 'garden', 'bbq', 'parking', 'wifi', 'mountain-view'], 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400', true),
('agd-riad', 'agadir', 'Boutique Riad', 'Riad', 'Charming boutique riad with traditional Moroccan decor, rooftop terrace, and homemade breakfast.', 'Medina', 70, 4, ARRAY['wifi', 'rooftop-terrace', 'breakfast-included', 'courtyard', 'traditional-decor'], 'https://images.unsplash.com/photo-1548018560-c7196548e84d?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- TRANSPORTS
-- ═══════════════════════════════════════════════
INSERT INTO transports (id, destination_id, name, type, provider, price, duration, description, features, pricing_unit, main_image_url, is_active) VALUES
('agd-airport', 'agadir', 'Airport Transfer Shuttle', 'shuttle', 'Agadir Transfers', 10, '25 min', 'Comfortable minivan shuttle from Agadir Al Massira Airport. Driver meets you at arrivals with a name sign.', ARRAY['airport-pickup', 'name-sign', 'air-conditioning'], 'per_person', 'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?w=400', true),
('agd-range-rover', 'agadir', 'Range Rover VIP Transfer', 'luxury_car', 'Local VIP Transfer', 80, '25 min', 'Luxury Range Rover transfer with meet & greet at the airport, chilled water, and door-to-door service.', ARRAY['luxury', 'meet-and-greet', 'air-conditioning', 'water'], 'per_trip', 'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=400', true)
ON CONFLICT (id) DO NOTHING;
