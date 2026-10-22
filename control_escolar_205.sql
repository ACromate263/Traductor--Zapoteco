-- 1. Crear la base de datos y usarla
CREATE DATABASE control_escolar_205;
USE control_escolar_205;

-- 2. Tabla principal de Estudiantes
CREATE TABLE Alumnos (
    matricula VARCHAR(10) PRIMARY KEY,
    curp VARCHAR(18) UNIQUE NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    semestre_grupo VARCHAR(50) NOT NULL
);

-- 3. Tabla para los Permisos Escolares
CREATE TABLE Permisos (
    folio VARCHAR(15) PRIMARY KEY,
    matricula VARCHAR(10),
    tipo_permiso VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME,
    tutor VARCHAR(100) NOT NULL,
    telefono_tutor VARCHAR(15),
    motivo TEXT,
    estado VARCHAR(20) DEFAULT 'Pendiente',
    FOREIGN KEY (matricula) REFERENCES Alumnos(matricula) ON DELETE CASCADE
);

-- 4. Tabla para las Calificaciones (Boleta)
CREATE TABLE Calificaciones (
    id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(10),
    asignatura VARCHAR(100) NOT NULL,
    parcial1 DECIMAL(4,2),
    parcial2 DECIMAL(4,2),
    parcial3 DECIMAL(4,2),
    faltas INT DEFAULT 0,
    FOREIGN KEY (matricula) REFERENCES Alumnos(matricula) ON DELETE CASCADE
);

-- 5. Insertar alumnos de demostración
INSERT INTO Alumnos (matricula, curp, nombre_completo, semestre_grupo) VALUES 
('20250001', 'JISM080314MOCMNRA1', 'Marisol Jiménez Santiago', '5° B Programación'),
('20250002', 'MALD070922HOCRPG04', 'Diego Martínez López', '3° F Construcción');

-- 6. Insertar el permiso de ejemplo
INSERT INTO Permisos (folio, matricula, tipo_permiso, fecha, hora, tutor, telefono_tutor, motivo, estado) VALUES 
('P-2024-0001', '20250002', 'Salida anticipada', '2024-10-22', '11:00', 'Eduardo Martínez', '971 000 0001', 'Debe acompañar a su abuela a una consulta.', 'Pendiente');

-- 7. Insertar las materias de Marisol
INSERT INTO Calificaciones (matricula, asignatura, parcial1, parcial2, parcial3, faltas) VALUES 
('20250001', 'Pensamiento Matemático III', 8.0, 9.0, 9.0, 2),
('20250001', 'Lengua y Comunicación III', 9.0, 9.0, 10.0, 0),
('20250001', 'Inglés V', 10.0, 9.0, 10.0, 1),
('20250001', 'Cultura Digital III', 9.0, 10.0, 10.0, 0),
('20250001', 'Ciencias Naturales III', 7.0, 8.0, 8.0, 3),
('20250001', 'Humanidades III', 8.0, 8.0, 9.0, 1),
('20250001', 'Programación web', 10.0, 10.0, 9.0, 0);

-- 8. Consulta de prueba para generar la boleta
SELECT 
    A.nombre_completo,
    C.asignatura,
    C.parcial1,
    C.parcial2,
    C.parcial3,
    ROUND((C.parcial1 + C.parcial2 + C.parcial3) / 3, 1) AS promedio_materia,
    C.faltas
FROM Alumnos A
JOIN Calificaciones C ON A.matricula = C.matricula
WHERE A.matricula = '20250001';
