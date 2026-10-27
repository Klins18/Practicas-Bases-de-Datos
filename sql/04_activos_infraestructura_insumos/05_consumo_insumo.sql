CREATE TABLE consumo_insumo (
    id_consumo BIGSERIAL PRIMARY KEY,
    fecha_consumo DATE NOT NULL DEFAULT CURRENT_DATE,
    cantidad_retirada INTEGER NOT NULL,
    id_insumo BIGINT NOT NULL,
    id_empleado BIGINT NOT NULL
);
