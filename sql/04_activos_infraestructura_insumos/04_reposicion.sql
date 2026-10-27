CREATE TABLE reposicion (
    id_reposicion BIGSERIAL PRIMARY KEY,
    fecha_reposicion DATE NOT NULL DEFAULT CURRENT_DATE,
    cantidad_recibida INTEGER NOT NULL,
    costo_total NUMERIC(10, 2) NOT NULL,
    id_insumo BIGINT NOT NULL
);
