CREATE TABLE area_gimnasio (
	id_area BIGINT GENERATED ALWAYS AS IDENTITY,
	nombre_area VARCHAR(50) NOT NULL,
	ubicacion_interna VARCHAR(100) NOT NULL,
	capacidad_maxima INT NOT NULL,

	CONSTRAINT pk_area_gimnasio PRIMARY KEY (id_area),
	CONSTRAINT ck_area_capacidad CHECK (capacidad_maxima > 0)
);
