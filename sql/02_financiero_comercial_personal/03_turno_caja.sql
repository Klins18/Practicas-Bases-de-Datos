--registra la apertura y el cierre de caja

CREATE TABLE turno_caja (
    id_turno BIGINT GENERATED ALWAYS AS IDENTITY,
    hora_apertura TIME NOT NULL,
    monto_inicial NUMERIC(6, 2) NOT NULL,
    hora_cierre TIME,
    monto_final NUMERIC(6, 2),

    CONSTRAINT pk_turno_caja PRIMARY KEY (id_turno),
    CONSTRAINT ck_turno_caja_monto_inicial CHECK (monto_inicial >= 0),
    CONSTRAINT ck_turno_caja_monto_final CHECK (monto_final IS NULL OR monto_final >= 0)
);
