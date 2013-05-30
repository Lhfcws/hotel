-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2013 at 05:30 PM
-- Server version: 5.5.31-0ubuntu0.12.10.1
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add city', 7, 'add_city'),
(20, 'Can change city', 7, 'change_city'),
(21, 'Can delete city', 7, 'delete_city'),
(22, 'Can add customer', 8, 'add_customer'),
(23, 'Can change customer', 8, 'change_customer'),
(24, 'Can delete customer', 8, 'delete_customer'),
(25, 'Can add hotel', 9, 'add_hotel'),
(26, 'Can change hotel', 9, 'change_hotel'),
(27, 'Can delete hotel', 9, 'delete_hotel'),
(28, 'Can add room', 10, 'add_room'),
(29, 'Can change room', 10, 'change_room'),
(30, 'Can delete room', 10, 'delete_room'),
(31, 'Can add reserve', 11, 'add_reserve'),
(32, 'Can change reserve', 11, 'change_reserve'),
(33, 'Can delete reserve', 11, 'delete_reserve');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'city', 'hotel', 'city'),
(8, 'customer', 'hotel', 'customer'),
(9, 'hotel', 'hotel', 'hotel'),
(10, 'room', 'hotel', 'room'),
(11, 'reserve', 'hotel', 'reserve');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_city`
--

CREATE TABLE IF NOT EXISTS `hotel_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `hotel_city`
--

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
(20, 'Shanghai'),
(21, 'Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_customer`
--

CREATE TABLE IF NOT EXISTS `hotel_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `hotel_customer`
--

INSERT INTO `hotel_customer` (`id`, `name`, `email`, `mobile`) VALUES
(1, 'Wu Wenjie', 'wwj@qq.com', '13800013800'),
(12, 'chenxuejia', 'sads@asd.com', '10213810223');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hotel`
--

CREATE TABLE IF NOT EXISTS `hotel_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `city_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_hotel_586a73b5` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `hotel_hotel`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `hotel_reserve`
--

CREATE TABLE IF NOT EXISTS `hotel_reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `nights` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `room_amount` int(11) NOT NULL,
  `adult_amount` int(11) NOT NULL,
  `children_amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_reserve_12366e04` (`customer_id`),
  KEY `hotel_reserve_27a8d263` (`hotel_id`),
  KEY `hotel_reserve_109d8a5f` (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hotel_reserve`
--

INSERT INTO `hotel_reserve` (`id`, `customer_id`, `hotel_id`, `room_id`, `check_in_date`, `check_out_date`, `nights`, `cost`, `room_amount`, `adult_amount`, `children_amount`) VALUES
(7, 12, 2, 3, '2013-05-31', '2013-06-01', 1, 300, 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE IF NOT EXISTS `hotel_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `roomtype` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  `wifi` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_room_27a8d263` (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `hotel_id`, `roomtype`, `price`, `wifi`) VALUES
(3, 2, 'Single Room', 300, 'yes'),
(4, 2, 'Double Room', 500, 'yes');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `hotel_hotel`
--
ALTER TABLE `hotel_hotel`
  ADD CONSTRAINT `city_id_refs_id_1da7d495` FOREIGN KEY (`city_id`) REFERENCES `hotel_city` (`id`);

--
-- Constraints for table `hotel_reserve`
--
ALTER TABLE `hotel_reserve`
  ADD CONSTRAINT `room_id_refs_id_21699adb` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`),
  ADD CONSTRAINT `customer_id_refs_id_fb5832c` FOREIGN KEY (`customer_id`) REFERENCES `hotel_customer` (`id`),
  ADD CONSTRAINT `hotel_id_refs_id_78a445df` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_hotel` (`id`);

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `hotel_id_refs_id_60e3f2ed` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_hotel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
