
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `docstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `docstore`;

CREATE TABLE IF NOT EXISTS `container` (
  `container_number` varchar(10) NOT NULL,
  `alt_id` text NOT NULL,
  `location_number` varchar(10) NOT NULL,
  `customer_id` text NOT NULL,
  `create_date` date NOT NULL,
  `last_accessed` datetime(6) NOT NULL,
  `next_access` date NOT NULL,
  `accessed_by` text NOT NULL,
  `destroy_date` date NOT NULL,
  `description` text NOT NULL,
  `sub_containers` text NOT NULL,
  `super_container` text NOT NULL,
  PRIMARY KEY (`container_number`),
  UNIQUE KEY `container_number` (`container_number`),
  UNIQUE KEY `container_number_2` (`container_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` varchar(10) NOT NULL,
  `company_name` text NOT NULL,
  `contact` text NOT NULL,
  `street_address` text NOT NULL,
  `city` text NOT NULL,
  `zip` text NOT NULL,
  `phone` text NOT NULL,
  `auth_users` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `location` (
  `location_number` varchar(10) NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`location_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `work_order` (
  `wo_number` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(10) NOT NULL,
  `origin_location` text NOT NULL,
  `destination_location` text NOT NULL,
  `datetime_created` datetime(6) NOT NULL,
  `created_by` text NOT NULL,
  `priority` text NOT NULL,
  `datetime_delivered` datetime(6) NOT NULL,
  `delivered_by` text NOT NULL,
  `containers` text NOT NULL,
  PRIMARY KEY (`wo_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;
