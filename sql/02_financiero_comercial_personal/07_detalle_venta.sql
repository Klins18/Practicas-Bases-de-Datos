CREATE TABLE detalle_venta (
  id_detalle BIGINT GENERATED ALWAYS AS IDENTITY,
  cantidad NUMERIC NOT NULL,
  precio_historico NUMERIC(10,2) NOT NULL
);
