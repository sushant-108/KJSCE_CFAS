-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 12:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kjsce_cfas`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `employee_no` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `field` longtext NOT NULL,
  `experience` varchar(100) NOT NULL,
  `subject1` varchar(255) DEFAULT NULL,
  `subject2` varchar(255) DEFAULT NULL,
  `subject3` varchar(255) DEFAULT NULL,
  `subject1_id` int(11) DEFAULT NULL,
  `subject2_id` int(11) DEFAULT NULL,
  `subject3_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`employee_no`, `fname`, `lname`, `dob`, `email`, `pass`, `gender`, `qualification`, `field`, `experience`, `subject1`, `subject2`, `subject3`, `subject1_id`, `subject2_id`, `subject3_id`) VALUES
(1, 'Avinash', 'Chavan', '1965-10-01', 'avinash.chavan@somaiya.edu', 'aC123456', 'male', 'M.Phil', 'Mathematics', '25', 'AM-I', 'AM-II', '', 1, 6, 0),
(2, 'Srikanth ', 'Krishna', '1970-05-15', 'srikanth.krishna@somaiya.edu', 'a68eb55b33e76dc25912', 'male', 'Ph.D.', 'Chemistry', 'tentofifteen', 'EC', '', '', 2, 0, 0),
(3, 'Shivaji', 'Waghmare', '1965-06-20', 'shivaji.waghmare@somaiya.edu', '821421b04acd7679b779', 'male', 'M.Tech.', 'Electronics', 'fifteentotwenty', 'EEEE', '', '', 3, 0, 0),
(4, 'Ramananda', 'Ray', '1975-07-25', 'ramananda.raya@somaiya.edu', '3d32f9c9e314bc6887f3', 'male', 'M.Phil.', 'Engineering Drawing', 'tentofifteen', 'ED', '', '', 4, 0, 0),
(5, 'Ravi', 'Gomatam', '1960-08-30', 'ravi.gomatam@somaiya.edu', '89741efc8fd1573af318', 'male', 'M.Phil.', 'Workshop Engineering', 'fifteentotwenty', 'WS-I', '', '', 5, 0, 0),
(6, 'Vishnu', 'Gadasiya', '1980-06-18', 'vishnu.gadasiya@somaiya.edu', '9d6fe64a336727801770', 'male', 'Postdoc', 'Computer Engineering', 'tentofifteen', 'SE', 'DSIP', '', 19, 22, 0),
(7, 'Rahul', 'Patil', '1970-01-01', 'rahul.patil@somaiya.edu', '3bbedfabd2032d1871ca', 'male', 'Postdoc', 'Computer Engineering', 'fifteentotwenty', 'CN', 'IS', '', 20, 23, 0),
(8, 'Nivedita', 'Sirdesai', '1980-01-20', 'nivedita.sirdesai@somaiya.edu', '0d4449b753ec86fee47b', 'female', 'Ph.D.', 'Computer Engineering', 'tentofifteen', 'OS', 'AI', '', 21, 24, 0),
(9, 'Subala', 'Krishna', '1950-05-25', 'subala.krishna@somaiya.edu', '814da6a31bbc4413b5be', 'male', 'Ph.D.', 'Physics', 'morethantwenty', 'EP', 'EM', '', 7, 8, 0),
(10, 'Suresh', 'Sundvesha', '1980-12-21', 'suresh.sundvesha@somaiya.edu', '02536938b18fd032b3a3', 'male', 'M.Tech.', 'Mech', 'tentofifteen', 'WS-II', '', '', 9, 0, 0),
(11, 'Niranjan', 'Gupta', '1976-05-30', 'niranjan.gupta@somaiya.edu', '254fb67f941060a5f5ce', 'male', 'M.Phil.', 'Mathematics', 'fifteentotwenty', 'ITVC', 'PSOT', '', 10, 15, 0),
(12, 'Rushikesh', 'Patil', '1970-04-12', 'rushikesh.patil@somaiya.edu', '3bbedfabd2032d1871ca', 'male', 'Postdoc', 'Computer Engineering', 'fifteentotwenty', 'DS', 'OOPM', 'AOA', 11, 13, 16),
(13, 'Ankit', 'Nimbolkar', '1965-03-22', 'ankit.nimbolkar@somaiya.edu', 'bf7a2086f808fc336cdd', 'male', 'M.Tech.', 'Electronics Engineering', 'tentofifteen', 'COA', '', '', 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `q1` longtext DEFAULT NULL,
  `q2` longtext DEFAULT NULL,
  `q3` longtext DEFAULT NULL,
  `q4` longtext DEFAULT NULL,
  `q5` longtext DEFAULT NULL,
  `q6` longtext DEFAULT NULL,
  `q7` longtext DEFAULT NULL,
  `q8` longtext DEFAULT NULL,
  `q9` longtext DEFAULT NULL,
  `q10` longtext DEFAULT NULL,
  `q11` longtext DEFAULT NULL,
  `q12` longtext DEFAULT NULL,
  `q13` longtext DEFAULT NULL,
  `q14` longtext DEFAULT NULL,
  `q15` longtext DEFAULT NULL,
  `q16` longtext DEFAULT NULL,
  `q17` longtext DEFAULT NULL,
  `q18` longtext DEFAULT NULL,
  `q19` longtext DEFAULT NULL,
  `q20` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`subject_id`, `subject`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`) VALUES
(1, 'AM-I', '(CO1) The course helped you to understand and apply De-Moivre\'s theorem to solve problems involving Complex numbers.', '(CO1) The course helped you to solve problems involving Hyperbolic and Inverse Hyperbolic functions.', '(CO1) The course helped you to solve problems involving Logarithm of Complex numbers.', '(CO2) The course helped you to recognize different types of matrices with their properties and solve problems based on these properties.', '(CO2) The course made you familiar with the concept of rank of a matrix and different ways of finding rank of any matrix.', '(CO2) The course helped you to solve system of equations using concept of rank and numerical methods.', '(CO2) The course helped you to investigate the linear dependence and independence of vectors.', ' (CO3) The course helped you to find the Eigenvalues and Eigenvectors of a square matrix.', '(CO3) The course helped you to apply Cayley - Hamilton theorem to solve problems involving higher powers of a matrix.', '(CO3) The course familiarized you with the concept of diagonalisation of a square matrix and application of that to find functions of square matrices.', '(CO3) The course helped you to find minimal polynomial of a square matrix.', '(CO4) The course introduced the concept of Partial differentiation and helped you to solve several problems involving partial differentiation.', '(CO4) The course helped you to find partial derivatives of composite functions.', '(CO4) The course helped you to apply partial derivatives to find extreme values of a function of two variables.', ' (CO4) The course helped you to find Jacobian of a function using partial derivatives', '(CO5) The course helped you to solve problems involving homogeneous functions using Euler\'s theorem.', '(CO5) The course helped you to solve problems involving functions of homogeneous functions using corollaries of Euler\'s Theorem.', NULL, NULL, NULL),
(2, 'EC', 'Did you understand the uses of water and it\'s requirement ?', 'Did you understand the uses of water and it\'s requirement ?', 'Did you understand what are polymers and the types of polymers?', 'Did you understand what is spectroscopy?', 'Did you understand what are nanomaterials and where are they present?', 'Did you understand the use of energy?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'EEEE', 'Are you able to analyze resistive networks excited by a DC source using mesh and nodal analysis?', 'How well you are able to analyze resistive networks excited by a DC source using Thevenin\'s of Norton\'s theorems?', 'Are you able to analyze the steady state response of RLC and their series and parallel combinations excited by single phase AC source?', 'Are you able to understand P-N junction diodes and working of rectifier and filter circuits in mobile battery charger?', 'Are you able to understand the use of capacitor to improve the power factor in parallel RLC Circuit?', 'Can you draw phasor diagram of a transformer for various different loads?', 'Are you able to give advantages of PF improvement using parallel capacitor method?', 'Are you able to differentiate between inverting and non-inverting OPAMP circuit ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ED', 'CO1- I am able to visualize and draw the projections of lines and planes', 'CO2- I am able to visualize and draw orthographic and sectional views of any 3D object', 'CO3- I am able to visualize and draw isometric drawing', 'CO4- I am able to visualize and draw the projection of regular solid', 'QCO5- I am able to visualize and draw the lateral development of regular solids', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'WS-I', 'CO1-  At the end of successful completion of the course, I have understood how to build an object using different Fitting operations as per given specifications', 'CO2- At the end of successful completion of the course, I have understood how to develop an object using different carpentry operations as per given specifications', 'CO3-At the end of successful completion of the course, I have understood the use of Lathe machine for shaping objects by removal of metal', 'CO4-At the end of successful completion of the course, I have understood the process of PCB making, layout of house wiring, and electric arc welding', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'AM-II', ' (CO1) The course helped you to understand and solve different types of First Order First degree Differential Equations…', ' (CO1) The course helped you to solve different types of higher order differential equations.', '(CO1) The course helped you to solve problems involving applications of differential equations to solve Mechanical and Electrical problems.', '(CO2) The course helped you to find nth order derivatives of different types of algebraic and trigonometric functions.', '(CO2) The course made you familiar with the concept of Leibnitz Theorem to find nth derivative of different types of functions.', '(CO2) The course helped you to apply concept of Taylor\'s theorem and Maclaurin series to find series expansion of functions.', '(CO3) The course made you familiar with the concept of Gamma function and helped you to evaluate different types of integrals using Gamma function.', '(CO3) The course made you familiar with the concept of Beta function and helped you to evaluate different types of integrals using Beta function..', '(CO3) The course made you familiar with the concept of DUIS ( Differentiation under Integral Sign) and helped you to evaluate different types of integrals using it.', ' (CO4) The course helped you find length of a curve in Polar coordinates .', '(CO4) The course helped you find length of a curve in Cartesian coordinates .', ' (CO4) The course helped you find length of a Parametric curve.', ' (CO5) The course helped you to solve problems involving Double Integration in Cartesian and Polar coordinates.', '(CO5) The course helped you to solve problems involving Triple Integration in Cartesian, Spherical and Cylindrical coordinates..', '(CO5) The course helped you to apply concepts of Double and Triple Integration to find Area of a region , Mass of Lamina and Volume of solids.', NULL, NULL, NULL, NULL, NULL),
(7, 'EP', 'Did you Understand dieelctrics', 'Did you understand liquid crystals', 'Did you understand LASER Threshold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'EM', 'Did you understand how to calculate resultant of forces?', 'Did you understand Kinematics of rigid bodies?', 'Did you understand centroid?', 'Did you understand how to calculate center of mass?', 'Did you undrstand Kinetics of particles?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'WS-II', ' I can use various cutting tools, marking tools, and measuring tools while making a job in a fitting shop.', ' I can make the job as per the given drawing by using various bench work operations in the fitting shop.', 'I can read given product drawings and do various operations like marking, cutting, chiseling, etc. for making a wooden product', ' I can join various wooden pieces by using carpentry joints to make a wooden product.', ' I can read given product drawings and do various operations like marking, cutting, removal of burr, etc. for fabrication of welding products', ' I can join the metal pieces by the Arc welding method', ' I can design and fabricate the PCB circuit.', 'I can solder various components accurately and test the complete PCB circuit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ITVC', 'After studying the course, do you think you would be able Apply Different methods to find Laplace Transform and Inverse Laplace Transform of a function (theoretically?)', '\" After studying the course, do you think you would be able to Find Fourier series, Fourier Integral and Fourier Transform of functions.', 'After studying the course, do you think you would be able to Apply Different methods to find Z-Transform and Inverse Z- Transform of a function.', 'After studying the course, do you think you would be able toApply concepts of Gradient, curl and Divergence of a vector function to solve problems.', 'After studying the course, do you think you would be able toApply concepts of Vector Integration to solve related problems.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'DS', 'After studying the course, do you think you would be able to explain the data structures used in problem solving? (theoretically?).', ' After studying the course, do you think you would be able to explain the program that uses data structures for problem solving?', 'After studying the course, do you think you would be able to DESIGN solutions using linear and non-linear data structure like stack, queue, graph, tree, etc?', ' After studying the course, do you think you would be able to IMPLEMENT programming solutions using linear and non-linear data structure like stack, queue, graph, tree, etc?', 'After studying the course, do you think you would be able to DESIGN solutions using set, map and dictionary for specified problem definition?', ' After studying the course, do you think you would be able to IMPLEMENT programming solutions by using set, map and dictionary for specified problem definition?', 'After studying the course, do you think you would be able to demonstrate your skills in sorting(Hashing, sequential search) and searching(insertion, selection) methods ?', ' After studying the course, do you think you would be able to write programming solutions for sorting(Hashing, sequential search) and searching(insertion, selection) methods ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'COA', 'After studying the course, do you think you would be able Describe and define the structure of a computer with buses structure and detail working of the arithmetic logic unit and its sub modules', '\" After studying the course, have you Understand the Central processing unit with addressing modes and working of control unit in depth', 'After studying the course, were you able to Learn and evaluate memory organization and cache structure', 'After studying the course, were you able to Summarize Input output techniques and multiprocessor configurations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'OOPM', 'Will you be able yo describe the object oriented concepts and compare th object oriented methodology with procedural approach?', 'Will you be able to implement problem statements using java constructs?', 'Will you be able to analyze OOP concepsts like draw class diagram?', 'Will you be able to make use of interface,exceptions,multithreading and packages for problem solving?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'DSM', ' After studying the course, do you think you would be able to Use various mathematical notations, apply various proof techniques to solve real world problems', '\" After studying the course,were you able to Learn and apply core ideas of Set Theory, Relations & Functions', 'After studying the course, were you able to understand the Use of graphs and their types, to solve the practical examples', 'After studying the course, were you able to Understand the use of Algebraic Structures and lattice, to solve the problems', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'PSOT', 'After studying the course, do you think you would be able Apply concepts of correlation, regression for given bivariate data.', '\"After studying the course, do you think you would be able to Apply concepts of Binomial, Poisson, Exponential and Normal distribution to solve Engineering problems.', 'After studying the course, do you think you would be able to Apply Large sample test and small sample test to analyze collected data.', 'After studying the course, do you think you would be able to Apply concepts of Linear and Nonlinear programming methods to solve problems.', 'After studying the course, do you think you would be able to Apply the methods of single server limited queue and single server unlimited queue models to analyze and interpret the data.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'AOA', 'After studying the course, dou you think you would be able to Analyze the asymptotic running time and space complexity of algorithms.', 'After studying the course, do you think you would be able to Describe various algorithm design strategies to solve different problems and analyze complexity.', 'After studying the course, do you think you would be able to Develop string matching techniques', ' After studying the course, do you think you would be able to Describe the classes P, NP, and NP-Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'RDBMS', 'After studying the course,were you able to Understand the features of Relational database management systems.', '\"After studying the course, do you think you would be able toDevelop relational database design using the designed Entity-Relationship model.', 'After studying the course, do you think you would be able to Use SQL for Relational database creation, maintenance and query processing', 'After studying the course, do you think you would be able toUnderstand and analyze indexing, hashing, Query processing, query optimization, and Normalization of relational database.', 'After studying the course, do you think you would be able to Apply the transaction, concurrency and recovery techniquesa.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'TAC', 'After studying the course, do you think you would be able to Describe regular languages using Regular Expressions, Finite Automata, Nondeterministic Finite Automata, Mealy Machines, Moore Machines and its applications.', 'After studying the course, do you think you would be able to Write, simplify and normalize context free grammars and describe context free languages using context free grammar and push down automata', 'After studying the course, do you think you would be able to Design Turing Machines for various problems and its applications', ' After studying the course, do you think you would be able to Understand the concept of Un-decidability and Recursively Enumerable Languages.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'SE', '\"CO1 Understand the software development process and Estimate different types of resources for the given project..', '\"CO2 Analyze the software requirements and Model the defined problem with the help of UML diagram.\"', 'CO3 Prepare the System Design and Model.', 'CO4 Identify and manage configuration items and risks for the software', 'CO5 Test the given software for different test cases with proper test planning.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'CN', '\"CO1 Explain the fundamentals of the data communication networks, reference models,topologies, physical\"', '\"CO2 Demonstrate Data Link Layer, MAC layer technologies & protocols and implement the functionalities like error control, flow control.', '\"CO3 Demonstrate various network layer protocols and network design using IP addressing,forwarding, routing concepts.', '\"CO4 Demonstrate Transport layer concepts like socket, flow control, error control, congestion control, QoS.', '\"CO5 Describe various features and operations of application layer protocols such as Telnet,HTTP, DNS, SMTP.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'OS', '\"CO1 Identify the different system programs and their utility and Explain the fundamental concepts of operating system with extension to Unix and Mobile OS', 'CO2: Illustrate and analyze the Process, threads, process scheduling and thread scheduling.', '\"CO3: Describe the problems related to process concurrency and the different synchronization mechanisms available to solve them.', '\"CO4: Explain disk organization and file system structure with illustration of disk scheduling algorithms', 'CO5: Understand Storage management with allocation, segmentation & virtual memory concepts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'DSIP', '\"CO1: Interpret fundamentals of discrete time signals and systems and signal manipulation methods.', '\"CO2: Apply various spatial and frequency domain enhancement techniques for 1-D signals and 2-D images.', 'CO3: Analyze signals and images in frequency domain using various image transforms', 'CO4: Evaluate extracted analyzed information for synthesis of digital signals and images.', 'CO5: Design and develop applications based on 1-D & 2-D digital signals and images.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'IS', 'CO1: Explain various security goals, threats, vulnerabilities and controls.', 'CO2: Apply various cryptographic algorithms for software security', 'CO3: Identify and analyse web attacks', 'CO4: Illustrate and Compare network security mechanisms', 'CO5: Interpret legal and ethical issues in security', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'AI', 'CO1: Design AI solution with appropriate choice of agent architecture.', '\"CO2: Analyse and solve problems for goal based agent architecture (searching and planning algorithms).', '\"CO3: Represent and formulate the knowledge to solve the problems using various reasoning techniques', '\"CO4: Analyse applications of AI and understand planning & learning processes in advanced AI applications', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `faculty_no` int(11) NOT NULL,
  `subject_no` int(11) NOT NULL,
  `q1` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q2` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q3` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q4` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q5` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q6` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q7` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q8` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q9` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q10` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q11` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q12` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q13` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q14` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q15` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q16` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q17` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q18` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q19` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `q20` enum('strongly agree','agree','partially agree','disagree') DEFAULT NULL,
  `flag` tinyint(1) DEFAULT 0,
  `subject_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `student_no`, `faculty_no`, `subject_no`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `flag`, `subject_name`) VALUES
(1, 22001, 1, 1, 'strongly agree', 'agree', 'strongly agree', 'partially agree', 'agree', 'agree', 'strongly agree', 'agree', 'partially agree', 'disagree', 'agree', 'strongly agree', 'strongly agree', 'agree', 'strongly agree', 'disagree', 'disagree', NULL, NULL, NULL, 1, 'AM-I'),
(2, 22002, 1, 1, 'agree', 'strongly agree', 'agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'agree', 'partially agree', 'disagree', 'strongly agree', 'partially agree', 'agree', 'agree', 'partially agree', 'partially agree', 'partially agree', NULL, NULL, NULL, 1, 'AM-I'),
(3, 22003, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'AM-I'),
(4, 22005, 1, 1, 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', '', '', '', 1, 'AM-I'),
(5, 22005, 2, 2, 'strongly agree', 'strongly agree', 'agree', 'partially agree', 'agree', 'strongly agree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'EC'),
(6, 22005, 3, 3, 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'EEEE'),
(7, 22005, 4, 4, 'strongly agree', 'agree', 'partially agree', 'disagree', 'strongly agree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ED'),
(8, 22005, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'WS-I'),
(9, 22006, 1, 1, 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', NULL, NULL, NULL, 1, 'AM-I'),
(10, 22006, 2, 2, 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'EC'),
(11, 22006, 3, 3, 'agree', 'agree', 'agree', 'agree', 'agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'EEEE'),
(12, 22006, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'ED'),
(13, 22006, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'WS-I'),
(14, 22007, 1, 1, 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'agree', 'agree', 'agree', 'agree', 'partially agree', 'partially agree', 'partially agree', 'partially agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'agree', '', '', '', 1, 'AM-I'),
(15, 22007, 2, 2, 'strongly agree', 'agree', 'partially agree', 'strongly agree', 'agree', 'partially agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'EC'),
(16, 22007, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'EEEE'),
(17, 22007, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'ED'),
(18, 22007, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'WS-I'),
(19, 22008, 1, 1, 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'strongly agree', 'agree', 'agree', 'partially agree', 'partially agree', 'agree', 'partially agree', 'agree', 'partially agree', 'agree', '', '', '', 1, 'AM-I'),
(20, 22008, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'EC'),
(21, 22008, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'EEEE'),
(22, 22008, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'ED'),
(23, 22008, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'WS-I'),
(51, 20030, 6, 19, 'strongly agree', 'strongly agree', 'agree', 'partially agree', 'partially agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'SE'),
(52, 20030, 7, 20, 'strongly agree', 'strongly agree', 'agree', 'agree', 'partially agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CN'),
(53, 20030, 8, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'OS'),
(54, 19001, 6, 22, 'agree', 'agree', 'disagree', 'partially agree', 'strongly agree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'DSIP'),
(55, 19001, 7, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'IS'),
(56, 19001, 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `roll_no` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `year` varchar(3) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `subject1` varchar(255) DEFAULT NULL,
  `subject2` varchar(255) DEFAULT NULL,
  `subject3` varchar(255) DEFAULT NULL,
  `subject4` varchar(255) DEFAULT NULL,
  `subject5` varchar(255) DEFAULT NULL,
  `subject6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`roll_no`, `fname`, `lname`, `dob`, `email`, `pass`, `gender`, `year`, `semester`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`, `subject6`) VALUES
(19001, 'Rakesh', 'Ganapa', '2001-09-20', 'rakesh.ganapa@somaiya.edu', '89741efc8fd1573af318', 'male', 'TY', 6, 'DSIP', 'IS', 'AI', NULL, NULL, NULL),
(20003, 'Venkatesh', 'Gunake', '2002-10-10', 'venkatesh.gunake@somaiya.edu', 'vG123456', 'male', 'TY', 5, 'SE', 'SE Lab', 'CN', 'CN Lab', 'OS', 'OS Lab'),
(20004, 'Samadhan', 'Maske', '2002-11-01', 'samadhan.maske@somaiya.edu', 'sM123456', 'male', 'TY', 5, 'SE', 'SE Lab', 'CN', 'CN Lab', 'OS', 'OS Lab'),
(20008, 'Ravi', 'Shukla', '2004-10-10', 'ravi.shukla@somaiya.edu', '6c32b3c98615827c41db', 'male', 'TY', 5, 'SE', 'SE Lab', 'CN', 'CN Lab', 'OS', 'OS Lab'),
(20030, 'Satyam', 'Kumar', '2002-10-10', 'satyam.kumar@somaiya.edu', '814da6a31bbc4413b5be', 'male', 'TY', 5, 'SE', 'CN', 'OS', NULL, NULL, NULL),
(21001, 'Rahul', 'Gundre', '2003-10-01', 'rahul.gundre@somaiya.edu', 'rG123456', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21002, 'Amrish', 'Diwakar', '2003-09-01', 'amrish.diwakar@somaiya.edu', 'aD123456', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21003, 'Vignesh', 'Sallagiri', '2003-10-10', 'vignesh.sallagiri@somaiya.edu', 'vS123456', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21004, 'Aditya', 'Bhattad', '2003-11-08', 'aditya.bhattad@somaiya.edu', 'aB123456', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21008, 'Pran', 'Govinda', '2003-10-10', 'pran.govinda@somaiya.edu', 'a621ba36c420498b694a', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21009, 'Mayur', 'Deshmukh', '2003-10-07', 'mayur.deshmukh@somaiya.edu', '70c31ca82103f3c6e7d2', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21010, 'Jothika', 'Nair', '2003-03-06', 'jothika.nair@somaiya.edu', '2253975da0f4f71838a1', 'female', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(21080, 'test1', 'test1', '2003-09-20', 'test1.test1@somaiya.edu', '78d14911eab9b231ee80', 'male', 'SY', 3, 'ITVC', 'DS', 'COA', 'OOPM', 'DSM', NULL),
(22001, 'Rohit', 'Gupta', '2004-10-01', 'rohit.gupta@somaiya.edu', 'rG123456', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22002, 'Yuvraj', 'Zala', '2004-09-01', 'yuvraj.zala@somaiya.edu', 'yZ123456', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22003, 'Chaitanya', 'Pratosh', '2004-11-01', 'chaitanya.pratosh@somaiya.edu', 'cP123456', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22004, 'Bhargavaram', 'Krishnapur', '2004-10-01', 'bhargavaram.k@somaiya.edu', 'bK123456', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22005, 'Mohak', 'Wagh', '2004-10-18', 'mohak.wagh@somaiya.edu', 'e9606830dd11bd86836e', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22006, 'Pradip', 'Sharma', '2004-11-18', 'pradip.sharma@somaiya.edu', '09343fd239e85a24826b', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22007, 'Vivekanandu', 'Dandari', '2004-12-18', 'vivekanandu.dandari@somaiya.edu', 'fdbf4c2c1a95c817624c', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22008, 'Viraj', 'Gawade', '2004-11-18', 'viraj.gawade@somaiya.edu', '9d6fe64a336727801770', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL),
(22050, 'Shubham', 'Biyani', '2004-12-21', 'shubham.biyani@somaiya.edu', '1e0ef32059609376ab42', 'male', 'FY', 2, 'AM-II', 'EP', 'EM', 'WS-II', NULL, NULL),
(22080, 'Hare', 'Krishna', '2004-09-06', 'hare.krishna@somaiya.edu', '07e319b060c399665a5d', 'male', 'FY', 1, 'AM-I', 'EC', 'EEEE', 'ED', 'WS-I', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students_forms`
--

CREATE TABLE `students_forms` (
  `id` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `subject_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_forms`
--

INSERT INTO `students_forms` (`id`, `student_no`, `subject_no`) VALUES
(1, 22001, 1),
(2, 22001, 2),
(3, 22001, 3),
(4, 22001, 4),
(5, 22001, 5),
(6, 22002, 1),
(7, 22002, 2),
(8, 22002, 3),
(9, 22002, 4),
(10, 22002, 5),
(11, 22003, 1),
(12, 22003, 2),
(13, 22003, 3),
(14, 22003, 4),
(15, 22003, 5),
(16, 22004, 1),
(17, 22004, 2),
(18, 22004, 3),
(19, 22004, 4),
(20, 22004, 5),
(21, 22005, 1),
(22, 22005, 2),
(23, 22005, 3),
(24, 22005, 4),
(25, 22005, 5),
(26, 22006, 1),
(27, 22006, 2),
(28, 22006, 3),
(29, 22006, 4),
(30, 22006, 5),
(31, 22007, 1),
(32, 22007, 2),
(33, 22007, 3),
(34, 22007, 4),
(35, 22007, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`employee_no`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_no` (`student_no`),
  ADD KEY `faculty_no` (`faculty_no`),
  ADD KEY `subject_no` (`subject_no`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `students_forms`
--
ALTER TABLE `students_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_no` (`student_no`),
  ADD KEY `subject_no` (`subject_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `students_forms`
--
ALTER TABLE `students_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`student_no`) REFERENCES `students` (`roll_no`),
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`faculty_no`) REFERENCES `faculty` (`employee_no`),
  ADD CONSTRAINT `responses_ibfk_3` FOREIGN KEY (`subject_no`) REFERENCES `forms` (`subject_id`);

--
-- Constraints for table `students_forms`
--
ALTER TABLE `students_forms`
  ADD CONSTRAINT `students_forms_ibfk_1` FOREIGN KEY (`student_no`) REFERENCES `students` (`roll_no`),
  ADD CONSTRAINT `students_forms_ibfk_2` FOREIGN KEY (`subject_no`) REFERENCES `forms` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
