CREATE TABLE ficha_medica (
    id_ficha BIGINT GENERATED ALWAYS AS IDENTITY,
    fecha_evaluacion DATE NOT NULL,
    peso NUMERIC(5,2) NOT NULL,
    altura NUMERIC(3,2) NOT NULL,
    porcentaje_grasa NUMERIC(4,1) NOT NULL,
    notas_medicas TEXT,
    id_miembro BIGINT NOT NULL,
 
    CONSTRAINT pk_ficha_medica PRIMARY KEY (id_ficha),
    CONSTRAINT ck_ficha_medica_peso CHECK (peso > 0),
    CONSTRAINT ck_ficha_medica_altura CHECK (altura > 0),
    CONSTRAINT ck_ficha_medica_grasa CHECK (porcentaje_grasa BETWEEN 0 AND 100),
    CONSTRAINT fk_ficha_medica_miembro FOREIGN KEY (id_miembro)
        REFERENCES miembro (id_miembro)
);
