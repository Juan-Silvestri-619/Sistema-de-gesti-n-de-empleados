/*INSERT DE REGISTROS EN LA TABLA: PuestoLaboral*/
INSERT INTO PuestoLaboral (Puesto, SalarioBase)
VALUES
('Gerente', 1500000.00),
('Analista de Sistemas', 1100000.00),
('Desarrollador Junior', 800000.00),
('Desarrollador Senior', 1300000.00),
('Contador', 1000000.00),
('Recursos Humanos', 850000.00),
('Administrativo', 700000.00),
('Recepcionista', 600000.00),
('Soporte Técnico', 750000.00),
('Supervisor', 1200000.00);

/*INSERT DE REGISTROS EN LA TABLA: Empleados*/
INSERT INTO Empleados (Nombre, Apellido, FechaIngreso, Estado, IdPuesto)
VALUES
('Juan', 'Pérez', '2020-03-15', 1, 1),
('María', 'Gómez', '2022-07-10', 1, 2),
('Lucas', 'Fernández', '2024-01-20', 1, 3),
('Ana', 'Rodríguez', '2019-11-05', 1, 4),
('Pedro', 'Martínez', '2021-06-12', 1, 5),
('Sofía', 'López', '2023-09-01', 1, 6),
('Diego', 'García', '2018-04-23', 1, 7),
('Valentina', 'Sánchez', '2025-02-17', 1, 8),
('Mateo', 'Romero', '2020-08-30', 0, 9),
('Camila', 'Torres', '2022-12-11', 1, 10);

INSERT INTO Empleados (Nombre, Apellido, FechaIngreso, Estado, IdPuesto)
VALUES
('Martín', 'Castro', '2021-02-14', 1, 3),
('Lucía', 'Morales', '2023-05-20', 1, 7),
('Tomás', 'Ortiz', '2019-08-11', 1, 2),
('Florencia', 'Silva', '2020-10-03', 1, 8),
('Nicolás', 'Acosta', '2022-04-18', 1, 3),
('Julieta', 'Medina', '2024-06-25', 1, 6),
('Gabriel', 'Herrera', '2018-12-09', 1, 1),
('Paula', 'Suárez', '2021-07-16', 1, 5),
('Federico', 'Aguirre', '2023-03-08', 1, 9),
('Carolina', 'Rojas', '2020-09-22', 1, 4),
('Santiago', 'Molina', '2022-11-13', 1, 3),
('Agustina', 'Navarro', '2025-01-06', 1, 7),
('Emiliano', 'Cabrera', '2019-04-29', 1, 10),
('Milagros', 'Vega', '2021-12-02', 1, 2),
('Franco', 'Campos', '2024-02-19', 1, 8),
('Micaela', 'Benítez', '2020-06-07', 1, 6),
('Leandro', 'Peralta', '2017-10-15', 1, 1),
('Rocío', 'Méndez', '2022-08-24', 1, 5),
('Facundo', 'Vargas', '2023-12-04', 1, 9),
('Daniela', 'Cruz', '2019-01-17', 1, 4),
('Ignacio', 'Flores', '2021-05-09', 1, 3),
('Antonella', 'Paz', '2024-09-12', 1, 7),
('Bruno', 'Miranda', '2018-07-21', 0, 10),
('Victoria', 'Sosa', '2020-03-28', 1, 2),
('Joaquín', 'Ibarra', '2022-02-05', 1, 8),
('Candela', 'Luna', '2023-07-14', 1, 6),
('Maximiliano', 'Duarte', '2019-11-26', 1, 1),
('Abril', 'Figueroa', '2025-04-03', 1, 5),
('Ramiro', 'Correa', '2021-09-19', 1, 9),
('Malena', 'Ponce', '2022-06-30', 1, 4);