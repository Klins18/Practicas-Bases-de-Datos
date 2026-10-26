CREATE TABLE reserva (
	id_reserva BIGINT GENERATED ALWAYS AS IDENTITY,
	fecha_reserva DATE NOT NULL,
	fecha_clase DATE NOT NULL,
	estado_reserva VARCHAR(15) NOT NULL,
	id_miembro BIGINT NOT NULL,
	id_sesion BIGINT NOT NULL,

	CONSTRAINT pk_reserva PRIMARY KEY (id_reserva),
	CONSTRAINT fk_reserva_miembro FOREIGN KEY (id_miembro)
		REFERENCES miembro (id_miembro),
	CONSTRAINT fk_reserva_sesion_clase FOREIGN KEY (id_sesion)
		REFERENCES sesion_clase (id_sesion),
	CONSTRAINT uq_reserva_miembro_sesion UNIQUE (id_miembro, id_sesion),
	CONSTRAINT ck_reserva_estado CHECK (estado_reserva IN ('ACTIVA', 'CANCELADA'))
);