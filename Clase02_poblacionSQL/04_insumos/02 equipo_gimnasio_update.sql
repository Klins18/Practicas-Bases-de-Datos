--Cambiar el estado de un equipo específico que ya salió de reparación
UPDATE equipo_gimnasio 
SET estado_operativo = 'Operativo' 
WHERE id_equipo = 3;
