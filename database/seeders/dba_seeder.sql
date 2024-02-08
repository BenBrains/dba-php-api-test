START TRANSACTION;

# Klanten
INSERT INTO klant (id, naam, plaats, email, opmerking)
VALUES (1, 'GC Horeca', 'Doetinchem', 'facturatie@gchoreca.nl', 'School'),
       (2, 'GC Sportpark', 'Groenlo', 'info@gcsportpark.nl', '30 dagen betaaltermijn'),
       (3, 'Restaurant De Sparerib', 'Zutphen', 'info@desparerib.nl', 'Snel leveren'),
       (4, 'Restaurant Lange Friet', 'Hengelo', 'facturatie@langefriet.nl', 'Ingevroren leveren');

# Fabrieken
INSERT INTO fabriek (id, locatie)
VALUES (1, 'Zutphen'),
       (2, 'Doetinchem');

# Producten
INSERT INTO product (id, naam, minimale_hoeveelheid)
VALUES (1, 'Frikandelbroodjes', 300),
       (2, 'Hotdogs', 200),
       (3, 'Pizzabroodjes', 150),
       (4, 'Saucijzenbroodjes', 400);

# Productielijnen
INSERT INTO productielijn (id, naam, fabriek_id, beschikbaar)
VALUES (1, 'Afvullijn', 1, true),
       (2, 'Afvullijn', 2, true),
       (3, 'Sneloven_1', 1, true),
       (4, 'Sneloven_2', 1, false),
       (5, 'Kruidenlijn', 1, true),
       (6, 'Kruidenlijn', 2, true),
       (7, 'Sneloven_1', 2, true),
       (8, 'Transportlijn', 1, true),
       (9, 'Transportlijn', 2, true);

# Machines
INSERT INTO machines (id, naam, fabrikant, laatste_onderhoud, productielijn_id)
VALUES (1, 'Transportpand', 'ACB Transportbanden', '2023-01-11', 1),
       (2, 'Transportpand', 'ACB Transportbanden', '2022-01-13', 2),
       (3, 'Transportpand', 'ACB Transportbanden', '2022-06-21', 3),
       (4, 'Transportpand', 'ACB Transportbanden', '2021-04-08', 4),
       (5, 'Transportpand', 'ACB Transportbanden', '2022-07-21', 5),
       (6, 'Transportpand', 'ACB Transportbanden', '2022-11-24', 6),
       (7, 'Transportpand', 'ACB Transportbanden', '2022-08-18', 7),
       (8, 'Transportpand', 'ACB Transportbanden', '2022-05-18', 8),
       (9, 'Transportpand', 'ACB Transportbanden', '2022-02-15', 9),

       (10, 'Mengkruidmachine', 'Exproes', '2022-01-14', 5),
       (11, 'Mengkruidmachine', 'Exproes', '2022-01-04', 6),
       (12, 'Afvulmachine', 'Sismatec', '2023-01-03', 1),
       (13, 'Afvulmachine', 'Sismatec', '2023-01-03', 2),

       (14, 'Oven', 'HeatTec', '2022-01-13', 3),
       (15, 'Oven', 'HeatTec', '2022-05-19', 4),
       (16, 'Oven', 'HeatTec', null, 7),

       (17, 'Verpakkingsmachine', 'Skillpack', '2022-06-23', 8),
       (18, 'Verpakkingsmachine', 'Skillpack', null, 9);

# Orders
INSERT INTO `order` (id, klant_id, product_id, hoeveelheid, status)
VALUES (1, 1, 2, 600, 'Afgerond'),
       (2, 2, 3, 500, 'Nieuw'),
       (3, 3, 1, 500, 'Nieuw'),
       (4, 3, 2, 450, 'Afgerond'),
       (5, 3, 1, 600, 'On Hold'),
       (6, 4, 4, 800, 'Nieuw');

# Planning
INSERT INTO planning (id, order_id, productielijn_id, datum_start, datum_gereed)
VALUES (1, 1, 8, '2023-01-10', '2023-01-12'),
       (2, 2, 3, '2023-02-01', '2023-02-08'),
       (3, 3, 6, '2023-02-06', '2023-02-08'),
       (4, 4, 9, '2023-01-28', '2023-02-01'),
       (5, 5, 8, '2023-01-28', null),
       (6, 6, 2, '2023-02-06', '2023-02-10');

COMMIT;