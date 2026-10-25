-- Primera tabla del proyecto: almacena los datos básicos de cada miembro.
-- Ejecuta este archivo en una base de datos PostgreSQL vacía.

CREATE TABLE miembro (
    id_miembro BIGINT GENERATED ALWAYS AS IDENTITY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(254) NOT NULL,
    fecha_registro DATE NOT NULL DEFAULT CURRENT_DATE,

    CONSTRAINT pk_miembro PRIMARY KEY (id_miembro)
);
