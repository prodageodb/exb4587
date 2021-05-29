select * from data_table ;
select * from data_tracking ;

INSERT INTO data_table (field1, field2, field3) VALUES (11, 12, 13) ;

-- vérifions le contenu des tables après une insertion (INSERT) dans la table data_table.
select * from data_table ;
select * from data_tracking ;

UPDATE data_table SET field1 = 111 WHERE data_id = 1 ;

-- vérifions le contenu des tables après une modification (UPDATE) sur un enregistrement de la table data_table.
select * from data_table ;
select * from data_tracking ;
