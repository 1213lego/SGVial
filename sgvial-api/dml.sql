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

INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (2, 85.19, 73.86, 90.2, 4, 1, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (3, 91.2, 24.27, 79.38, 2, 1, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (4, 9.01, 26.75, 93.28, 5, 1, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (5, 59.48, 24.79, 59.83, 5, 1, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (6, 17.25, 86.45, 65.95, 4, 2, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (7, 26.54, 0.94, 48.8, 5, 3, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (8, 75.66, 27.22, 58.41, 2, 4, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (9, 64.19, 5.74, 15.84, 1, 4, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (10, 72.69, 34.25, 74.4, 3, 5, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (11, 33.14, 60.16, 84.35, 1, 5, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (12, 55.59, 24.48, 44.93, 5, 6, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (13, 32.69, 50.42, 3.5, 4, 6, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (14, 55.61, 22.23, 52.13, 1, 7, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (15, 0.92, 44.98, 6.69, 2, 8, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (16, 55.56, 40.87, 3.12, 5, 8, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (17, 96.23, 68.72, 28.78, 2, 8, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (18, 45.18, 5.13, 45.93, 1, 9, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (19, 8.2, 75.91, 55.65, 5, 9, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (20, 50, 54.77, 65.56, 1, 9, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (21, 15.75, 98.07, 84.77, 5, 10, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (22, 90.04, 79.31, 66.36, 1, 11, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (23, 12.63, 94.25, 84.74, 4, 12, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (24, 49.47, 73.35, 47.58, 5, 13, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (25, 6.44, 79.44, 74.69, 3, 14, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (26, 55.27, 3.89, 54.7, 5, 15, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (27, 9.72, 33.84, 70.61, 5, 15, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (28, 35.95, 33.15, 97.5, 4, 15, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (29, 52.35, 25.63, 74.28, 2, 16, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (30, 36.43, 61.42, 20.69, 5, 16, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (31, 84.57, 58.16, 32.79, 2, 17, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (32, 70.2, 34.64, 65.66, 4, 18, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (33, 12.16, 8.48, 64.13, 5, 19, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (34, 55.85, 71.21, 61.05, 5, 20, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (35, 24.7, 78.96, 2.02, 2, 20, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (36, 51.69, 67.3, 68.77, 1, 21, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (37, 55.56, 29.7, 80.05, 2, 21, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (38, 36.25, 79.67, 66.65, 2, 22, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (39, 75.31, 48.99, 10.05, 2, 22, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (40, 48.68, 50.94, 58.61, 1, 23, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (41, 8.05, 18.27, 82.84, 1, 23, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (42, 99.12, 50.88, 76.77, 5, 24, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (43, 1.77, 70.93, 59.4, 3, 24, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (44, 59.65, 75.64, 64.42, 4, 25, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (45, 18.37, 76.9, 81.73, 4, 25, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (46, 17.34, 27.12, 0.38, 1, 25, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (47, 77.8, 87.38, 61.77, 5, 25, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (48, 25.35, 23.9, 11.02, 2, 26, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (49, 43.36, 46.84, 18.24, 5, 26, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (50, 12.78, 39.36, 16.64, 3, 26, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (51, 40.03, 12.64, 38.72, 3, 27, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (52, 41.62, 29.29, 25.74, 5, 28, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (53, 25.05, 28.46, 48.07, 2, 29, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (54, 93.41, 98.17, 73.96, 4, 30, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (55, 29.32, 89.53, 62.93, 1, 31, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (56, 87.67, 36.62, 29.17, 1, 32, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (57, 29.47, 70.58, 36.54, 1, 33, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (58, 32.13, 99.12, 77.81, 5, 34, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (59, 38.41, 42.29, 44.88, 1, 35, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (60, 9.71, 29.84, 49, 4, 36, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (61, 35.58, 82.31, 82.15, 1, 36, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (62, 40.88, 42.23, 90.11, 1, 37, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (63, 9.66, 35.82, 69.21, 1, 37, 5);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (64, 9.28, 65.25, 42.12, 2, 38, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (65, 13.34, 30.94, 91.61, 4, 39, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (66, 49.87, 55.09, 76.08, 3, 40, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (67, 60.33, 61.67, 74.2, 1, 41, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (68, 52.46, 95.57, 62.42, 2, 41, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (69, 62.84, 50.46, 4.31, 3, 42, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (70, 27.34, 42.42, 4.76, 1, 42, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (71, 40.73, 39.66, 49.95, 5, 43, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (72, 93.1, 59.84, 68.03, 3, 43, 1);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (73, 89.11, 62.24, 11.46, 2, 44, 3);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (74, 50.54, 61.99, 84.96, 2, 44, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (75, 38.54, 2.16, 28.77, 3, 45, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (76, 55.22, 48.68, 24.01, 1, 45, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (77, 49.76, 59.4, 13.51, 1, 46, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (78, 68.35, 9.15, 80.75, 4, 47, 6);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (79, 50.86, 30.92, 10.86, 5, 48, 4);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (80, 79.84, 61.78, 76.12, 1, 49, 2);
INSERT INTO roadway (id, iri, mdr, opi, feature_id, segment_id, surface_id) VALUES (81, 22.86, 66.69, 23.95, 5, 50, 5);


INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (4, 89.77, 816.75, 1, 1, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (5, 74.77, 311.96, 4, 1, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (6, 48.45, 17.04, 4, 1, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (7, 72.98, 348.7, 1, 1, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (8, 11.04, 507.22, 4, 2, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (9, 38.38, 316.07, 1, 3, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (10, 22.24, 121.45, 2, 4, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (11, 16.6, 281.72, 2, 4, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (12, 93.77, 260.95, 2, 5, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (13, 65.5, 965.16, 2, 5, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (14, 38.9, 373.91, 4, 6, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (15, 66.47, 756.05, 2, 6, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (16, 81.43, 606.43, 3, 7, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (17, 8.42, 299.09, 1, 8, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (18, 79.36, 854.48, 1, 8, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (19, 0.87, 973.51, 3, 8, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (20, 57.82, 514.9, 4, 9, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (21, 67.52, 553.08, 4, 9, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (22, 82.7, 487.21, 3, 9, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (23, 57.43, 317.5, 4, 10, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (24, 23.38, 741.56, 4, 11, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (25, 13.03, 550.88, 2, 12, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (26, 5.13, 429.5, 1, 13, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (27, 49.33, 306.47, 3, 14, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (28, 96.32, 525.84, 2, 15, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (29, 40.71, 914.31, 3, 15, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (30, 12.96, 487.44, 4, 15, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (31, 28.61, 423.09, 4, 16, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (32, 35.66, 888.25, 4, 16, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (33, 53.45, 438.3, 1, 17, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (34, 23.65, 208.6, 4, 18, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (35, 22.76, 0.26, 2, 19, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (36, 50.72, 484.92, 4, 20, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (37, 58.13, 415.67, 2, 20, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (38, 10.25, 939.47, 2, 21, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (39, 96.1, 255.27, 4, 21, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (40, 82.57, 997.39, 4, 22, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (41, 70.26, 988.49, 3, 22, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (42, 87.68, 332.65, 1, 23, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (43, 92.5, 326.36, 2, 23, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (44, 57.21, 868.66, 1, 24, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (45, 91.65, 407.07, 4, 24, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (46, 83.6, 826.75, 4, 25, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (47, 83.75, 1, 3, 25, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (48, 76.85, 18.68, 3, 25, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (49, 98.58, 388.14, 2, 25, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (50, 65.33, 475.52, 1, 26, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (51, 81.6, 665.94, 3, 26, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (52, 93.03, 582.22, 1, 26, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (53, 61.33, 427.09, 3, 27, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (54, 74.07, 609.63, 2, 28, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (55, 55.25, 868.57, 1, 29, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (56, 83, 806.44, 2, 30, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (57, 35.42, 962.52, 1, 31, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (58, 50.89, 406.58, 1, 32, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (59, 1.82, 468.28, 1, 33, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (60, 0.44, 575.1, 1, 34, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (61, 22.01, 985.34, 4, 35, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (62, 39.42, 691.13, 3, 36, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (63, 64.47, 941.85, 2, 36, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (64, 47.74, 242.39, 1, 37, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (65, 95.63, 767.68, 2, 37, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (66, 65.6, 840.27, 4, 38, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (67, 77.28, 762.55, 3, 39, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (68, 30.91, 286.96, 2, 40, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (69, 29.92, 491.75, 2, 41, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (70, 30.09, 412.28, 1, 41, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (71, 61.07, 784.86, 1, 42, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (72, 32.24, 627.06, 2, 42, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (73, 76.34, 40.05, 3, 43, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (74, 37.47, 559.53, 2, 43, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (75, 32.99, 409.02, 1, 44, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (76, 92.5, 762.39, 1, 44, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (77, 45.64, 942.82, 3, 45, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (78, 20.47, 782.19, 3, 45, 1);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (79, 1.02, 203.59, 2, 46, 3);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (80, 43.18, 246.35, 2, 47, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (81, 76.11, 919.98, 4, 48, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (82, 91.01, 590.01, 3, 49, 4);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (83, 69.76, 914.5, 2, 50, 2);
INSERT INTO curb (id, conditionindex, length, "order", segment_id, state_id) VALUES (84, 79.71, 283.39, 2, 50, 1);