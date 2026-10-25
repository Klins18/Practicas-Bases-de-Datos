--registra los productos disponibles para la venta

CREATE TABLE producto (
    id_producto BIGINT GENERATED ALWAYS AS IDENTITY,
    nombre_producto VARCHAR(60) NOT NULL,
    precio_venta NUMERIC(6, 2) NOT NULL,
    stock_actual INTEGER NOT NULL,

    CONSTRAINT pk_producto PRIMARY KEY (id_producto),
    CONSTRAINT ck_producto_precio CHECK (precio_venta > 0),
    CONSTRAINT ck_producto_stock CHECK (stock_actual >= 0)
);
