--cambia la hora de entrada de la asistencia con id 1
UPDATE asistencia SET hora_entrada = '08:15:00' WHERE id_asistencia = 1;

--modifica la fecha de donde se marco la asistencia del 6to registro
UPDATE asistencia SET fecha = '2026-10-29' WHERE id_asistencia = 6;

--modifica el miembro que marco asistencia en el registro 10 de las asistencias
UPDATE asistencia SET id_miembro = '3' WHERE id_asistencia = 10;
