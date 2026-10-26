CREATE TABLE clase (
	id_clase BIGINT GENERATED ALWAYS AS IDENTITY,
	nombre_clase VARCHAR(50) NOT NULL,
	nivel_dificultad VARCHAR(20) NOT NULL,

	CONSTRAINT pk_clase PRIMARY KEY (id_clase)
);