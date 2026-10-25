--almacena los datos basicos de cada miembro.

CREATE TABLE miembro (
    id_miembro BIGINT GENERATED ALWAYS AS IDENTITY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(60) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    fecha_registro DATE NOT NULL DEFAULT CURRENT_DATE,

    CONSTRAINT pk_miembro PRIMARY KEY (id_miembro)
);
