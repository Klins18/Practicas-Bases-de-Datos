CREATE TABLE contrato_laboral (
  id_contrato BIGINT GENERATED ALWAYS AS IDENTITY,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE,
  salario_base NUMERIC(10,2) NOT NULL,
  puesto VARCHAR(50) NOT NULL
);
