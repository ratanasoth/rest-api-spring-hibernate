DROP TABLE IF EXISTS `stock`;
CREATE TABLE  `stock` (
  `STOCK_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STOCK_CODE` varchar(100) NOT NULL,
  `STOCK_NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`STOCK_ID`) USING BTREE,
  UNIQUE KEY `UNI_STOCK_NAME` (`STOCK_NAME`),
  UNIQUE KEY `UNI_STOCK_CODE` (`STOCK_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `stock_detail`;
CREATE TABLE  `stock_detail` (
 `STOCK_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `COMP_NAME` varchar(100) NOT NULL,
 `COMP_DESC` varchar(255) NOT NULL,
 `REMARK` varchar(255) NOT NULL,
 `LISTED_DATE` date NOT NULL,
 PRIMARY KEY (`STOCK_ID`) USING BTREE,
 CONSTRAINT `FK_STOCK_ID` FOREIGN KEY (`STOCK_ID`) REFERENCES `stock` (`STOCK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;