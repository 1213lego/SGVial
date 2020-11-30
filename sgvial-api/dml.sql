INSERT INTO feature (name)
VALUES ('Ciclo Ruta');
INSERT INTO feature (name)
VALUES ('Metroplus');
INSERT INTO feature (name)
VALUES ('Mixto');
INSERT INTO feature (name)
VALUES ('Peatonal');
INSERT INTO feature (name)
VALUES ('Vehicular');

INSERT INTO surface (name)
VALUES ('Afirmado');
INSERT INTO surface (name)
VALUES ('Articulado');
INSERT INTO surface (name)
VALUES ('Flexible');
INSERT INTO surface (name)
VALUES ('Mixto');
INSERT INTO surface (name)
VALUES ('Rieles');
INSERT INTO surface (name)
VALUES ('Rigido');


INSERT INTO state (name)
VALUES ('Bueno');
INSERT INTO state (name)
VALUES ('Malo');
INSERT INTO state (name)
VALUES ('Regular');
INSERT INTO state (name)
VALUES ('Sin información');



INSERT INTO roadtype (name)
VALUES ('Circular');
INSERT INTO roadtype (name)
VALUES ('Diagonal');
INSERT INTO roadtype (name)
VALUES ('Avenida');
INSERT INTO roadtype (name)
VALUES ('Carrera');
INSERT INTO roadtype (name)
VALUES ('Calle');
INSERT INTO roadtype (name)
VALUES ('Autopista');


INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (1, 200, 3, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (2, 200, 4, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (3, 211.34, 4, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (4, 214.83, 4, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (5, 158.25, 4, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (6, 63.35, 3, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (7, 135.26, 3, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (8, 124.11, 5, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (9, 163.91, 6, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (10, 210.44, 4, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (11, 244.8, 6, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (12, 150.54, 2, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (13, 245.84, 5, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (14, 119.47, 2, 3);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (15, 245.25, 3, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (16, 169.89, 3, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (17, 18.47, 3, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (18, 171.29, 3, 2);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (19, 224.41, 6, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (20, 76.82, 2, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (21, 227.71, 2, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (22, 179.55, 4, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (23, 113.04, 6, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (24, 3.2, 2, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (25, 8.57, 6, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (26, 218.43, 5, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (27, 44.71, 2, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (28, 122.65, 5, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (29, 8.34, 6, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (30, 55.6, 2, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (31, 157.3, 5, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (32, 126.08, 5, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (33, 97.33, 5, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (34, 206.33, 4, 3);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (35, 89.12, 3, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (36, 209.81, 3, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (37, 238.34, 3, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (38, 28.95, 5, 2);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (39, 152.39, 4, 4);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (40, 114.46, 2, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (41, 110.22, 5, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (42, 161.78, 2, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (43, 50.05, 3, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (44, 121.41, 6, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (45, 190.05, 3, 6);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (46, 63.33, 4, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (47, 118.59, 5, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (48, 100.33, 2, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (49, 12.93, 5, 5);
INSERT INTO segment (id, length, stratum, roadtype_id) VALUES (50, 99.54, 6, 5);


INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (1, '1', '1+200', '50', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (2, '1+200', '1+400', '50', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (3, '1+400', '1+600', '50', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (4, '1+600', '1+800', '50', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (5, '1+800', '10', '50', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (6, '97', '23', '55', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (7, '78', '74', '28', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (8, '26', '27', '24', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (9, '89', '98', '82', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (10, '58', '58', '93', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (11, '19', '93', '53', 5, 5, 3);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (12, '11', '47', '88', 5, 5, 1);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (13, '41', '95', '96', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (14, '81', '74', '13', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (15, '85', '18', '75', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (16, '26', '55', '18', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (17, '36', '19', '42', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (18, '17', '70', '92', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (19, '28', '84', '42', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (20, '95', '88', '14', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (21, '90', '50', '82', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (22, '47', '68', '93', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (23, '33', '72', '42', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (24, '98', '85', '19', 5, 5, 3);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (25, '84', '82', '99', 5, 5, 1);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (26, '19', '69', '73', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (27, '80', '46', '104', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (28, '69', '21', '100', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (29, '82', '103', '68', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (30, '90', '84', '29', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (31, '15', '28', '21', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (32, '58', '93', '73', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (33, '95', '87', '27', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (34, '64', '25', '103', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (35, '43', '101', '40', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (36, '73', '52', '13', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (37, '15', '56', '52', 4, 4, 3);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (38, '63', '70', '73', 4, 4, 1);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (39, '27', '26', '11', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (40, '83', '76', '103', 4, 4, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (41, '71', '15', '77', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (42, '84', '29', '10', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (43, '80', '44', '86', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (44, '93', '36', '44', 5, 5, 4);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (45, '84', '41', '53', 5, 5, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (46, '24', '67', '69', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (47, '31', '96', '89', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (48, '81', '65', '36', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (49, '42', '28', '86', 4, 4, 5);
INSERT INTO nomenclature (segment_id, crossfromnumber, crossupnumber, generatingpathnumber, crossfrom_id, crossup_id, generatingpath_id) VALUES (50, '28', '74', '96', 4, 4, 3);