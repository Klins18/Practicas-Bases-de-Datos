CREATE TABLE mantenimiento (
    id_mantenimiento BIGSERIAL PRIMARY KEY,
    fecha_servicio DATE NOT NULL,
    costo_servicio NUMERIC(10, 2) NOT NULL,
    id_equipo BIGINT NOT NULL 
);
