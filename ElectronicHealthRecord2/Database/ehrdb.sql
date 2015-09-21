-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2015 at 06:28 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ehrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `username` varchar(45) CHARACTER SET greek COLLATE greek_bin NOT NULL,
  `password` varchar(45) CHARACTER SET greek COLLATE greek_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`username`, `password`) VALUES
('giokats', '1899');

-- --------------------------------------------------------

--
-- Table structure for table `ferritin`
--

CREATE TABLE IF NOT EXISTS `ferritin` (
  `amka` double NOT NULL,
  `sex` varchar(45) CHARACTER SET greek COLLATE greek_bin NOT NULL,
  `level` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `ferritin`
--

INSERT INTO `ferritin` (`amka`, `sex`, `level`, `date`) VALUES
(222222222, 'αντρας', 40.5, '7/8/2015'),
(1111111111, 'Female', 10.3, '6/8/2015'),
(1122336655, 'Male', 100.5, '25/8/2015'),
(7744112255, '?????', 9.5, '30/8/2014'),
(44444444444, 'Female', 20.8, '23/8/2015');

-- --------------------------------------------------------

--
-- Table structure for table `folicacid`
--

CREATE TABLE IF NOT EXISTS `folicacid` (
  `amka` int(11) NOT NULL,
  `level` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `folicacid`
--

INSERT INTO `folicacid` (`amka`, `level`, `date`) VALUES
(2147483647, 6.1, '4/8/2015');

-- --------------------------------------------------------

--
-- Table structure for table `fullbloodcount`
--

CREATE TABLE IF NOT EXISTS `fullbloodcount` (
  `amka` int(10) NOT NULL,
  `wbc` double NOT NULL,
  `rbc` double NOT NULL,
  `hb` double NOT NULL,
  `hct` double NOT NULL,
  `mcv` double NOT NULL,
  `mvh` double NOT NULL,
  `plt` double NOT NULL,
  `mpv` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `fullbloodcount`
--

INSERT INTO `fullbloodcount` (`amka`, `wbc`, `rbc`, `hb`, `hct`, `mcv`, `mvh`, `plt`, `mpv`, `date`) VALUES
(123456789, 23, 56, 54, 21, 456, 82, 21, 2132, '24/7/2015'),
(2147483647, 65, 41.3, 58.6, 8.1, 5.6, 89.3, 4.2, 9.7, '4/8/2015');

-- --------------------------------------------------------

--
-- Table structure for table `haemoglobin_electrophoresis`
--

CREATE TABLE IF NOT EXISTS `haemoglobin_electrophoresis` (
  `amka` int(11) NOT NULL,
  `level` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `haemoglobin_electrophoresis`
--

INSERT INTO `haemoglobin_electrophoresis` (`amka`, `level`, `date`) VALUES
(2147483647, 98.5, '4/8/2015');

-- --------------------------------------------------------

--
-- Table structure for table `interpretation_coobs`
--

CREATE TABLE IF NOT EXISTS `interpretation_coobs` (
  `amka` int(11) NOT NULL,
  `result` varchar(45) CHARACTER SET latin1 NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- --------------------------------------------------------

--
-- Table structure for table `iron`
--

CREATE TABLE IF NOT EXISTS `iron` (
  `amka` int(11) NOT NULL,
  `sex` varchar(45) CHARACTER SET latin1 NOT NULL,
  `level` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `iron`
--

INSERT INTO `iron` (`amka`, `sex`, `level`, `date`) VALUES
(222222222, 'Female', 5.6, '24/8/2015'),
(1111111111, '??????', 54, '3/8/2015'),
(2147483647, '???????', 3654, '25/7/2015');

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_applications`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_applications` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_aspnet_applications`
--

INSERT INTO `my_aspnet_applications` (`id`, `name`, `description`) VALUES
(1, '/', 'MySQL Role provider');

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_membership`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_membership` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint(4) DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='2';

--
-- Dumping data for table `my_aspnet_membership`
--

INSERT INTO `my_aspnet_membership` (`userId`, `Email`, `Comment`, `Password`, `PasswordKey`, `PasswordFormat`, `PasswordQuestion`, `PasswordAnswer`, `IsApproved`, `LastActivityDate`, `LastLoginDate`, `LastPasswordChangedDate`, `CreationDate`, `IsLockedOut`, `LastLockedOutDate`, `FailedPasswordAttemptCount`, `FailedPasswordAttemptWindowStart`, `FailedPasswordAnswerAttemptCount`, `FailedPasswordAnswerAttemptWindowStart`) VALUES
(1, 'doctor1@gmail.com', '', 'avujhBAugCpqV9LDHEtFMHJDByLBPeXgHtN37HlJvNg=', 'X4mgZ3luiqHJmN+O6lPk6g==', 1, NULL, NULL, 1, '2015-08-04 17:02:39', '2015-08-04 17:02:39', '2015-07-20 17:51:34', '2015-07-20 17:51:34', 0, '2015-07-20 17:51:34', 0, '2015-07-20 17:51:34', 0, '2015-07-20 17:51:34'),
(2, 'patience1@gmail.com', '', 'ddCtxQ8xRBq6Fl5nVK4fBk+4XqsX6IHe+SrNn9szC2A=', 'bfJT8R9+W2oIl7a1SP4EpQ==', 1, NULL, NULL, 1, '2015-07-29 10:37:16', '2015-07-29 10:37:16', '2015-07-29 10:37:16', '2015-07-29 10:37:16', 0, '2015-07-29 10:37:16', 0, '2015-07-29 10:37:16', 0, '2015-07-29 10:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_paths`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_paths` (
  `applicationId` int(11) NOT NULL,
  `pathId` varchar(36) NOT NULL,
  `path` varchar(256) NOT NULL,
  `loweredPath` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_personalizationallusers`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_personalizationallusers` (
  `pathId` varchar(36) NOT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_personalizationperuser`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_personalizationperuser` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL,
  `pathId` varchar(36) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_profiles`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_profiles` (
  `userId` int(11) NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_roles`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_roles` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `my_aspnet_roles`
--

INSERT INTO `my_aspnet_roles` (`id`, `applicationId`, `name`) VALUES
(1, 1, 'doctor'),
(2, 1, 'patience');

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_schemaversion`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_schemaversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

INSERT INTO `my_aspnet_schemaversion` (`version`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int(11) NOT NULL,
  `ApplicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_sessions`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_sessions` (
  `SessionId` varchar(191) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int(11) NOT NULL,
  `Timeout` int(11) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_sitemap`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_sitemap` (
  `Id` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Url` varchar(512) DEFAULT NULL,
  `Roles` varchar(1000) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_users`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_users` (
  `id` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_aspnet_users`
--

INSERT INTO `my_aspnet_users` (`id`, `applicationId`, `name`, `isAnonymous`, `lastActivityDate`) VALUES
(1, 1, 'doctor1', 0, '2015-08-04 17:02:39'),
(2, 1, 'patience1', 0, '2015-07-29 10:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `my_aspnet_usersinroles`
--

CREATE TABLE IF NOT EXISTS `my_aspnet_usersinroles` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

INSERT INTO `my_aspnet_usersinroles` (`userId`, `roleId`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `patience`
--

CREATE TABLE IF NOT EXISTS `patience` (
  `amka` double NOT NULL,
  `fName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `lName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `fatherName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `motherName` varchar(45) CHARACTER SET latin1 NOT NULL,
  `tel1` int(11) NOT NULL,
  `tel2` int(11) DEFAULT NULL,
  `address` varchar(45) CHARACTER SET latin1 NOT NULL,
  `num` int(11) NOT NULL,
  `area` varchar(45) CHARACTER SET latin1 NOT NULL,
  `city` varchar(45) CHARACTER SET latin1 NOT NULL,
  `postcode` varchar(45) CHARACTER SET latin1 NOT NULL,
  `age` varchar(45) CHARACTER SET latin1 NOT NULL,
  `job` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `patience`
--

INSERT INTO `patience` (`amka`, `fName`, `lName`, `fatherName`, `motherName`, `tel1`, `tel2`, `address`, `num`, `area`, `city`, `postcode`, `age`, `job`) VALUES
(222222222, 'Giwrgos', 'Katsikis', 'Kleanthis', 'Popi', 2107845128, 694255897, 'Kleioys', 69, 'Holargos', 'Athina', '15561', '21', 'Foititis'),
(1111111111, 'Pavlos', 'Korinthiou', 'Kostas', 'Pinelopi', 2105698742, 0, 'Xanthipou', 15, 'Holargos', 'Athina', '15561', '35', 'Syntaxiouxos'),
(1122336655, 'Giannis', 'Alefantos', 'Panagiwths', 'Korina', 2106512397, NULL, 'Papaflessa', 23, 'Nikaia', 'Athina', '69854', '36', 'Mhxanikos'),
(7744112255, 'Kwstas', 'Mpoukas', 'Dimitris', 'Anna', 2106985423, NULL, 'Pinelopis', 74, 'Kaminia', 'Athina', '22222', '27', 'Developer'),
(44444444444, 'Pavlos', 'Laikitsis', 'Kwstas', 'Popi', 2106598745, 2147483647, 'Exarxeiwn', 56, 'Exarxeia', 'Athina', '56897', '23', 'Foititis');

-- --------------------------------------------------------

--
-- Table structure for table `vitamineb12`
--

CREATE TABLE IF NOT EXISTS `vitamineb12` (
  `amka` int(11) NOT NULL,
  `level` double NOT NULL,
  `date` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=greek;

--
-- Dumping data for table `vitamineb12`
--

INSERT INTO `vitamineb12` (`amka`, `level`, `date`) VALUES
(67456, 546, '29/7/2015'),
(2147483647, 8.1, '4/8/2015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`username`,`password`);

--
-- Indexes for table `ferritin`
--
ALTER TABLE `ferritin`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- Indexes for table `folicacid`
--
ALTER TABLE `folicacid`
  ADD PRIMARY KEY (`amka`);

--
-- Indexes for table `fullbloodcount`
--
ALTER TABLE `fullbloodcount`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- Indexes for table `haemoglobin_electrophoresis`
--
ALTER TABLE `haemoglobin_electrophoresis`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- Indexes for table `interpretation_coobs`
--
ALTER TABLE `interpretation_coobs`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- Indexes for table `iron`
--
ALTER TABLE `iron`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- Indexes for table `my_aspnet_applications`
--
ALTER TABLE `my_aspnet_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_aspnet_membership`
--
ALTER TABLE `my_aspnet_membership`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `my_aspnet_paths`
--
ALTER TABLE `my_aspnet_paths`
  ADD PRIMARY KEY (`pathId`);

--
-- Indexes for table `my_aspnet_personalizationallusers`
--
ALTER TABLE `my_aspnet_personalizationallusers`
  ADD PRIMARY KEY (`pathId`);

--
-- Indexes for table `my_aspnet_personalizationperuser`
--
ALTER TABLE `my_aspnet_personalizationperuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_aspnet_profiles`
--
ALTER TABLE `my_aspnet_profiles`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `my_aspnet_roles`
--
ALTER TABLE `my_aspnet_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_aspnet_sessioncleanup`
--
ALTER TABLE `my_aspnet_sessioncleanup`
  ADD PRIMARY KEY (`ApplicationId`);

--
-- Indexes for table `my_aspnet_sessions`
--
ALTER TABLE `my_aspnet_sessions`
  ADD PRIMARY KEY (`SessionId`,`ApplicationId`);

--
-- Indexes for table `my_aspnet_sitemap`
--
ALTER TABLE `my_aspnet_sitemap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `my_aspnet_users`
--
ALTER TABLE `my_aspnet_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_aspnet_usersinroles`
--
ALTER TABLE `my_aspnet_usersinroles`
  ADD PRIMARY KEY (`userId`,`roleId`);

--
-- Indexes for table `patience`
--
ALTER TABLE `patience`
  ADD PRIMARY KEY (`amka`);

--
-- Indexes for table `vitamineb12`
--
ALTER TABLE `vitamineb12`
  ADD PRIMARY KEY (`amka`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_aspnet_applications`
--
ALTER TABLE `my_aspnet_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `my_aspnet_personalizationperuser`
--
ALTER TABLE `my_aspnet_personalizationperuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `my_aspnet_roles`
--
ALTER TABLE `my_aspnet_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `my_aspnet_sitemap`
--
ALTER TABLE `my_aspnet_sitemap`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `my_aspnet_users`
--
ALTER TABLE `my_aspnet_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
