#
# TABLE STRUCTURE FOR: oneRANDOMgeek
#

DROP TABLE IF EXISTS `oneRANDOMgeek`;

CREATE TABLE `oneRANDOMgeek` (
  `RandomINTData` int(12) unsigned NOT NULL,
  `RandomCHARData` char(12) NOT NULL,
  KEY `RandomINTData` (`RandomINTData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (0, 'aut');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (705795799, 'nulla');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (3442034, 'impedit');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (980, 'velit');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (254, 'est');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (335226104, 'repudiandae');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (6, 'ab');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (2335061, 'eligendi');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (6742, 'vitae');
INSERT INTO `oneRANDOMgeek` (`RandomINTData`, `RandomCHARData`) VALUES (161202, 'dolorum');


#
# TABLE STRUCTURE FOR: twoRANDOMgeek
#

DROP TABLE IF EXISTS `twoRANDOMgeek`;

CREATE TABLE `twoRANDOMgeek` (
  `EvenMoreRandomINTData` int(10) unsigned NOT NULL,
  `EvenMoreRandomCHARData` varchar(10) NOT NULL,
  KEY `EvenMoreRandomCHARData` (`EvenMoreRandomCHARData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (8861, 'aut');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (476235687, 'iure');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (3881, 'repellendu');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (78, 'ut');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (85, 'delectus');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (223, 'et');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (398, 'ab');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (7, 'consequatu');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (0, 'voluptas');
INSERT INTO `twoRANDOMgeek` (`EvenMoreRandomINTData`, `EvenMoreRandomCHARData`) VALUES (6425648, 'assumenda');

