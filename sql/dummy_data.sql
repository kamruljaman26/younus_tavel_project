INSERT INTO tripbegin_location VALUES (1, 'New York City', 'NY', 'NewYorkCity.jpg');
INSERT INTO tripbegin_location VALUES (2, 'Chicago', 'IL', 'Chicago.jpg');
INSERT INTO tripbegin_location VALUES (3, 'Los Angeles', 'CA', 'LosAngeles.jpg');
INSERT INTO tripbegin_location VALUES (4, 'Boston', 'MA', 'Boston.jpg');
INSERT INTO tripbegin_location VALUES (5, 'Las Vegas', 'NV', 'LasVegas.jpg');
INSERT INTO tripbegin_location VALUES (6, 'Atlanta', 'GA', 'Atlanta.jpg');


-- 3 flights NY -> LA on 5/29
-- 3 flights NY -> LA on 5/30
-- 5 flights LA -> NY on 6/04
-- 3 flights Atlanta -> Las Vegas on 07/03
-- 2 flights Las Vegas -> Atlanta on 07/11
-- 1 flights NY -> Boston on 09/19
-- 2 flights Boston -> Chicago on 09/22
-- 1 flights Chicago -> NY on 09/27

INSERT INTO tripbegin_flight VALUES (1, 'Delta Air Lines', 'New York City', 'Los Angeles', '2018-05-29', '09:00:00', 111.00, 238.50, 577.00, 50, 19, 5);
INSERT INTO tripbegin_flight VALUES (2, 'JetBlue', 'New York City', 'Los Angeles', '2018-05-29', '11:30:00', 109.00, 305.00, 462.50, 47, 22, 10);
INSERT INTO tripbegin_flight VALUES (3, 'Delta Air Lines', 'New York City', 'Los Angeles', '2018-05-29', '15:30:00', 115.50, 283.00, 501.50, 69, 15, 8);
INSERT INTO tripbegin_flight VALUES (4, 'Delta Air Lines', 'New York City', 'Los Angeles', '2018-05-30', '10:30:00', 102.00, 287.50, 560.00, 66, 20, 3);
INSERT INTO tripbegin_flight VALUES (5, 'JetBlue', 'New York City', 'Los Angeles', '2018-05-30', '12:45:00', 99.00, 254.50, 490.00, 62, 12, 9);
INSERT INTO tripbegin_flight VALUES (6, 'Delta Air Lines', 'New York City', 'Los Angeles', '2018-05-30', '17:00:00', 103.50, 273.00, 522.00, 50, 18, 11);
INSERT INTO tripbegin_flight VALUES (7, 'American Airlines', 'Los Angeles', 'New York City', '2018-06-04', '05:30:00', 140.00, 302.00, 630.00, 10, 0, 1);
INSERT INTO tripbegin_flight VALUES (8, 'American Airlines', 'Los Angeles', 'New York City', '2018-06-04', '10:00:00', 137.00, 300.00, 623.00, 5, 2, 0);
--book the one below?
INSERT INTO tripbegin_flight VALUES (9, 'Delta Air Lines', 'Los Angeles', 'New York City', '2018-06-04', '12:45:00', 122.00, 297.00, 580.00, 1, 0, 0);
INSERT INTO tripbegin_flight VALUES (10, 'Delta Air Lines', 'Los Angeles', 'New York City', '2018-06-04', '14:30:00', 129.50, 296.50, 620.00, 18, 7, 6);
INSERT INTO tripbegin_flight VALUES (11, 'JetBlue', 'Los Angeles', 'New York City', '2018-06-04', '16:45:00', 148.00, 312.50, 640.50, 10, 4, 4);
INSERT INTO tripbegin_flight VALUES (12, 'JetBlue', 'Atlanta', 'Las Vegas', '2018-07-03', '12:30:00', 99.00, 205.00, 392.50, 67, 21, 10);
INSERT INTO tripbegin_flight VALUES (13, 'American Airlines', 'Atlanta', 'Las Vegas', '2018-07-03', '19:30:00', 105.50, 203.00, 410.00, 69, 16, 4);
INSERT INTO tripbegin_flight VALUES (14, 'Delta Air Lines', 'Atlanta', 'Las Vegas', '2018-07-03', '22:30:00', 94.00, 187.50, 460.00, 58, 20, 12);
INSERT INTO tripbegin_flight VALUES (15, 'JetBlue', 'Las Vegas', 'Atlanta', '2018-07-11', '12:15:00', 90.00, 154.00, 410.50, 72, 16, 9);
INSERT INTO tripbegin_flight VALUES (16, 'Delta Air Lines', 'Las Vegas', 'Atlanta', '2018-07-11', '16:00:00', 93.50, 172.00, 422.00, 61, 18, 14);
INSERT INTO tripbegin_flight VALUES (17, 'American Airlines', 'New York City', 'Boston', '2018-09-19', '12:30:00', 95.50, 203.00, 422.00, 79, 16, 4);
INSERT INTO tripbegin_flight VALUES (18, 'Delta Air Lines', 'Boston', 'Chicago', '2018-09-22', '12:30:00', 94.00, 187.50, 436.00, 78, 10, 12);
INSERT INTO tripbegin_flight VALUES (19, 'JetBlue', 'Boston', 'Chicago', '2018-09-22', '23:15:00', 93.00, 154.00, 410.50, 72, 16, 3);
INSERT INTO tripbegin_flight VALUES (20, 'Delta Air Lines', 'Chicago', 'New York City', '2018-09-27', '16:30:00', 93.50, 172.00, 422.00, 69, 19, 14);

INSERT INTO tripbegin_hotel VALUES (1, 254.99, 'West 46th St. & Broadway', 'New York City', 'NY Marriott Marquis');
INSERT INTO tripbegin_hotel VALUES (2, 202.00, 'East 94th St. & 2nd Ave.', 'New York City', 'Marmara Manhattan Hotel');
INSERT INTO tripbegin_hotel VALUES (3, 239.99, 'Gansevoort St. & 9th Ave.', 'New York City', 'Hotel Gansevoort');
INSERT INTO tripbegin_hotel VALUES (4, 150.00, '500 Commonwealth Ave.', 'Boston', 'Hotel Commonwealth');
INSERT INTO tripbegin_hotel VALUES (5, 138.99, '107 Merrimac St.', 'Boston', 'The Boxer');
INSERT INTO tripbegin_hotel VALUES (6, 95.99, '50 Park Plaza', 'Boston', 'Boston Park Plaza');
INSERT INTO tripbegin_hotel VALUES (7, 216.00, '510 Atlantic Ave.', 'Boston', 'InterContinental Boston');
INSERT INTO tripbegin_hotel VALUES (8, 101.00, 'West 8th St. & South Olive St.', 'Los Angeles', 'Freehand Los Angeles');
INSERT INTO tripbegin_hotel VALUES (9, 192.99, '7th St. & South Olive St.', 'Los Angeles', 'The Los Angeles Athletic Club');
INSERT INTO tripbegin_hotel VALUES (10, 136.00, '6th St. & South Westlake Ave.', 'Los Angeles', 'Holiday Inn Express & Suites Los Angeles');

