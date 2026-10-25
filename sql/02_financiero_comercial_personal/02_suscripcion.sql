--registra los planes contratados por los miembros

CREATE TABLE suscripcion (
    id_suscripcion BIGINT GENERATED ALWAYS AS IDENTITY,
    fecha_inicio DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    estado VARCHAR(30) NOT NULL,
    id_miembro BIGINT NOT NULL,
    id_plan BIGINT NOT NULL,

    CONSTRAINT pk_suscripcion PRIMARY KEY (id_suscripcion),
    CONSTRAINT ck_suscripcion_fechas CHECK (fecha_vencimiento >= fecha_inicio),
    CONSTRAINT fk_suscripcion_miembro FOREIGN KEY (id_miembro)
        REFERENCES miembro (id_miembro),
    CONSTRAINT fk_suscripcion_plan FOREIGN KEY (id_plan)
        REFERENCES plan_membresia (id_plan)
);
