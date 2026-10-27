CREATE TABLE insumo_interno (
    id_insumo BIGSERIAL PRIMARY KEY,
    nombre_insumo VARCHAR(100) NOT NULL,
    stock_actual INTEGER NOT NULL,
    stock_minimo INTEGER NOT NULL
);
