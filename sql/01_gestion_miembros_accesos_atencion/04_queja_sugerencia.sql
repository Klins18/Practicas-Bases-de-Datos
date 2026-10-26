CREATE TABLE queja_sugerencia (
    id_queja BIGINT GENERATED ALWAYS AS IDENTITY,
    fecha_registro DATE NOT NULL DEFAULT CURRENT_DATE,
    tipo_solicitud VARCHAR(20) NOT NULL,
    descripcion TEXT NOT NULL,
    id_miembro BIGINT NOT NULL,
 
    CONSTRAINT pk_queja_sugerencia PRIMARY KEY (id_queja),
    CONSTRAINT ck_queja_sugerencia_tipo CHECK (tipo_solicitud IN ('queja', 'sugerencia')),
    CONSTRAINT fk_queja_sugerencia_miembro FOREIGN KEY (id_miembro)
        REFERENCES miembro (id_miembro)
);
 
