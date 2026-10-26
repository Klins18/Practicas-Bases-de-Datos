CREATE TABLE horario_clase (
	id_horario BIGINT GENERATED ALWAYS AS IDENTITY,
	dia_semana VARCHAR(10) NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	id_clase BIGINT NOT NULL,

	CONSTRAINT pk_horario_clase PRIMARY KEY (id_horario),
	CONSTRAINT fk_horario_clase_clase FOREIGN KEY (id_clase)
		REFERENCES clase (id_clase)
);
