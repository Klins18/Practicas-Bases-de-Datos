CREATE TABLE sesion_clase (
	id_sesion BIGINT GENERATED ALWAYS AS IDENTITY,
	fecha DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	estado VARCHAR(15) NOT NULL,
	id_horario BIGINT NOT NULL,
	id_empleado BIGINT NOT NULL,
	id_area BIGINT NOT NULL,

	CONSTRAINT pk_sesion_clase PRIMARY KEY (id_sesion),
	CONSTRAINT fk_sesion_clase_horario FOREIGN KEY (id_horario)
		REFERENCES horario_clase (id_horario),
	CONSTRAINT fk_sesion_clase_empleado FOREIGN KEY (id_empleado)
		REFERENCES empleado (id_empleado),
	CONSTRAINT fk_sesion_clase_area FOREIGN KEY (id_area)
		REFERENCES area_gimnasio (id_area),
	CONSTRAINT ck_sesion_clase_estado CHECK( estado IN ('PROGRAMADA', 'FINALIZADA', 'CANCELADA'))
);