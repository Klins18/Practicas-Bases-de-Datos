CREATE TABLE equipo_gimnasio (
    id_equipo BIGSERIAL PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    estado_operativo VARCHAR(30) NOT NULL,
    costo_compra NUMERIC(10, 2),
    id_area BIGINT NOT NULL 
);
