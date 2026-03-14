-- Bachelor Marrakech: activities, accommodations, transports seed data

-- ═══════════════════════════════════════════════
-- DAY ACTIVITIES
-- ═══════════════════════════════════════════════
INSERT INTO activities (id, destination_id, title, description, duration, price, category, location, tags, main_image_url, is_active) VALUES
('mkch-paintball', 'marrakech', 'Paintball', 'Battle it out in the Marrakech desert paintball arena. Full gear, ammo, and referee included. The ultimate group bonding.', 2.5, 40, 'Adventure & Outdoor', 'Palmeraie', ARRAY['adventure', 'outdoor', 'group', 'morning'], 'https://images.unsplash.com/photo-1565099824572-17e43a0c6a58?w=400', true),
('mkch-quad', 'marrakech', 'Quad Biking', 'Race through the Palmeraie palm groves on powerful quads. Dust, speed, and stunning desert views.', 2, 92, 'Adventure & Outdoor', 'Palmeraie', ARRAY['adventure', 'outdoor', 'quad', 'morning'], 'https://images.unsplash.com/photo-1558618666-fcd25c85f82e?w=400', true),
('mkch-buggy', 'marrakech', 'Buggy Desert Ride', 'Off-road buggy adventure through the desert dunes and rocky trails outside Marrakech. Helmets and goggles provided.', 3, 107, 'Adventure & Outdoor', 'Desert outskirts', ARRAY['adventure', 'outdoor', 'driving', 'morning'], 'https://images.unsplash.com/photo-1533591917674-9e24e602ac09?w=400', true),
('mkch-spa', 'marrakech', 'Spa Hammam', 'Traditional Moroccan hammam experience with black soap scrub, rhassoul clay mask, argan oil massage, and mint tea.', 3, 71, 'Wellness & Relaxation', 'Medina', ARRAY['spa', 'relaxing', 'wellness', 'afternoon'], 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=400', true),
('mkch-karting', 'marrakech', 'Karting', 'High-speed go-kart racing on a professional outdoor track. Timed laps, podium ceremony, and bragging rights.', 1.5, 78, 'Adventure & Outdoor', 'Route de Casablanca', ARRAY['adventure', 'racing', 'group', 'morning'], 'https://images.unsplash.com/photo-1551698618-1dfe5d97d256?w=400', true),
('mkch-accrobranche', 'marrakech', 'Accrobranche (Treetop Course)', 'Ziplines, rope bridges, and aerial obstacles through the trees in the Marrakech adventure park.', 2.5, 78, 'Adventure & Outdoor', 'Palmeraie', ARRAY['adventure', 'outdoor', 'zipline', 'morning'], 'https://images.unsplash.com/photo-1502680390548-bdbac40e2009?w=400', true),
('mkch-desert-lunch', 'marrakech', 'Lunch in the Desert', 'Berber tent lunch in the Agafay desert with panoramic Atlas Mountain views. Traditional tajine, couscous, and mint tea.', 4, 74, 'Food & Drink', 'Agafay Desert', ARRAY['food', 'desert', 'culture', 'afternoon'], 'https://images.unsplash.com/photo-1489749798305-4fea3ae63d43?w=400', true),
('mkch-quad-desert', 'marrakech', 'Quad Desert Safari', 'Extended quad ride deep into the Agafay desert with Berber village stop and panoramic photo ops.', 3, 92, 'Adventure & Outdoor', 'Agafay Desert', ARRAY['adventure', 'outdoor', 'desert', 'morning'], 'https://images.unsplash.com/photo-1558618666-fcd25c85f82e?w=400', true),
('mkch-camel', 'marrakech', 'Camel Ride at Sunset', 'Gentle camel trek through the Palmeraie at golden hour. Tea stop at a Berber camp with photo opportunities.', 2, 54, 'Culture & Sightseeing', 'Palmeraie', ARRAY['culture', 'outdoor', 'sunset', 'evening'], 'https://images.unsplash.com/photo-1548690312-e3b507d8c110?w=400', true),
('mkch-majorelle', 'marrakech', 'Jardins Majorelle & Musée YSL', 'Visit the iconic cobalt-blue Majorelle Garden and the Yves Saint Laurent Museum. Two cultural landmarks in one stop.', 2.5, 42, 'Culture & Sightseeing', 'Guéliz', ARRAY['culture', 'sightseeing', 'museum', 'morning'], 'https://images.unsplash.com/photo-1569383746724-6f1b882b8f46?w=400', true),
('mkch-brunch-pool', 'marrakech', 'Brunch & Pool Day', 'Lavish brunch spread at a luxury riad or hotel with full pool access. Prosecco, fresh juices, and Moroccan pastries.', 4, 92, 'Wellness & Relaxation', 'Palmeraie', ARRAY['brunch', 'pool', 'relaxing', 'afternoon'], 'https://images.unsplash.com/photo-1540541338287-41700207dee6?w=400', true),
('mkch-belly-dance', 'marrakech', 'Belly Dancing Class', 'Learn traditional Oriental dance moves with a professional dancer. Costumes provided. Hilarious group fun guaranteed.', 2, 57, 'Group Experiences', 'Medina', ARRAY['dance', 'group', 'culture', 'afternoon'], 'https://images.unsplash.com/photo-1508700929628-666bc8bd84ea?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- NIGHT ACTIVITIES
-- ═══════════════════════════════════════════════
INSERT INTO activities (id, destination_id, title, description, duration, price, category, location, tags, main_image_url, is_active) VALUES
('mkch-club-entry', 'marrakech', 'Club Entry', 'Skip the queue at Marrakech''s hottest club. Entry for the group with a welcome drink included.', 4, 28, 'Party & Nightlife', 'Hivernage', ARRAY['nightlife', 'party', 'evening', 'club'], 'https://images.unsplash.com/photo-1566737236500-c8ac43014a67?w=400', true),
('mkch-vip-tables', 'marrakech', 'VIP Tables & Bottles', 'Reserved VIP table with premium bottles at one of Marrakech''s top clubs. Dedicated host, mixers, and sparklers.', 5, 107, 'Party & Nightlife', 'Hivernage', ARRAY['nightlife', 'party', 'evening', 'vip'], 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400', true),
('mkch-night-out', 'marrakech', 'Night Out Package', 'Pre-game at a rooftop bar, dinner at a trendy spot, then club entry with reserved area. The full Marrakech night.', 5, 50, 'Party & Nightlife', 'Guéliz & Hivernage', ARRAY['nightlife', 'party', 'evening', 'package'], 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=400', true),
('mkch-moroccan-dinner', 'marrakech', 'Traditional Moroccan Dinner', 'Multi-course Moroccan feast in a stunning riad courtyard. Pastilla, tajine, couscous, and live Gnawa music.', 3, 71, 'Food & Drink', 'Medina', ARRAY['food', 'dinner', 'culture', 'evening'], 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400', true),
('mkch-chic-dinner', 'marrakech', 'Upscale Chic Dinner', 'Fine dining at a top-rated restaurant with rooftop terrace, craft cocktails, and fusion Moroccan-French cuisine.', 3, 97, 'Food & Drink', 'Guéliz', ARRAY['food', 'dinner', 'evening', 'upscale'], 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- ACCOMMODATIONS
-- ═══════════════════════════════════════════════
INSERT INTO accommodations (id, destination_id, name, type, description, location, price_per_night, rating, amenities, main_image_url, is_active) VALUES
('mkch-hotel-2', 'marrakech', 'Hotel Marrakech 2*', 'Hotel', 'Clean and central budget hotel near the Medina. Basic rooms with A/C and shared pool.', 'Medina', 42, 2, ARRAY['wifi', 'pool', 'air-conditioning'], 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400', true),
('mkch-hotel-3', 'marrakech', 'Hotel Marrakech 3*', 'Hotel', 'Comfortable mid-range hotel with restaurant, pool, and walking distance to Jemaa el-Fna.', 'Guéliz', 64, 3, ARRAY['wifi', 'pool', 'restaurant', 'bar', 'air-conditioning'], 'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=400', true),
('mkch-hotel-4', 'marrakech', 'Hotel Marrakech 4*', 'Hotel', 'Premium hotel with spa, rooftop pool, and Atlas Mountain views. Ideal for groups wanting comfort.', 'Hivernage', 78, 4, ARRAY['wifi', 'pool', 'spa', 'restaurant', 'bar', 'gym', 'rooftop'], 'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=400', true),
('mkch-riad', 'marrakech', 'Traditional Riad', 'Riad', 'Authentic Moroccan riad in the heart of the Medina. Courtyard with fountain, rooftop terrace, and traditional decor.', 'Medina', 57, 4, ARRAY['wifi', 'rooftop-terrace', 'courtyard', 'breakfast-included'], 'https://images.unsplash.com/photo-1548018560-c7196548e84d?w=400', true),
('mkch-villa', 'marrakech', 'Private Villa with Pool', 'Villa', 'Luxury private villa with heated pool, garden, BBQ area, and staff. Perfect for large groups.', 'Palmeraie', 121, 5, ARRAY['private-pool', 'garden', 'bbq', 'staff', 'wifi', 'parking'], 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400', true),
('mkch-riad-lux', 'marrakech', 'Luxury Riad', 'Riad', 'Boutique luxury riad with plunge pool, hammam, and personalized concierge service. Instagram-worthy interiors.', 'Medina', 88, 5, ARRAY['plunge-pool', 'hammam', 'concierge', 'wifi', 'breakfast-included', 'rooftop'], 'https://images.unsplash.com/photo-1548018560-c7196548e84d?w=400', true)
ON CONFLICT (id) DO NOTHING;

-- ═══════════════════════════════════════════════
-- TRANSPORTS
-- ═══════════════════════════════════════════════
INSERT INTO transports (id, destination_id, name, type, provider, price, duration, description, features, pricing_unit, main_image_url, is_active) VALUES
('mkch-range-rover', 'marrakech', 'Range Rover Transfer', 'luxury_car', 'Local VIP Transfer', 85, '45 min', 'Luxury Range Rover transfer for your group. Meet & greet at the airport, chilled water, and door-to-door service.', ARRAY['luxury', 'meet-and-greet', 'air-conditioning', 'water'], 'per_trip', 'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=400', true),
('mkch-airport', 'marrakech', 'Airport Transfer', 'shuttle', 'Marrakech Transfers', 12, '30 min', 'Comfortable minivan airport transfer. Driver meets you at arrivals with a name sign.', ARRAY['airport-pickup', 'name-sign', 'air-conditioning'], 'per_person', 'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?w=400', true)
ON CONFLICT (id) DO NOTHING;
