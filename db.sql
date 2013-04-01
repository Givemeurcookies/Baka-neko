-- Server version: 5.6.10
-- PHP Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `BlogPosts`
--

CREATE TABLE IF NOT EXISTS `BlogPosts` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_bin NOT NULL,
  `pubDate` date NOT NULL,
  `URL` varchar(255) COLLATE utf8_bin NOT NULL,
  `Content` mediumtext COLLATE utf8_bin NOT NULL,
  `Category` varchar(255) COLLATE utf8_bin DEFAULT 'Uncategorized',
  PRIMARY KEY (`id`),
  UNIQUE KEY `URL` (`URL`),
  KEY `Title` (`Title`),
  KEY `pubDate` (`pubDate`),
  KEY `Category` (`Category`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Introduction table for `BlogPosts`
--

INSERT INTO `BlogPosts` (`id`, `Title`, `pubDate`, `URL`, `Content`, `Category`) VALUES
(1, 'Happy coding!', '2013-04-01', 'happy-coding', 'Hello! Congratulations, if you see this message it means that the database is successfully connected and the scripts are (probably) running as they should. Right now this version is not perfect, it lacks a lot of features you''d expect from a CMS, it''s really really basic with PDO, prepared statements and a slightly flawed error handling. It does however have a login so far, but no registration (currently developing it) Thanks for downloading this from Github however and thanks for testing it, expanding it or taking it to your own use.', 'Uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `UserLogin`
--

CREATE TABLE IF NOT EXISTS `UserLogin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) COLLATE utf8_bin NOT NULL,
  `Pass` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Pass` (`Pass`),
  UNIQUE KEY `User` (`User`),
  KEY `User_2` (`User`),
  KEY `Pass_2` (`Pass`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Example table for `UserLogin`, it contains one example which you can log in with, the password is "Studios"
-- If you don't need it, you can just remove it.
--

INSERT INTO `UserLogin` (`id`, `User`, `Pass`) VALUES
(1, 'Ramen', 'sha256:2000:vlxs0/t72TDsTSeUs6mSne7fyz5WojAfYTg6X2aBc8/MbAfZwPhrFScUC/WIfDt1:TWYzs0GaDDh9wiYj9l7vmtKblHjiL+61/nt2P2X/t9WalLh+w3IHyAmA8+wpbiuIRb3MOneOy2JaFJZVPCFnFOJ6Bdxmi/bAvXOGbv/OdMapHKFazB1me/C8Wy/NWE8U1');
