-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 06:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjezba16`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AG', 'Antigua and Barbuda'),
(7, 'AR', 'Argentina'),
(8, 'AM', 'Armenia'),
(9, 'AU', 'Australia'),
(10, 'AT', 'Austria'),
(11, 'AZ', 'Azerbaijan'),
(12, 'BS', 'Bahamas'),
(13, 'BH', 'Bahrain'),
(14, 'BD', 'Bangladesh'),
(15, 'BB', 'Barbados'),
(16, 'BY', 'Belarus'),
(17, 'BE', 'Belgium'),
(18, 'BZ', 'Belize'),
(19, 'BJ', 'Benin'),
(20, 'BT', 'Bhutan'),
(21, 'BO', 'Bolivia'),
(22, 'BA', 'Bosnia and Herzegovina'),
(23, 'BW', 'Botswana'),
(24, 'BR', 'Brazil'),
(25, 'BN', 'Brunei'),
(26, 'BG', 'Bulgaria'),
(27, 'BF', 'Burkina Faso'),
(28, 'BI', 'Burundi'),
(29, 'CV', 'Cabo Verde'),
(30, 'KH', 'Cambodia'),
(31, 'CM', 'Cameroon'),
(32, 'CA', 'Canada'),
(33, 'CF', 'Central African Republic'),
(34, 'TD', 'Chad'),
(35, 'CL', 'Chile'),
(36, 'CN', 'China'),
(37, 'CO', 'Colombia'),
(38, 'KM', 'Comoros'),
(39, 'CG', 'Congo'),
(40, 'CD', 'Congo, Democratic Republic of the'),
(41, 'CR', 'Costa Rica'),
(42, 'CI', 'Côte d\'Ivoire'),
(43, 'HR', 'Croatia'),
(44, 'CU', 'Cuba'),
(45, 'CY', 'Cyprus'),
(46, 'CZ', 'Czechia'),
(47, 'DK', 'Denmark'),
(48, 'DJ', 'Djibouti'),
(49, 'DM', 'Dominica'),
(50, 'DO', 'Dominican Republic'),
(51, 'EC', 'Ecuador'),
(52, 'EG', 'Egypt'),
(53, 'SV', 'El Salvador'),
(54, 'GQ', 'Equatorial Guinea'),
(55, 'ER', 'Eritrea'),
(56, 'EE', 'Estonia'),
(57, 'SZ', 'Eswatini'),
(58, 'ET', 'Ethiopia'),
(59, 'FJ', 'Fiji'),
(60, 'FI', 'Finland'),
(61, 'FR', 'France'),
(62, 'GA', 'Gabon'),
(63, 'GM', 'Gambia'),
(64, 'GE', 'Georgia'),
(65, 'DE', 'Germany'),
(66, 'GH', 'Ghana'),
(67, 'GR', 'Greece'),
(68, 'GD', 'Grenada'),
(69, 'GT', 'Guatemala'),
(70, 'GN', 'Guinea'),
(71, 'GW', 'Guinea-Bissau'),
(72, 'GY', 'Guyana'),
(73, 'HT', 'Haiti'),
(74, 'HN', 'Honduras'),
(75, 'HU', 'Hungary'),
(76, 'IS', 'Iceland'),
(77, 'IN', 'India'),
(78, 'ID', 'Indonesia'),
(79, 'IR', 'Iran'),
(80, 'IQ', 'Iraq'),
(81, 'IE', 'Ireland'),
(82, 'IL', 'Israel'),
(83, 'IT', 'Italy'),
(84, 'JM', 'Jamaica'),
(85, 'JP', 'Japan'),
(86, 'JO', 'Jordan'),
(87, 'KZ', 'Kazakhstan'),
(88, 'KE', 'Kenya'),
(89, 'KI', 'Kiribati'),
(90, 'KP', 'Korea, Democratic People\'s Republic of'),
(91, 'KR', 'Korea, Republic of'),
(92, 'KW', 'Kuwait'),
(93, 'KG', 'Kyrgyzstan'),
(94, 'LA', 'Lao People\'s Democratic Republic'),
(95, 'LV', 'Latvia'),
(96, 'LB', 'Lebanon'),
(97, 'LS', 'Lesotho'),
(98, 'LR', 'Liberia'),
(99, 'LY', 'Libya'),
(100, 'LI', 'Liechtenstein'),
(101, 'LT', 'Lithuania'),
(102, 'LU', 'Luxembourg'),
(103, 'MG', 'Madagascar'),
(104, 'MW', 'Malawi'),
(105, 'MY', 'Malaysia'),
(106, 'MV', 'Maldives'),
(107, 'ML', 'Mali'),
(108, 'MT', 'Malta'),
(109, 'MH', 'Marshall Islands'),
(110, 'MR', 'Mauritania'),
(111, 'MU', 'Mauritius'),
(112, 'MX', 'Mexico'),
(113, 'FM', 'Micronesia'),
(114, 'MD', 'Moldova'),
(115, 'MC', 'Monaco'),
(116, 'MN', 'Mongolia'),
(117, 'ME', 'Montenegro'),
(118, 'MA', 'Morocco'),
(119, 'MZ', 'Mozambique'),
(120, 'MM', 'Myanmar'),
(121, 'NA', 'Namibia'),
(122, 'NR', 'Nauru'),
(123, 'NP', 'Nepal'),
(124, 'NL', 'Netherlands'),
(125, 'NZ', 'New Zealand'),
(126, 'NI', 'Nicaragua'),
(127, 'NE', 'Niger'),
(128, 'NG', 'Nigeria'),
(129, 'NO', 'Norway'),
(130, 'OM', 'Oman'),
(131, 'PK', 'Pakistan'),
(132, 'PW', 'Palau'),
(133, 'PS', 'Palestine, State of'),
(134, 'PA', 'Panama'),
(135, 'PG', 'Papua New Guinea'),
(136, 'PY', 'Paraguay'),
(137, 'PE', 'Peru'),
(138, 'PH', 'Philippines'),
(139, 'PL', 'Poland'),
(140, 'PT', 'Portugal'),
(141, 'QA', 'Qatar'),
(142, 'RO', 'Romania'),
(143, 'RU', 'Russian Federation'),
(144, 'RW', 'Rwanda'),
(145, 'KN', 'Saint Kitts and Nevis'),
(146, 'LC', 'Saint Lucia'),
(147, 'VC', 'Saint Vincent and the Grenadines'),
(148, 'WS', 'Samoa'),
(149, 'SM', 'San Marino'),
(150, 'ST', 'Sao Tome and Principe'),
(151, 'SA', 'Saudi Arabia'),
(152, 'SN', 'Senegal'),
(153, 'RS', 'Serbia'),
(154, 'SC', 'Seychelles'),
(155, 'SL', 'Sierra Leone'),
(156, 'SG', 'Singapore'),
(157, 'SK', 'Slovakia'),
(158, 'SI', 'Slovenia'),
(159, 'SB', 'Solomon Islands'),
(160, 'SO', 'Somalia'),
(161, 'ZA', 'South Africa'),
(162, 'ES', 'Spain'),
(163, 'LK', 'Sri Lanka'),
(164, 'SD', 'Sudan'),
(165, 'SR', 'Suriname'),
(166, 'SE', 'Sweden'),
(167, 'CH', 'Switzerland'),
(168, 'SY', 'Syrian Arab Republic'),
(169, 'TW', 'Taiwan'),
(170, 'TJ', 'Tajikistan'),
(171, 'TZ', 'Tanzania, United Republic of'),
(172, 'TH', 'Thailand'),
(173, 'TG', 'Togo'),
(174, 'TO', 'Tonga'),
(175, 'TT', 'Trinidad and Tobago'),
(176, 'TN', 'Tunisia'),
(177, 'TR', 'Turkey'),
(178, 'TM', 'Turkmenistan'),
(179, 'TV', 'Tuvalu'),
(180, 'UG', 'Uganda'),
(181, 'UA', 'Ukraine'),
(182, 'AE', 'United Arab Emirates'),
(183, 'GB', 'United Kingdom'),
(184, 'US', 'United States'),
(185, 'UY', 'Uruguay'),
(186, 'UZ', 'Uzbekistan'),
(187, 'VU', 'Vanuatu'),
(188, 'VA', 'Vatican City'),
(189, 'VE', 'Venezuela'),
(190, 'VN', 'Viet Nam'),
(191, 'YE', 'Yemen'),
(192, 'ZM', 'Zambia'),
(193, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `country_code`) VALUES
(2, 'test', 'test', 'test@gmail.com', 'test1', 'test', 'BR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_code` (`country_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
