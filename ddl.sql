DROP TABLE IF EXISTS `data_table` ;
CREATE TABLE `data_table` (
`data_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`field1` INT NOT NULL ,
`field2` INT NOT NULL ,
`field3` INT NOT NULL
) ;


DROP TABLE IF EXISTS `data_tracking` ;
CREATE TABLE `data_tracking` (
`tracking_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`data_id` INT NOT NULL ,
`field` VARCHAR( 50 ) NOT NULL ,
`old_value` INT NOT NULL ,
`new_value` INT NOT NULL ,
`modified` DATETIME NOT NULL
) ; 
