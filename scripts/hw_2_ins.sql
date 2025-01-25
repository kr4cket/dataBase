INSERT INTO owners VALUES ('6c4b50b5-7307-42c9-a4f3-bd419735d1f1', '+7-123-456-78-89', 'пр. Красноармейский 4', 'Бранн', 'Виктор', 'Олегович');
INSERT INTO garden VALUES (01, 'равнинная', 'подзолистая', '6c4b50b5-7307-42c9-a4f3-bd419735d1f1');
INSERT INTO kind VALUES ('яблоня');
INSERT INTO tree (tree_num, plant_year, garden_num, name_Kind) VALUES (001, DATE '2012-01-12', 01, 'яблоня');
INSERT INTO sort VALUES ('антоновка', 001, 01, 'яблоня');

INSERT INTO owners VALUES ('8bdff8e5-7f1f-4706-bf41-905ddc61830e', '+7-123-456-78-83', 'пр. Ленина 2', 'Иванов', 'Александр', 'Сергеевич');
INSERT INTO garden VALUES (02, 'степная', 'черноземная', '8bdff8e5-7f1f-4706-bf41-905ddc61830e');
INSERT INTO kind VALUES ('груша');
INSERT INTO tree (tree_num, plant_year, garden_num, name_Kind)  VALUES (001, DATE '2011-03-11', 02, 'груша');
INSERT INTO sort  VALUES ('бергамот', 001, 02, 'груша');

INSERT INTO owners VALUES ('595ef119-8881-4652-8c80-6592289472a9', '+7-123-456-55-89', 'ул. Садовая 23', 'Петров', 'Владимир', 'Викторович');
INSERT INTO garden VALUES (03, 'равнинная', 'подзолистая', '595ef119-8881-4652-8c80-6592289472a9');
INSERT INTO tree (tree_num, plant_year, garden_num, name_Kind) VALUES (001, DATE '2010-06-24', 03, 'груша');
INSERT INTO sort VALUES ('конференция', 001, 03, 'груша');

INSERT INTO owners VALUES ('dad9d8f5-5567-49ef-bf92-134ec1f4dbfe', '+7-135-456-78-89', 'пр. Красноармейский 4', 'Гришин', 'Сергей', 'Андреевич');
INSERT INTO garden VALUES (04, 'равнинная', 'подзолистая', 'dad9d8f5-5567-49ef-bf92-134ec1f4dbfe');
INSERT INTO tree (tree_num, plant_year, garden_num, name_Kind) VALUES (001, DATE '2012-02-07', 04, 'яблоня');
INSERT INTO sort VALUES ('фуджи', 001, 04, 'яблоня');
