-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 10:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_flashcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `flashcards`
--

CREATE TABLE `flashcards` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flashcards`
--

INSERT INTO `flashcards` (`id`, `student_id`, `question`, `answer`, `subject`) VALUES
(1, 'stu001', 'What is Newton\'s Second Law?', 'Force equals mass times acceleration', 'Physics'),
(2, 'stu002', 'What is photosynthesis?', 'A process used by plants to convert light into energy', 'Biology'),
(3, 'stu002', 'What is photosynthesis?', 'A process used by plants to convert light into energy', 'Biology'),
(4, 'stu001', 'What is the unit of force?', 'Newton', 'Physics'),
(5, 'stu001', 'What is the function of mitochondria?', 'It is the powerhouse of the cell', 'Biology'),
(6, 'stu001', 'What is an acid-base reaction?', 'A reaction where acid and base neutralize each other', 'Chemistry'),
(7, 'stu001', 'What is the Pythagorean theorem?', 'In a right-angled triangle, a² + b² = c²', 'General'),
(8, 'stu001', 'What is the longest river in the world?', 'The Nile River', 'Geography'),
(9, 'stu001', 'Who was the first President of the USA?', 'George Washington', 'History');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flashcards`
--
ALTER TABLE `flashcards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flashcards`
--
ALTER TABLE `flashcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
