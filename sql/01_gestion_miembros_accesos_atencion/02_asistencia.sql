CREATE TABLE asistencia (
    id_asistencia BIGINT GENERATED ALWAYS AS IDENTITY,
    fecha DATE NOT NULL,
    hora_entrada TIME NOT NULL,
    id_miembro BIGINT NOT NULL,

    CONSTRAINT pk_asistencia PRIMARY KEY (id_asistencia),
    CONSTRAINT fk_asistencia_miembro FOREIGN KEY (id_miembro)
        REFERENCES miembro (id_miembro)
);
