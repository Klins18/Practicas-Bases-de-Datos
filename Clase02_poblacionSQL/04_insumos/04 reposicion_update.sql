--Corregir un error en la cantidad recibida de una reposición
UPDATE reposicion 
SET cantidad_recibida = 12, costo_total = 144.00 
WHERE id_reposicion = 4;
