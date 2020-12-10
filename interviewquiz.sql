-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 11:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interviewquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `description`) VALUES
(1, 'Infosys', 'Infosys Limited, is an Indian multinational corporation that\n provides business consulting, information technology and\n outsourcing services. The company is headquartered in \nBangalore, Karnataka, India.'),
(2, 'Tata Consultancy Services', 'Tata Consultancy Services Limited is an Indian multinational\n information technology services and consulting company \nheadquartered in Mumbai, Maharashtra, India. It is a \nsubsidiary of the Tata Group and operates in 149 locations\n across 46 countries. TC'),
(3, 'Cape Gemini', 'Capgemini SE is a French multinational corporation that \nprovides consulting, technology, professional, and \noutsourcing services. It is headquartered in Paris, France. \nCapgemini has over 270,000 employees in over 50 \ncountries, of whom nearly 120,000 ar'),
(4, 'Xyzzz', 'Software company'),
(5, 'Cognizant', 'Xyzzz'),
(6, 'Cognicant', 'Awesome Company!'),
(7, 'Hello Bullshit', 'hello there');

-- --------------------------------------------------------

--
-- Table structure for table `company_student`
--

CREATE TABLE `company_student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `technical_marks` varchar(30) DEFAULT NULL,
  `logical_marks` varchar(30) DEFAULT NULL,
  `engProf_marks` varchar(30) DEFAULT NULL,
  `situation_marks` varchar(30) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_student`
--

INSERT INTO `company_student` (`id`, `student_id`, `company_id`, `technical_marks`, `logical_marks`, `engProf_marks`, `situation_marks`, `total`) VALUES
(1, '19101A0090', 1, '10', '9', '9', '10', '38'),
(2, '19101A0091', 1, '10', '9', '8', '10', '37'),
(3, '19101A0093', 1, '10', '10', '10', '9', '39'),
(4, '19101A0094', 1, '10', '10', '10', '10', '40'),
(5, '19101A0074', 1, '9', '8', '10', '8', '35'),
(6, '19101A0067', 1, '1', 'none', '1', '0', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `engprof_questions`
--

CREATE TABLE `engprof_questions` (
  `id` int(3) NOT NULL,
  `name` varchar(400) NOT NULL,
  `opt1` varchar(300) NOT NULL,
  `opt2` varchar(300) NOT NULL,
  `opt3` varchar(300) NOT NULL,
  `opt4` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `company_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engprof_questions`
--

INSERT INTO `engprof_questions` (`id`, `name`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `company_id`) VALUES
(2, 'there is some milk ---- the fridge	', 'in ', 'inside', 'on', 'above', 'in ', 1),
(3, 'She was hiding ----- the table', 'above ', 'below', 'under', 'beneath', 'under', 1),
(4, 'he plays the flute -----		', 'beautiful', 'beautifully', 'very beautiful ', 'beautiful', 'beautifully', 1),
(5, 'The cat jumped ---- the counter	', 'of', 'off', 'on', 'below', 'off', 1),
(6, 'She lost her ring ---- the beach', 'on', 'at', 'in', 'after', 'at', 1),
(7, 'They were sitting ---- the tree', 'on', 'in ', 'at', 'by', 'on', 1),
(8, 'I walked ---- the street	', 'on', 'above', 'down', 'in', 'down', 1),
(1, 'i have liked that song ---- 1999', 'since', 'from', 'of ', 'through', 'Option 3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logical_questions`
--

CREATE TABLE `logical_questions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `age`, `gender`) VALUES
(1, 'Bob', 25, 'M'),
(2, 'Jane', 20, 'F'),
(3, 'Jack', 30, 'M'),
(4, 'Bill', 32, 'M'),
(5, 'Nick', 22, 'M'),
(6, 'Kathy', 18, 'F'),
(7, 'Steve', 36, 'M'),
(8, 'Anne', 25, 'F'),
(9, 'Kamal', 25, 'M'),
(10, 'Saman', 32, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `situational_questions`
--

CREATE TABLE `situational_questions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL DEFAULT '',
  `opt4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `situational_questions`
--

INSERT INTO `situational_questions` (`id`, `name`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `company_id`) VALUES
(1, 'q		', 'y', '6', '8', '6', 'y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollNo` varchar(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `division` varchar(10) NOT NULL,
  `year` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `cgpa` float NOT NULL,
  `setpassword` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollNo`, `fname`, `mname`, `lname`, `branch`, `division`, `year`, `email`, `gender`, `contact`, `cgpa`, `setpassword`, `confirmpassword`) VALUES
('1', 'J', 'J', 'J', 'J', 'J', '9', 'K', 'Male', '9', 9, '9', '9'),
('191011AA45', 'h', 'h', 'h', 'h', 'h', '6', 'h', 'Male', '8', 7, 'akshaya123', 'akshaya123'),
('19101A0013', 'Nikita', 'Brighumaharshi', 'Emberi', 'INFT', 'A', '2', 'nikita.emberi@vit.edu.in', 'Female', '123445678', 10, 'nikita', 'nikita'),
('19101A0014', 'Akshaya', '-', 'Mohan', 'INFT', 'A', '2', 'akshaya.mohan@vit.edu.in', 'Female', '7506464288', 10, 'admin', 'admin'),
('19101A0015', 'nidhi', '-', 'singh', 'inft', 'a', '2', 'niddhi.singh@vit.edu.in', 'Female', '123456789', 10, 'admin123', 'admin123'),
('19101A0018', 'Janhavi', 'Rajesh', 'Kambli', 'Extc', 'A', '2', 'janhavi.kambli@vit.edu.in', 'Female', '7129909989', 8, 'janhavi', 'janhavi'),
('19101A0020', 'Akshaau', 'k', 'k', 'k', 'k', '2', 'k', 'Male', '9', 9, 'akshaya123', 'akshaya123'),
('19101A0067', 'Akanksha', 'Ratnakar', 'Suvarna', 'CMPN', 'A', 'SE', 'akkusingh@hotmail.com', 'Male', '7045022043', 10, 'akku@123', 'akku@123'),
('19101A0073', 'Janhavi', 'Ashok', 'Kalwar', 'INFT', 'A', '2', 'janhavi.kalwar@vit.edu.in', 'Female', '9800909090', 10, 'janhavi', 'janhavi'),
('19101A0098', 'Jayanthi', '-', 'Mohan', 'INFT', 'A', '2', 'jayanthi.mohan@tcs.com', 'Female', '9833021622', 4, 'akshaya', 'akshaya'),
('8', 'u', 'u', 'u', 'u', 'h', '9', 'h', 'Male', '8', 8, 'AKSHAYA123', 'AKSHAYA123');

-- --------------------------------------------------------

--
-- Table structure for table `technical_questions`
--

CREATE TABLE `technical_questions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technical_questions`
--

INSERT INTO `technical_questions` (`id`, `name`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `company_id`) VALUES
(2, 'eee																																											', '1', '2', '3', '4', '1', 1),
(3, 'w', '1', '2', '3', '3', '1', 1),
(4, 'qqq	', '3', '4', '6', '6', '3', 1),
(5, '44	', '11', '55', '77', '77', '55', 1),
(6, '777	', '4', '5', '6', '7', '4', 1),
(7, 'www', '111', '222', '111', '222', '222', 1),
(8, 'eee	', '11', '22', '11', '22', '11', 1),
(9, '22', '111', 'ww', '11', '222', '111', 1),
(10, '333', 'qqq', 'ww', 'ee', 'rr', 'qqq', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_student`
--
ALTER TABLE `company_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id_ibfk_1` (`company_id`),
  ADD KEY `student_id_ibfk_2` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_student`
--
ALTER TABLE `company_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
