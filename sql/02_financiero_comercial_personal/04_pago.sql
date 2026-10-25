--registra el pago de una suscripcion.

CREATE TABLE pago (
    id_pago BIGINT GENERATED ALWAYS AS IDENTITY,
    fecha_pago DATE NOT NULL,
    monto NUMERIC(6, 2) NOT NULL,
    metodo_pago VARCHAR(30) NOT NULL,
    id_suscripcion BIGINT NOT NULL,
    id_turno BIGINT NOT NULL,

    CONSTRAINT pk_pago PRIMARY KEY (id_pago),
    CONSTRAINT uq_pago_suscripcion UNIQUE (id_suscripcion),
    CONSTRAINT ck_pago_monto CHECK (monto > 0),
    CONSTRAINT fk_pago_suscripcion FOREIGN KEY (id_suscripcion)
        REFERENCES suscripcion (id_suscripcion),
    CONSTRAINT fk_pago_turno_caja FOREIGN KEY (id_turno)
        REFERENCES turno_caja (id_turno)
);

-- esta tabla funcionara cuando se cree turno_caja por la FK