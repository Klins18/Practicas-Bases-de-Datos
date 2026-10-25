--define los planes que ofrece el gimnasio

CREATE TABLE plan_membresia (
    id_plan BIGINT GENERATED ALWAYS AS IDENTITY,
    nombre_plan VARCHAR(30) NOT NULL,
    precio NUMERIC(6, 2) NOT NULL,
    duracion_dias INTEGER NOT NULL,

    CONSTRAINT pk_plan_membresia PRIMARY KEY (id_plan),
    CONSTRAINT ck_plan_membresia_precio CHECK (precio > 0),
    CONSTRAINT ck_plan_membresia_duracion CHECK (duracion_dias > 0)
);
