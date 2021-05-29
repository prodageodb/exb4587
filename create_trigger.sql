DELIMITER $$

DROP TRIGGER IF EXISTS `update_data`

$$
CREATE TRIGGER `update_data` AFTER UPDATE on `data_table`
FOR EACH ROW
BEGIN
    IF (NEW.field1 != OLD.field1) THEN
        INSERT INTO data_tracking 
            (`data_id` , `field` , `old_value` , `new_value` , `modified` ) 
        VALUES 
            (NEW.data_id, "field1", OLD.field1, NEW.field1, NOW());
    END IF;
    IF (NEW.field2 != OLD.field2) THEN
        INSERT INTO data_tracking 
            (`data_id` , `field` , `old_value` , `new_value` , `modified` ) 
        VALUES 
            (NEW.data_id, "field2", OLD.field2, NEW.field2, NOW());
    END IF;
    IF (NEW.field3 != OLD.field3) THEN
        INSERT INTO data_tracking 
            (`data_id` , `field` , `old_value` , `new_value` , `modified` ) 
        VALUES 
            (NEW.data_id, "field3", OLD.field3, NEW.field3, NOW());
    END IF;
END$$

DELIMITER ;
