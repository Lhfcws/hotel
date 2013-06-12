
INSERT INTO `hotel_customer` (`id`, `name`, `email`, `mobile`) VALUES
(1, 'Wu Wenjie', 'wwj@qq.com', '13800013800'),
(2, 'chenxuejia', 'sads@asd.com', '10213810223');



INSERT INTO `hotel_city` (`id`, `name`) VALUES
(1, 'Beijing'),
(2, 'London'),
(3, 'New York'),
(4, 'Paris'),
(5, 'Washington DC'),
(6, 'Los Angles'),
(7, 'Seattle'),
(8, 'Hong Kong'),
(9, 'Guangzhou'),
(10, 'Macau'),
(11, 'Taipei'),
(12, 'Tokyo'),
(13, 'Cairo'),
(14, 'Berlin'),
(15, 'Mexico City'),
(16, 'Roma'),
(17, 'Kyoto'),
(18, 'Osaka'),
(19, 'Kobe'),
(20, 'Shanghai');

INSERT INTO `hotel_hotel` (`id`, `name`, `city_id`, `description`) VALUES
(1, 'Royal Plaza', 2, 'The spacious lobby of this hotel is distinguished by white Italian marble floors, a stained-glass dome and sweeping wrought-iron balustrades. The 24-hour restaurant, Carousel, offers fresh seafood, a sushi bar, a bakery, Asian and Western buffet counters, and a salad bar. Gourmet Carousel serves a variety of freshly baked pastries. Heat Ultralounge features a live band. The hotel features 10 meeting rooms. A 24-hour fitness centre, an rooftop pool, and a sauna provide recreation and relaxation. This smoke-free property offers practical amenities such as Town Car rentals and transportation to and from Changi International Airport. '),
(2, 'Langham Hotel', 1, 'On-site Ming Court serves signature Cantonese dishes and dim sum. This dining venue boasts contemporary design contrasted with ancient Han Dynasty pottery accents. Chuan Lounge is known for its five- element juices and teas and offers views of Victoria Harbor. Landscaped gardens offer pastoral settings for outdoor dining at The Place, where international buffets can accommodate up to 200 diners. '),
(3, 'Hilton Hotel', 2, 'Extra-person charges may apply and vary depending on hotel policy.  Government-issued photo identification and a credit card or cash deposit are required at check-in for incidental charges.  Special requests are subject to availability upon check-in and may incur additional charges. Special requests cannot be guaranteed. '),
(4, 'Sheraton Hotel', 3, 'Reservations are required for massage services and spa treatments. Reservations can be made by contacting the resort prior to arrival, using the contact information on the booking confirmation.'),
(5, 'Grant Plaza', 4, 'Unless otherwise indicated, the charges below are not included in the overall room price. If not included in the overall room price, they will be charged by the property at check-in or check-out. Charges can vary, for example, based on length of stay or the room you book.'),
(6, 'Crystal Palace', 5, 'On-site facilities include a 20-meter (65-foot) outdoor lap pool and a separate children''s pool. The hotel''s fitness center has free weights and a range of cardiovascular equipment with individual audio-visual systems. Guests can also use saunas and steam rooms, hot and cold plunge pools, and an aerobics studio (surcharge). Racquetball and squash courts and a golf driving range are located within three km (two miles) of the hotel, and jogging paths are within two blocks. The recreational activities listed below are available either on site or near the hotel; fees may apply.'),
(7, 'Shangri-la Hotel', 6, 'Lobby Lounge - Floor-to-ceiling windows overlook a garden with tropical fauna and fountains. Musicians perform on a raised fiber-optic stage. Specialty coffees, teas, snacks, and cocktails are served from mid-morning until late evening. Arthur''s Bar & Grill - A perfect place for social gatherings, this Manhattan-style bar and grill serves a variety of beverages from refreshing beers to signature cocktails and an extensive list of wines served by the glass, complemented by a selection of international and local cuisine. Lemon Garden 2Go - The design of this coffee area incorporates acid-treated copper, stainless steel, glass, and curved flooring with zebra ribs. A boat-shaped serving station offers drinks and snacks to eat on the premises or to take away. Open from early morning until mid-evening. Poolside Terrace - Canopied by sun umbrellas and surrounded by landscaped gardens, this poolside bar serves beverages, snacks, and local fare. Open from mid-morning until early evening.'),
(8, 'Mallisa Villa', 7, 'Good, simple and soft!'),
(9, 'Aston Villa', 8, 'We are encouraged in doing bad things. We''re not a hotel.'),
(10, 'Sawadika Restaurant', 9, 'Sa Wa Di Ka!! Welcome to Vietnam!! er... Thailand!!!'),
(11, 'Beijing Hotel', 1, 'Never ask anything!'),
(12, 'Diaoyutai Hotel', 1, 'You know this!');



INSERT INTO `hotel_room` (`id`, `hotel_id`, `roomtype`, `price`, `wifi`) VALUES
(1, 2, 'Single Room', 300, 'yes'),
(2, 2, 'Double Room', 500, 'yes');
