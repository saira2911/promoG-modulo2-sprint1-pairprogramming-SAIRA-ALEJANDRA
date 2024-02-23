ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR (45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT NOT NULL;

ALTER TABLE clientes
DROP COLUMN país;

ALTER TABLE facturas
ADD COLUMN total FLOAT;

INSERT INTO zapatillas
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42),
(2, 'UOPMN', 'Rosas', 'Nike', 39),
(3, 'OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados
VALUES (1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
(2, 'Maria', 'Sevilla', 0, '2001-04-11'),
(3, 'Ester', 'Oviedo', 30165.98, '2000-11-29');

INSERT INTO clientes
VALUES (1, 'Monica', 123456289, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', '28176'),
(2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
(3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del color', 'Vigo', 'Pontevedra', '23456');

INSERT INTO facturas
VALUES (1, '123', '2001-12-11', 1, 1, 2, 54.98),
(2, '1234', '2005-05-23', 1, 3, 1, 89.91),
(3, '12345', '2015-09-18', 2, 3, 3, 76.23);

UPDATE zapatillas
SET color = 'Amarillas'
WHERE color = 'Rosas';

UPDATE empleados
SET tienda = 'A Coruña'
WHERE tienda = 'Alcobendas';

UPDATE clientes
SET numero_telefono = '123456728'
WHERE nombre = 'Monica';

UPDATE facturas
SET total = 89.91
WHERE id_zapatilla = 2;