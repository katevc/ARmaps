INSERT INTO venues(venue_id, name, description, image_url, latitude, longitude)
VALUES
    (DEFAULT, 'Michigan''s Adventure', 'Michigan''s Adventure is a 250-acre amusement park in Muskegon County, Michigan, about halfway between Muskegon and Whitehall. It is the largest amusement park in the state and has been owned and operated by Cedar Fair since 2001.', '/media/michiganadventurewaterpark.jpeg', 43.342079, -86.279846),
    (DEFAULT, 'Michigan Stadium', 'Michigan Stadium, nicknamed "The Big House", is the football stadium for the University of Michigan in Ann Arbor, Michigan. It is the largest stadium in the United States and Western Hemisphere, the third largest stadium in the world, and the 34th largest sports venue.', '/media/michiganstadium.jpeg', 42.265869, -83.750031);
INSERT INTO destinations(destination_id, venue_id, name, description, image_url, latitude, longitude)
VALUES
    (DEFAULT, 1, 'Shivering Timbers', 'At a half-mile out and a half-mile back in just two minutes and 30 seconds, Shivering Timbers is a solid mile of pure adrenaline, excitement and fun!', '/media/shiveringtimbers.jpeg', 43.342225, -86.277054),
    (DEFAULT, 1, 'Funnel of Fear', 'Take your best friends and family, add a bendy tunnel, a ginormous funnel, loads of screams and laughter, and what do you get? The Funnel of Fear at Michigan’s Adventure’s WildWater Adventure!', '/media/funneloffear.jpeg', 43.345509, -86.279666),
    (DEFAULT, 1, 'Thunderhawk', 'Have you ever dreamed of soaring through the air like a majestic hawk? Our Thunderhawk roller coaster, the first suspended looping coaster in the state, comes mighty close to delivering the next best thing!', '/media/thunderhawk.jpeg', 43.345412, -86.277281),
    (DEFAULT, 2, 'Gate 10', 'Northeast entrance gate, also known as the student entrance.', '/media/gate10.jpeg', 42.267576, -83.747683),
    (DEFAULT, 2, 'Gate 4', 'Southwest entrance gate, also known as the main entrance.', '/media/gate4.jpeg', 42.264514, -83.749918),
    (DEFAULT, 2, 'North Snack Bar', 'Located between the two entrances on Keech Ave, we sell hotdogs, popcorn, and soft pretzels!', '/media/snackbar.jpeg', 42.267416, -83.749060);
INSERT INTO waypoints(waypoint_id, venue_id, destination_id, latitude, longitude)
VALUES
    (1, 1, 1, 43.342225, -86.277054),
    (2, 1, 2, 43.345509, -86.279666),
    (3, 1, 3, 43.345412, -86.277281),
    (4, 1, NULL, 43.342416, -86.278539),
    (5, 1, NULL, 43.342473, -86.277130),
    (6, 1, NULL, 43.342474, -86.279227),
    (7, 1, NULL, 43.342509, -86.279778),
    (8, 1, NULL, 43.342981, -86.279734),
    (9, 1, NULL, 43.343697, -86.279702),
    (10, 1, NULL, 43.344027, -86.279750),
    (11, 1, NULL, 43.344738, -86.279532),
    (12, 1, NULL, 43.345442, -86.279260),
    (13, 1, NULL, 43.345487, -86.278534),
    (14, 1, NULL, 43.342950, -86.280336),
    (15, 1, NULL, 43.342570, -86.280403),
    (16, 1, NULL, 43.343641, -86.279303),
    (17, 1, NULL, 43.343374, -86.279166),
    (18, 1, NULL, 43.343132, -86.279180),
    (19, 1, NULL, 43.342834, -86.279219),
    (20, 1, NULL, 43.342664, -86.279168),
    (21, 1, NULL, 43.342471, -86.278942),
    (22, 1, NULL, 43.345551, -86.279332),
    (23, 1, NULL, 43.345680, -86.279460),
    (24, 1, NULL, 43.345624, -86.279565),
    (25, 1, NULL, 43.345898, -86.279689),
    (26, 1, NULL, 43.345782, -86.279955),
    (27, 1, NULL, 43.345661, -86.279812),
    (28, 1, NULL, 43.345574, -86.279638),
    (29, 1, NULL, 43.345451, -86.277163),
    (30, 1, NULL, 43.345454, -86.276738),
    (31, 2, 4, 42.267576, -83.747683),
    (32, 2, 5, 42.264514, -83.749918),
    (33, 2, 6, 42.267416, -83.749060),
    (34, 2, NULL, 42.267320, -83.747981),
    (35, 2, NULL, 42.267280, -83.749011),
    (36, 2, NULL, 42.266917, -83.747576),
    (37, 2, NULL, 42.266812, -83.749844),
    (38, 2, NULL, 42.264776, -83.749568),
    (39, 2, NULL, 42.264550, -83.748634),
    (40, 2, NULL, 42.264712, -83.747618),
    (41, 2, NULL, 42.265009, -83.747563),
    (42, 2, NULL, 42.265459, -83.749993),
    (43, 2, NULL, 42.266420, -83.750023),
    (44, 2, NULL, 42.265467, -83.747470),
    (45, 2, NULL, 42.266252, -83.747457);
INSERT INTO paths(inNode, outNode, venue_id)
VALUES
    ( 1, 5, 1),
    ( 4, 5, 1),
    ( 4, 21, 1),
    ( 6, 21, 1),
    ( 6, 20, 1),
    ( 20, 21, 1),
    ( 19, 20, 1),
    ( 18, 19, 1),
    ( 17, 18, 1),
    ( 16, 17, 1),
    ( 9, 16, 1),
    ( 6, 7, 1),
    ( 7, 15, 1),
    ( 7, 8, 1),
    ( 14, 15, 1),
    ( 8, 14, 1),
    ( 8, 9, 1),
    ( 9, 10, 1),
    ( 10, 11, 1),
    ( 11, 12, 1),
    ( 12, 22, 1),
    ( 22, 23, 1),
    ( 23, 24, 1),
    ( 24, 28, 1),
    ( 2, 28, 1),
    ( 27, 28, 1),
    ( 26, 27, 1),
    ( 25, 26, 1),
    ( 23, 25, 1),
    ( 12, 13, 1),
    ( 3, 13, 1),
    ( 3, 29, 1),
    ( 13, 29, 1),
    ( 29, 30, 1),
    ( 31, 34, 2),
    ( 31, 36, 2),
    ( 33, 34, 2),
    ( 33, 35, 2),
    ( 34, 35, 2),
    ( 34, 36, 2),
    ( 35, 37, 2),
    ( 37, 43, 2),
    ( 42, 43, 2),
    ( 38, 42, 2),
    ( 32, 38, 2),
    ( 38, 39, 2),
    ( 39, 40, 2),
    ( 40, 41, 2),
    ( 41, 44, 2),
    ( 44, 45, 2),
    ( 36, 45, 2);
