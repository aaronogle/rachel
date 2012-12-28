-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2012 at 01:47 PM
-- Server version: 5.1.63
-- PHP Version: 5.3.5-1ubuntu7.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Rachel`
--
CREATE DATABASE `Rachel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Rachel`;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Type` int(2) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`ID`, `Name`, `Description`, `Location`, `Type`, `Icon`) VALUES
(27, 'PBS Kids', '', 'http://pbskids.org/', 2, 'button_pbskids.png'),
(28, 'Cartoon Network', '', 'http://cartoonnetwork.com', 2, 'button_cartoonnetwork.png'),
(29, 'Dora the Explorer', '', 'http://www.nickjr.com/kids/dora-the-explorer/', 2, 'button_dora.png'),
(30, 'Blues Clues', '', 'http://www.nickjr.com/kids/blues-clues/', 2, 'button_bluesclues.png'),
(31, 'Backyardigans', 'Backyardigans', 'http://www.nickjr.com/kids/the-backyardigans/', 2, 'button_backyardigans.png'),
(32, 'Bob the Builder', '', 'http://bobthebuilder.com', 2, 'button_bobthebuilder.png'),
(33, 'Max and ruby', '', 'http://www.nickjr.com/kids/max-and-ruby/', 2, 'button_maxandruby.png'),
(34, 'Super Why', '', 'http://pbskids.org/kids/superwhy/', 2, 'button_superwhy.png'),
(35, 'Clifford', '', 'http://pbskids.com/clifford/', 2, 'button_clifford.png'),
(36, 'Sesame Street', '', 'http://pbskids.org/kids/sesame/', 2, 'button_sesamestreet.png'),
(37, 'Curious George', '', 'http://pbskids.org/kids/curiousgeorge/', 2, 'button_curiousgeorge.png'),
(38, 'Play with Maisy', '', 'http://www.maisyfun.com/forchildren/playwithmaisy.php', 2, 'button_maisy.png'),
(39, 'Thomas and Friends', '', 'http://www.thomasandfriends.com/usa/Thomas.mvc/Home', 2, 'button_thomas.png'),
(40, 'Veggietales', '', 'http://www.veggietales.com/games', 2, 'button_veggietales.png'),
(44, 'Marvel', '', 'http://disney.go.com/games/#/games/marvel/', 2, 'button_marvel.png'),
(45, 'Disney Princess', '', 'http://disney.go.com/princess/', 2, 'button_princesses.png'),
(46, 'Tumble Books', '', 'http://www.tumblebooks.com/library/auto_login.asp?U=rollinghillscl&P=libra', 2, 'button_tumblebooks.png'),
(47, 'Winnie the Pooh', '', 'http://disney.go.com/pooh/games-and-activities/', 2, 'button_winnie.png'),
(48, 'Magic School Bus', '', 'http://www.scholastic.com/magicschoolbus/games/index.htm', 2, 'button_magicschool.png'),
(100, 'ispy', '', 'http://www.scholastic.com/ispy/games/index.htm', 2, 'button_ispy.png');

-- --------------------------------------------------------

--
-- Table structure for table `sitesallowed`
--

CREATE TABLE IF NOT EXISTS `sitesallowed` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `sitesallowed`
--

INSERT INTO `sitesallowed` (`id`, `url`) VALUES
(1, '217.64.234.247'),
(2, 'ad.doubleclick.net'),
(3, 'a.dolimg.com'),
(4, 'adsatt.disney.starwave.com'),
(5, 'ads.bluelithium.com'),
(6, 'ads.cartoonnetwork.com'),
(7, 'ads.pointroll.com'),
(8, 'aglobal.go.com'),
(9, 'ahome.disney.go.com'),
(10, 'ajax.googleapis.com'),
(11, 'apps.dxd.go.com'),
(12, 'BEA4.v.fwmrm.net'),
(13, 'bobthebuilder.com'),
(14, 'b.scorecardresearch.com'),
(15, 'bs.serving-sys.com'),
(16, 'btg.mtvnservices.com'),
(17, 'cartoonnetwork.com'),
(18, 'cdn.adimages.go.com'),
(19, 'cdn.tumblebooks.com'),
(20, 'cmls.overture.com'),
(21, 'cm.nickjr.overture.com'),
(22, 'connect.facebook.net'),
(23, 'content.dl-rms.com'),
(24, 'db0.net-filter.com'),
(25, 'disney.go.com'),
(26, 'dnn506yrbagrg.cloudfront.net'),
(27, 'dol.vad.go.com'),
(28, 'eabd3b6ed1.static.crowdscience.com'),
(29, 'edge.quantserve.com'),
(30, 'feeds.theplatform.com'),
(31, 'games.mtvnservices.com'),
(32, 'gdyn.cartoonnetwork.com'),
(33, 'globalregsession.go.com'),
(34, 'home.disney.go.com'),
(35, 'i.cartoonnetwork.com'),
(36, 'i.cdn.turner.com'),
(37, 'images.nickjr.com'),
(38, 'log.go.com'),
(39, 'media.mtvnservices.com'),
(40, 'metrics.bobthebuilder.com'),
(41, 'metrics.thomasandfriends.com'),
(42, 'metrics.turner.com'),
(43, 'mmm.nickjr.com'),
(44, 'n4403ad.doubleclick.net'),
(45, 'ns-hoover.spg.more.net:8080'),
(46, 'partner.googleadservices.com'),
(47, 'pbskids.com'),
(48, 'pbskids.org'),
(49, 'ping.crowdscience.com'),
(50, 'pixel.quantserve.com'),
(51, 'pixel.vmm-satellite2.com'),
(52, 'platform.twitter.com'),
(53, 'quiz.disney.go.com'),
(54, 'secure-us.imrworldwide.com'),
(55, 'segment-pixel.invitemedia.com'),
(56, 'static.nickjr.com'),
(57, 'stats.scholastic.com'),
(58, 'tags.crwdcntrl.net'),
(59, 'tredir.go.com'),
(60, 'vianickjr.112.2o7.net'),
(61, 'view.atdmt.com'),
(62, 'w88.go.com'),
(63, 'wdig.vo.llnwd.net'),
(64, 'www.bobthebuilder.com'),
(65, 'www.cartoonnetwork.com'),
(66, 'www.google-analytics.com'),
(67, 'www.hitentertainment.com'),
(68, 'www.maisyfun.com'),
(69, 'www.nickjr.com'),
(70, 'www.scholastic.com'),
(71, 'www-tc.pbskids.org'),
(72, 'www.thomasandfriends.com'),
(73, 'www.tumblebooks.com'),
(74, 'www.veggietales.com'),
(75, '10.10.10.48');
